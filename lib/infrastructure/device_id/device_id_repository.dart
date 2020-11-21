import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:device_info/device_info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/core/auth_failure.dart';
import '../../domain/core/valid_objects.dart';
import '../../domain/core/value_object.dart';
import '../../domain/device_id/device_id.dart';
import '../../domain/device_id/i_device_id_facade.dart';
import '../../domain/user/user.dart';
import '../core/firestore_helpers.dart';
import '../repositories/api_path.dart';
import 'device_id_dtos.dart';

@LazySingleton(as: IDeviceIDFacade)
class DeviceIdRepository implements IDeviceIDFacade {
  final Firestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final DeviceInfoPlugin _deviceInfoPlugin;

  DeviceIdRepository(
      this._firestore, this._firebaseAuth, this._deviceInfoPlugin);
  static DeviceId firstDeviceId;
  @override
  Future<DeviceId> getDeviceIdFromFirebase(DeviceId deviceId) async {
    final DocumentReference deviceIdRef =
        await _firestore.deviceIdReference();
    final DocumentSnapshot deviceIdSnap = await deviceIdRef.get();

    if (deviceIdSnap.exists) {
      return DeviceIdDto.fromFirestore(deviceIdSnap).toDomain();
    }
    return null;
  }

  @override 
  Future<UniqueId> getDeviceIdentifier() async {
    String identifier;
    try {
      if (Platform.isAndroid) {
        final build = await _deviceInfoPlugin.androidInfo;
        identifier = build.androidId; //UUID for Android
      } else if (Platform.isIOS) {
        final data = await _deviceInfoPlugin.iosInfo;
        identifier = data.identifierForVendor; //UUID for iOS
      }
    } on PlatformException {
      debugPrint('Failed to get platform version');
    }
    return UniqueId.fromUniqueString(identifier);
  }

  @override
  Future<DeviceId> getDeviceDetails(User user) async {
    // if (firstDeviceId != null) {
    //   return firstDeviceId;
    // }

    String deviceName;
    String deviceVersion;
    String identifier;
    try {
      if (Platform.isAndroid) {
        var build = await _deviceInfoPlugin.androidInfo;
        deviceName = build.model;
        deviceVersion = build.version.baseOS;
        identifier = build.androidId; //UUID for Android
      } else if (Platform.isIOS) {
        var data = await _deviceInfoPlugin.iosInfo;
        deviceName = data.name;
        deviceVersion = data.systemVersion;
        identifier = data.identifierForVendor; //UUID for iOS
      }
    } on PlatformException {
      debugPrint('Failed to get platform version');
    }

    return firstDeviceId = DeviceId(
      id: UniqueId.fromUniqueString(identifier),
      email: user.email,
      tel: user.phoneNumber,
      dName: deviceName,
      dVer: deviceVersion,
      isTelPk: "google" == user.providerId ? false : true,
    );
  }

