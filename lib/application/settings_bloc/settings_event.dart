part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.updateUserAddress(UserAddress userAddress) = _UpdateUserAddress;
  const factory SettingsEvent.updateDefaultLanguage(DefaultLanguage defaultLanguage) = _UpdateDefaultLanguage;
  const factory SettingsEvent.enable2FA(bool enable2FA) = _Enable2FA;
  const factory SettingsEvent.updateSmartFunds(bool smartFundsUsage) = _UpdateSmartFunds;
  const factory SettingsEvent.updateUserPin(UserPin userPin) = _UpdateUserPin;
  const factory SettingsEvent.updateSubscriptionMode(SubscriptionMode subscriptionMode) = _UupdateSubscriptionMode;
  const factory SettingsEvent.setSecurityQuestion(SecurityQuestion securityQuestion) = _SetSecurityQuestion;
  const factory SettingsEvent.updateUserReputation(UserReputation userReputation) = _UupdateUserReputation;
  const factory SettingsEvent.enableAppLock(bool lockEntireApp) = _EenableAppLock;
  const factory SettingsEvent.setDateOfBirth(ValidDateOfBirth dateOfBirth) = _SsetDateOfBirth;
    const factory SettingsEvent.initial(UserSettings userSettings) = _Initial;
    const factory SettingsEvent.setUserSettings(UserSettings userSettings) = _SetUserSettings;

}