
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/security_question/security_question.dart';
import 'package:tenflrpay/domain/user_address/user_address.dart';
import 'package:tenflrpay/domain/user_reputation/user_reputation.dart';
import 'package:tenflrpay/domain/user_settings/user_settings.dart';
import 'package:tenflrpay/domain/user_settings/user_settings_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ISettingsFacade {
Future<Either<UserSettingsFailure, UserAddress>> updateUserAddress(UserAddress userAddress);
Future<Either<UserSettingsFailure, DefaultLanguage>> updateDefaultLanguage(DefaultLanguage defaultLanguage);
Future<Either<UserSettingsFailure, bool>> enable2FA(bool enable2FA);
Future<Either<UserSettingsFailure, bool>> updateSmartFunds(bool smartFundsUsage) ;
Future<Either<UserSettingsFailure, UserPin>> updateUserPin(UserPin userPin);
Future<Either<UserSettingsFailure, SubscriptionMode>> updateSubscriptionMode(SubscriptionMode subscriptionMode);
Future<Either<UserSettingsFailure, SecurityQuestion>> setSecurityQuestion(SecurityQuestion securityQuestion) ;
Future<Either<UserSettingsFailure, UserReputation>> updateUserReputation(UserReputation userReputation);
Future<Either<UserSettingsFailure, bool>> enableAppLock(bool lockEntireApp);
Future<Either<UserSettingsFailure, ValidDateOfBirth>> setDateOfBirth(ValidDateOfBirth dateOfBirth);
Future<Either<UserSettingsFailure, UserSettings>> setUserSettings(UserSettings userSettings);
Future<Either<UserSettingsFailure, UserSettings>> getUserSettings();
}