  @override
  Stream<Either<AuthFailure, DeviceId>> watchDeviceId() async* {
    final CollectionReference deviceIdRef =
        await _firestore.deviceIdCollection();

    yield* deviceIdRef
        .snapshots()
        .map((QuerySnapshot snapshot) => right<AuthFailure, DeviceId>(
              snapshot.documentChanges
                  .map((doc) =>
                      DeviceIdDto.fromFirestore(doc.document).toDomain())
                  .single,
            ))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains("PERMISSION_DENIED")) {
        return left(const AuthFailure.insufficientPermissions());
      } else {
        debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
        return left(const AuthFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<AuthFailure, bool>> setDeviceEmail(
      {DeviceId deviceId, EmailAddress email}) async {
    final WriteBatch batch = _firestore.batch();
    // SCENARIO 1: USER register with email
    final QuerySnapshot listOfSnaps = await _firestore
        .collection(APIPath.device_id())
        .where('email', isEqualTo: email.getOrCrash())
        .getDocuments();

    // new device info
    final DocumentReference newDeviceRef =
        await _firestore.deviceIdReference();
    final Map<String, dynamic> newDeviceMap =
        DeviceIdDto.fromDomain(deviceId).toJson();

// such an email provided exist on database
    if (listOfSnaps.documents.isNotEmpty) {
      // Case 1: Found email
      listOfSnaps.documents.forEach((DocumentSnapshot doc) async {
        final DeviceIdDto deviceIdFromFirestore =
            DeviceIdDto.fromFirestore(doc);

        // email found is PK
        if (!deviceIdFromFirestore.isTelPk) {
          //email found is PK and is link to another device
          if (deviceIdFromFirestore.id != deviceId.id.getOrCrash()) {
            batch.delete(doc.reference);
            batch.setData(newDeviceRef, newDeviceMap);
          }
          //email found is PK and is the same device ( we are login in)
          else {
            // we are login in. Nothing to do
          }

          // email found is not PK ( Delete the email from the holder )
        } else {
          batch.updateData(doc.reference, {"email": "xyz@xyz.com"});
          batch.setData(newDeviceRef, newDeviceMap);
        }
      });

      batch.commit();
      return right(true);
    }
    // Case 2: Found email is not pk
    else {
      batch.setData(newDeviceRef, newDeviceMap);
      batch.commit();
      return right(true);
    }
  }

  @override
  Future<Either<AuthFailure, bool>> setDevicePhone(
      {DeviceId deviceId, ValidPhoneNumber tel}) async {
    final WriteBatch batch = _firestore.batch();
    // SCENARIO 1: USER register with phone
    final QuerySnapshot listOfSnaps = await _firestore
        .collection(APIPath.device_id())
        .where('tel', isEqualTo: tel.getOrCrash())
        .getDocuments();

    // new device info
    final DocumentReference newDeviceRef =
        await _firestore.deviceIdReference();
    final Map<String, dynamic> newDeviceMap =
        DeviceIdDto.fromDomain(deviceId).toJson();

// such a phoneNumber provided exist on database
    if (listOfSnaps.documents.isNotEmpty) {
      // Case 1: Found phoneNumber
      listOfSnaps.documents.forEach((DocumentSnapshot doc) async {
        final DeviceIdDto deviceIdFromFirestore =
            DeviceIdDto.fromFirestore(doc);

        // phoneNumber found is PK
        if (deviceIdFromFirestore.isTelPk) {
          //phoneNumber found is PK and is link to another device
          if (deviceIdFromFirestore.id != deviceId.id.getOrCrash()) {
            batch.delete(doc.reference);
            batch.setData(newDeviceRef, newDeviceMap);
          }
          //phoneNumber found is PK and is the same device ( we are login in)
          else {
            // we are login in. Nothing to do
          }

          // phoneNumber found is not PK ( Delete the phoneNumber from the holder, and log h/her uout)
        } else {
          batch.delete(doc.reference);
          batch.setData(newDeviceRef, newDeviceMap);
        }
      });

      batch.commit();
      return right(true);
    }
    // Case 2: Found email is not pk
    else {
      batch.setData(newDeviceRef, newDeviceMap);
      batch.commit();
      return right(true);
    }
  }

  @override
  Future<Either<AuthFailure, bool>> updatePhoneAfterEmaileSignUp(
      {DeviceId deviceId, ValidPhoneNumber tel}) async {
    final QuerySnapshot listOfSnaps = await _firestore
        .collection(APIPath.device_id())
        .where('tel', isEqualTo: tel.getOrCrash())
        .getDocuments();

    // such a phone exits
    if (listOfSnaps.documents.isNotEmpty) {
      // listOfSnaps.documents.forEach((DocumentSnapshot doc) {
      //   final DeviceIdDto deviceIdFromFirestore =
      //       DeviceIdDto.fromFirestore(doc);
      // });

      return left(const AuthFailure.telUsedOnAnotherDevice());
    }
// not instance of number exist on database
    else {
      final DocumentReference deviceIdRef =
          await _firestore.deviceIdReference();
      deviceIdRef.updateData({'tel': tel.getOrCrash()});
      return right(true);
    }
  }

  @override
  Future<Either<AuthFailure, bool>> updateEmailAfterPhoneSignUp(
      {DeviceId deviceId, EmailAddress email}) async {
    final DocumentReference deviceIdRef =
        await _firestore.deviceIdReference();
    final QuerySnapshot listOfSnaps = await _firestore
        .collection(APIPath.device_id())
        .where('email', isEqualTo: email.getOrCrash())
        .getDocuments();

    // such a email exits
    if (listOfSnaps.documents.isNotEmpty) {
      return left(const AuthFailure.emailUsedOnAnotherDevice());
    }
// not instance of number exist on database
    else {
      deviceIdRef.updateData({'email': email.getOrCrash()});
      return right(true);
    }
  }

  @override
  Future<Either<AuthFailure, DeviceId>> checkDeviceId(DeviceId deviceId) async {
    final DocumentReference deviceIdRef =
        await _firestore.deviceIdReference();
    final QuerySnapshot listOfSnaps = await _firestore
        .collection(APIPath.device_id())
        .where(deviceId.isTelPk ? 'tel' : 'email',
            isEqualTo: deviceId.isTelPk
                ? deviceId.tel.getOrCrash()
                : deviceId.email.getOrCrash())
        .getDocuments();

    // such a email exits
    if (listOfSnaps.documents.isNotEmpty) {
      final DocumentReference newDeviceRef =
          await _firestore.deviceIdReference();
      listOfSnaps.documents.forEach((DocumentSnapshot doc) {
        final DeviceIdDto deviceIdDtoFromSnap = DeviceIdDto.fromFirestore(doc);
        if (deviceIdDtoFromSnap.isTelPk == deviceId.isTelPk) {
          if (deviceIdDtoFromSnap.id != deviceId.id.getOrCrash()) {
            newDeviceRef.setData(DeviceIdDto.fromDomain(deviceId).toJson());
            doc.reference.delete();
          } else {
            // it is thesame device. Do nothing
          }
        } else if (deviceIdDtoFromSnap.isTelPk != deviceId.isTelPk) {
          return left(const AuthFailure.accountExistWithDifferentCredential());
        }
      });
      return right(deviceId);
    }
// not instance of number exist on database
    else {
      deviceIdRef.setData(DeviceIdDto.fromDomain(deviceId).toJson());
      return right(deviceId);
    }
  }
}
