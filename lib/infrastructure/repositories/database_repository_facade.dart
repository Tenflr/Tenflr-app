import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tenflrpay/domain/core/auth_failure.dart';
import 'package:tenflrpay/domain/core/constant_list.dart';
import 'package:tenflrpay/domain/core/database_failure.dart';
import 'package:tenflrpay/domain/core/settings.dart';
import 'package:tenflrpay/domain/core/user_search_failure.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/database/i_database_repository_facade.dart';
import 'package:tenflrpay/domain/device_id/device_id.dart';
import 'package:tenflrpay/domain/device_id/i_device_id_facade.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/domain/user_address/user_address.dart';
import 'package:tenflrpay/domain/user_settings/user_settings.dart';
import 'package:tenflrpay/infrastructure/repositories/api_path.dart';
import 'package:tenflrpay/infrastructure/repositories/search_result.dart';
import 'package:tenflrpay/infrastructure/user/user_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:tenflrpay/infrastructure/core/firestore_helpers.dart';
import 'package:tenflrpay/infrastructure/user_settings/user_settings_dtos.dart';

@LazySingleton(as: IDatabaseRepositoryFacade)
class DatabaseRepositoryFacade implements IDatabaseRepositoryFacade {
  final Firestore _firestore;
  final IDeviceIDFacade _deviceIdRepository;
  final MySettings _settings;

  final FirebaseAuth _firebaseAuth;

  DatabaseRepositoryFacade(this._firestore, this._firebaseAuth,
      this._deviceIdRepository, this._settings);

  // helper function
  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  @override
  Future<Either<DatabaseFailure, Unit>> deleteData(
      {@required String path}) async {
    final reference = _firestore.document(path);
    try {
      debugPrint("delete: $path");
      await reference.delete();
      return right(unit);
    } catch (e) {
      return left(const DatabaseFailure.unableToDelete());
    }
  }

