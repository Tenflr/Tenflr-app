import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/valid_objects.dart';
import '../../domain/security_question/security_question.dart';
import '../../domain/user_address/user_address.dart';
import '../../domain/user_reputation/user_reputation.dart';
import '../../domain/user_settings/i_settings_facade.dart';
import '../../domain/user_settings/user_settings.dart';
import '../../domain/user_settings/user_settings_failure.dart';
import '../core/error_code_message.dart';
import '../core/firestore_helpers.dart';
import 'user_settings_dtos.dart';

@LazySingleton(as: ISettingsFacade)
class UserSettingsRepository implements ISettingsFacade {
  final Firestore _firestore;

  UserSettingsRepository(this._firestore);
  @override
  Future<Either<UserSettingsFailure, bool>> enable2FA(bool enable2FA) {
    // TODO: [STUR-8] implement enable2FA
    throw UnimplementedError();
  }

  @override
  Future<Either<UserSettingsFailure, bool>> enableAppLock(
      bool lockEntireApp) async {
    try {
      final DocumentReference userSettingDocRef =
          await _firestore.userSettingsDocRef();

      userSettingDocRef.updateData({"lApp": lockEntireApp});
      return right(lockEntireApp);
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const UserSettingsFailure.insufficientPermissions());
      }
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
      // return left(const BudgetFailure.unexpected());
      return left(const UserSettingsFailure.unableToEnableAppLock());
    }
  }

  @override
  Future<Either<UserSettingsFailure, ValidDateOfBirth>> setDateOfBirth(
      ValidDateOfBirth dateOfBirth) {
    // TODO: [STUR-10] implement setDateOfBirth
    throw UnimplementedError();
  }

  @override
  Future<Either<UserSettingsFailure, SecurityQuestion>> setSecurityQuestion(
      SecurityQuestion securityQuestion) {
    // TODO: [STUR-11] implement setSecurityQuestion
    throw UnimplementedError();
  }

  @override
  Future<Either<UserSettingsFailure, DefaultLanguage>> updateDefaultLanguage(
      DefaultLanguage defaultLanguage) {
    // TODO: [STUR-12] implement updateDefaultLanguage
    throw UnimplementedError();
  }

  @override
  Future<Either<UserSettingsFailure, bool>> updateSmartFunds(
      bool smartFundsUsage) async {
    try {
      final DocumentReference userSettingDocRef =
          await _firestore.userSettingsDocRef();

      userSettingDocRef.updateData({"sfu": smartFundsUsage});
      return right(smartFundsUsage);
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const UserSettingsFailure.insufficientPermissions());
      }
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
      // return left(const BudgetFailure.unexpected());
      return left(const UserSettingsFailure.unableToUdateSmartFunds());
    }
  }

  @override
  Future<Either<UserSettingsFailure, SubscriptionMode>> updateSubscriptionMode(
      SubscriptionMode subscriptionMode) {
    // TODO: [STUR-6] [STUR-5] implement updateSubscriptionMode
    throw UnimplementedError();
  }

  @override
  Future<Either<UserSettingsFailure, UserAddress>> updateUserAddress(
      UserAddress userAddress) {
    // TODO: [STUR-1] implement updateUserAddress
    throw UnimplementedError();
  }

  @override
  Future<Either<UserSettingsFailure, UserPin>> updateUserPin(
      UserPin userPin) async {
    try {
      final DocumentReference userSettingDocRef =
          await _firestore.userSettingsDocRef();

      userSettingDocRef.updateData({"pin": userPin.getOrCrash()});
      return right(userPin);
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const UserSettingsFailure.insufficientPermissions());
      }
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
      // return left(const BudgetFailure.unexpected());
      return left(const UserSettingsFailure.unableToUdateUserPin());
    }
  }

  @override
  Future<Either<UserSettingsFailure, UserReputation>> updateUserReputation(
      UserReputation userReputation) {
    // TODO: [STUR-7] implement updateUserReputation
    throw UnimplementedError();
  }

  @override
  Future<Either<UserSettingsFailure, UserSettings>> setUserSettings(
      UserSettings userSettings) async {
    try {
      final DocumentReference userSettingDocRef =
          await _firestore.userSettingsDocRef();

      userSettingDocRef
          .setData(UserSettingsDto.fromDomain(userSettings).toJson());
      return right(userSettings);
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const UserSettingsFailure.insufficientPermissions());
      }
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
      // return left(const BudgetFailure.unexpected());
      return left(const UserSettingsFailure.unableToCreateUserSettings());
    }
  }

  @override
  Future<Either<UserSettingsFailure, UserSettings>> getUserSettings() async {
    try {
      final DocumentReference userSettingDocRef =
          await _firestore.userSettingsDocRef();
      final DocumentSnapshot userSettingsSnap = await userSettingDocRef.get();

      if (userSettingsSnap.exists) {
        return right(
            UserSettingsDto.fromFirestore(userSettingsSnap).toDomain());
      }
      return left(const UserSettingsFailure.unableToGetUserSettings());
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const UserSettingsFailure.insufficientPermissions());
      }
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
      // return left(const BudgetFailure.unexpected());
      return left(const UserSettingsFailure.unableToCreateUserSettings());
    }
  }
}
