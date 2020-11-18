import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../core/auth_failure.dart';
import '../user/user.dart';

typedef MyPhoneVerificationFailed = void Function(Exception error);
typedef MyPhoneCodeAutoRetrievalTimeout = void Function(String verificationId);
typedef MyPhoneCodeSent = void Function(String verificationId,
    [int forceResendingToken]);
typedef MyPhoneVerificationCompleted = void Function(
    dynamic phoneAuthCredential);

abstract class IAuthFacade {
  // Future<Either<AuthFailure, Unit>> signInWithPhoneNumber({
  //   @required ValidPhoneNumber emailAdrress,
  // });
  Future<bool> hasRegisteredBefore();
  Future<Either<AuthFailure, bool>> signInWithGoogle();
  Future<Either<AuthFailure, Unit>> deleteNewUser();
  Future<User> getDatabaseUserByID(String id);
  Future<Either<AuthFailure, User>> getSignedInUser();
  Future<Option<User>> getSignedInInfo();
  Future<void> signOut();
  Future<String> userProvider();

  Future<Either<AuthFailure, Unit>> sendOtp({
    String phoneNumber,
    Duration timeOut,
    MyPhoneVerificationFailed phoneVerificationFailed,
    MyPhoneVerificationCompleted phoneVerificationCompleted,
    MyPhoneCodeSent phoneCodeSent,
    MyPhoneCodeAutoRetrievalTimeout autoRetrievalTimeout,
  });
  Future<Either<AuthFailure, bool>> verifyAndLogin(
      {@required String verificationId, @required String smsCode});
}