  @override
  Future<Either<UserSearchFailure, KtList<User>>> searchUsers(
      String term) async {
    List<User> users = [];
    List<User> refinedUserList = [];
    QuerySnapshot snapshot;
    if (users.isEmpty || (term.length == 1 || term.length > 8)) {
      try {
        if (isNumeric(term)) {
          snapshot = await _firestore
              .collection('users')
              .where("phoneSearchKey",
                  isEqualTo: term.substring(term.length - 4))
              .getDocuments();
        } else {
          snapshot = await _firestore
              .collection(APIPath.users)
              .where('fnSearchKey',
                  isEqualTo: term.substring(0, 1).toUpperCase())
              .where('lnSearchKey',
                  isEqualTo: term.substring(0, 1).toUpperCase())
              .getDocuments();
        }
        for (int i = 0; i < snapshot.documents.length; i++) {
          final User user =
              UserDto.fromJson(snapshot.documents[i].data).toDomain();
          if (!users.contains(user)) {
            users.add(user);
          }
        }

        return right(users.toImmutableList());
      } catch (e) {
        return left(const UserSearchFailure.userNotFound());
      }
    } else {
      users.forEach((user) {
        if (user.displayName.getOrCrash().startsWith(term) ||
            user.phoneNumber.getOrCrash().contains(term)) {
          if (!refinedUserList.contains(user)) {
            refinedUserList.add(user);
          }
        }
      });
      return right(refinedUserList.toImmutableList());
    }
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setDataInCollection(
      {@required String uid,
      @required String path,
      @required Map<String, dynamic> data}) async {
    final CollectionReference reference = _firestore.collection(path);
    debugPrint('$path: $data');

    try {
      await reference.document(uid).setData(data);
      return right(unit);
    } catch (e) {
      return left(const DatabaseFailure.unableToSetDataInCollection());
    }
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setDataInDocument(
      {@required String path, @required Map<String, dynamic> data}) async {
    final DocumentReference reference = _firestore.document(path);
    debugPrint('$path: $data');
    try {
      await reference.setData(data);

      return right(unit);
    } catch (e) {
      return left(const DatabaseFailure.unableToSetDataInDocument());
    }
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setDataInDocumentBatch(
      {@required String path1,
      @required String path2,
      @required Map<String, dynamic> data}) async {
    final DocumentReference reference1 = _firestore.document(path1);
    final DocumentReference reference2 = _firestore.document(path2);
    final batch = _firestore.batch();

    try {
      debugPrint('$path1: $data');
      batch.setData(reference1, data);
      batch.setData(reference2, data);

      // TODO: [STUR-15] PERFORM MOMO TRANSAGION HER.
      await batch.commit();

      return right(unit);
    } catch (e) {
      return left(const DatabaseFailure.unableToSetDataInCollection());
    }
  }

  @override
  KtList<User> _usersListFromDatabase({@required QuerySnapshot snapshot}) {
    return snapshot.documents
        .map((document) {
          return UserDto.fromJson(document.data).toDomain();
        })
        .kt
        .toList();
  }

  @override
  Either<DatabaseFailure, User> user() {
    // TODO: [STUR-14] implement user
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, SearchResult>> searchUser(String term) {
    // TODO: [STUR-13] implement searchUser
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, User>> createNewUser(String userType, User user) async {
    final DeviceId deviceId = await _deviceIdRepository.getDeviceDetails(
      User.empty()
          .copyWith(providerId: userType, email: user.email),
      // UserAddress.empty().copyWith(email: _settings.getUserEmail)
    );
    final Either<AuthFailure, bool> setDeviceIdAndEmail =
        await _deviceIdRepository.setDeviceEmail(
            deviceId: deviceId, email: user.email);
    final FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null || setDeviceIdAndEmail.isLeft()) {
      return left(const DatabaseFailure.unableToCreateNewUser());
    }

    User _user;
    final DocumentReference userDoc =
        Firestore.instance.collection(APIPath.users).document(firebaseUser.uid);
    final Map<String, dynamic> userDummyData = UserDto(
      id: firebaseUser.uid,
      isNewUser: true,
      photoUrl: firebaseUser.photoUrl ?? NO_PROFILE_PIC,
      displayName: firebaseUser.displayName ?? 'xyz',
      email: firebaseUser.email ?? 'xyz@gmail.com',
      phoneNumber: firebaseUser.phoneNumber ?? '+237600000000',
      providerId: userType == 'phone' ? 'phone' : 'google',
    ).toJson();

    await userDoc.setData(userDummyData);
    _user = UserDto.fromJson(userDummyData).toDomain();

    return right(_user);
  }

  @override
  Future<Either<DatabaseFailure, bool>> updateNewUser(User user) async {
    final DocumentReference deviceRef = await _firestore.deviceIdReference();
    // final DocumentReference useSettingREf =
    //     await _firestore.userSettingsDocRef();

    // useSettingREf.setData(UserSettingsDto.fromDomain(userSettings).toJson());

    // upDate deviceId;
    user.providerId == "phone"
        ? await deviceRef.updateData({'email': user.email.getOrCrash()})
        : await deviceRef.updateData({'tel': user.phoneNumber.getOrCrash()});

    final Map<String, dynamic> userMetaData = {
      'phoneSearchKey': user.phoneNumber.getOrCrash().substring(9, 13),
      'isNewUser': false
    };

    final Map<String, dynamic> userUpdatedInfo =
        UserDto.fromDomain(user).toJson();
    userUpdatedInfo.addAll(userMetaData);

    // final SetOptions setOptions = SetOptions(merge: true);

    try {
      final DocumentReference userDoc = Firestore.instance
          .collection(APIPath.users)
          .document(user.id.getOrCrash());
      await userDoc.setData(userUpdatedInfo);
      return right(true);
    } catch (e) {
      return left(const DatabaseFailure.unableToUpdateUserInfo());
    }
  }
}
