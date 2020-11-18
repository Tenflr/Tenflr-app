import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/auth_failure.dart';
import '../../domain/core/settings.dart';
import '../../domain/core/valid_objects.dart';
import '../../domain/user/user.dart';
import '../core/firestore_helpers.dart';
import '../repositories/api_path.dart';
import '../user/user_dtos.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final MySettings _mySettings;
  final auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final Firestore _firestore;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn, this._firestore,
      this._mySettings);

  @override
  Future<Either<AuthFailure, bool>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final GoogleSignInAuthentication googleAuthentication =
          await googleUser.authentication;
      final authCredential = auth.GoogleAuthProvider.getCredential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);
      final auth.AuthResult authResult =
          await _firebaseAuth.signInWithCredential(authCredential);

      await _mySettings.setUserEmail(EmailAddress(authResult.user.email));
      return right(authResult.additionalUserInfo.isNewUser);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_INVALID_CREDENTIAL') {
        return left(const AuthFailure.invalidCredential());
      } else if (e.code == 'ERROR_USER_DISABLED') {
        return left(const AuthFailure.userDisable());
      } else if (e.code == 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL') {
        return left(const AuthFailure.accountExistWithDifferentCredential());
      } else if (e.code == 'ERROR_OPERATION_NOT_ALLOWED') {
        return left(const AuthFailure.operationNotAllowed());
      } else if (e.code == 'ERROR_INVALID_ACTION_CODE') {
        return left(const AuthFailure.invalidAction());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, User>> getSignedInUser() async {
    final auth.FirebaseUser firebaseUser =
        await auth.FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      return left(const AuthFailure.userNotFound());
    }
    final DocumentSnapshot documentSnapshot = await Firestore.instance
        .collection(APIPath.users)
        .document(firebaseUser.uid)
        .get();

    return _userFromDatabase(snapshot: documentSnapshot);
  }

  @override
  Future<User> getDatabaseUserByID(String id) async {
    final DocumentReference userRef =
        await _firestore.collection(APIPath.users).document(id);
    final DocumentSnapshot userSnap = await userRef.get();
    if (!userSnap.exists) {
      return UserDto.fromJson(userSnap.data).toDomain();
    }
    return null;
  }

  Either<AuthFailure, User> _userFromDatabase(
      {@required DocumentSnapshot snapshot}) {
    try {
      return right(UserDto.fromJson(snapshot.data).toDomain());
    } catch (e) {
      return left(const AuthFailure.userNotFound());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);

  @override
  Future<Either<AuthFailure, bool>> verifyAndLogin(
      {String verificationId, String smsCode}) async {
    try {
      final auth.AuthCredential authCredential =
          auth.PhoneAuthProvider.getCredential(
              verificationId: verificationId, smsCode: smsCode);

      final auth.AuthResult authResult =
          await _firebaseAuth.signInWithCredential(authCredential);

      await _mySettings
          .setUserNumber(ValidPhoneNumber(authResult.user.phoneNumber));

      return right(authResult.additionalUserInfo.isNewUser);
    } on PlatformException catch (e) {
      debugPrint("Error occured: code: ${e.code} , message: ${e.message}");
      if (e.code == 'ERROR_INVALID_CREDENTIAL') {
        return left(const AuthFailure.invalidCredential());
      } else if (e.code == 'ERROR_USER_DISABLED') {
        return left(const AuthFailure.userDisable());
      } else if (e.code == 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL') {
        return left(const AuthFailure.accountExistWithDifferentCredential());
      } else if (e.code == 'ERROR_OPERATION_NOT_ALLOWED') {
        return left(const AuthFailure.operationNotAllowed());
      } else if (e.code == 'ERROR_INVALID_VERIFICATION_CODE') {
        return left(const AuthFailure.errorVerificationCode());
      } else if (e.code == 'ERROR_INVALID_ACTION_CODE') {
        return left(const AuthFailure.invalidAction());
      } else {
        debugPrint("Error occured: code: ${e.code} , message: ${e.message}");
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendOtp({
    String phoneNumber,
    Duration timeOut,
    auth.PhoneVerificationFailed phoneVerificationFailed,
    auth.PhoneVerificationCompleted phoneVerificationCompleted,
    auth.PhoneCodeSent phoneCodeSent,
    auth.PhoneCodeAutoRetrievalTimeout autoRetrievalTimeout,
  }) async {
    try {
      _firebaseAuth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          timeout: timeOut,
          verificationCompleted: phoneVerificationCompleted,
          verificationFailed: phoneVerificationFailed,
          codeSent: phoneCodeSent,
          codeAutoRetrievalTimeout: autoRetrievalTimeout);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "ERROR_INVALID_VERIFICATION_CODE") {
        return left(const AuthFailure.invalidVerificationCode());
      } else if (e.code == 'ERROR_INVALID_CREDENTIAL') {
        return left(const AuthFailure.invalidCredential());
      } else if (e.code == 'ERROR_USER_DISABLED') {
        return left(const AuthFailure.userDisable());
      } else if (e.code == 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL') {
        return left(const AuthFailure.accountExistWithDifferentCredential());
      } else if (e.code == 'ERROR_OPERATION_NOT_ALLOWED') {
        return left(const AuthFailure.operationNotAllowed());
      } else if (e.code == 'ERROR_INVALID_ACTION_CODE') {
        return left(const AuthFailure.invalidAction());
      }
      debugPrint("ERROR: authfailure, message: $e");
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInInfo() async {
    final userDoc = await _firestore.userDocument();

    User user = await userDoc
        .snapshots()
        .map((user) => UserDto.fromJson(user.data).toDomain())
        .first;

    return optionOf(user);
  }

  @override
  Future<String> userProvider() async {
    final user = await auth.FirebaseAuth.instance.currentUser;
    // return user.providerData[]
    return '';
  }

  @override
  Future<Either<AuthFailure, Unit>> deleteNewUser() async {
    final auth.FirebaseUser firebaseUser =
        await auth.FirebaseAuth.instance.currentUser();
    if (firebaseUser != null) {
      await firebaseUser.delete();
      return right(unit);
    }
    return left(const AuthFailure.userCouldNotBeDeleted());
  }

  @override
  Future<bool> hasRegisteredBefore() async {
    final user = auth.FirebaseAuth.instance.currentUser;
    return user != null;
  }
}
