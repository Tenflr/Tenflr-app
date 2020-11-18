import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings_failure.freezed.dart';

@freezed
abstract class UserSettingsFailure with _$UserSettingsFailure{
  const factory UserSettingsFailure.unableToUdateUserAddress() = _UnableToUpdateUserAddress;
  const factory UserSettingsFailure.unableToUdateDefaultLanguage() = _UnableToUpdateDefaultLanguage;
  const factory UserSettingsFailure.unableToEnable2FA() = _UnableToUEnable2FA;
  const factory UserSettingsFailure.unableToUdateUserPin() = _UnableToUpdateUserPin;
  const factory UserSettingsFailure.unableToUdateSmartFunds() = _UnableToUpdateSmartFunds;
  const factory UserSettingsFailure.unableToUdateSubscriptionMode() = _UnableToUpdateSubscriptionMode;
  const factory UserSettingsFailure.unableToUdateUserReputation() = _UnableToUpdateUserReputation;
  const factory UserSettingsFailure.unableToSetSecurityQuestion() = _UnableToUSetSecurityQuestion;
  const factory UserSettingsFailure.unableToSetUserDateOfBirth() = _UnableToUSetUserDateOfBirth;
  const factory UserSettingsFailure.unableToEnableAppLock() = _UnableToUEnableAppLock;
  const factory UserSettingsFailure.unableToGetUserSettings() = _UnableToGetUserSettings;
  const factory UserSettingsFailure.unableToCreateUserSettings() = _UunableToCreateUserSettings;
  const factory UserSettingsFailure.insufficientPermissions() = _IinsufficientPermissions;

}