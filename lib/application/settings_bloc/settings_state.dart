part of 'settings_bloc.dart';

@freezed
abstract class SettingsState implements _$SettingsState {
  const SettingsState._();
  const factory SettingsState({
    @required UserSettings userSettings,
    @required bool isSaving,
    @required
        Option<Either<UserSettingsFailure, Object>> failureOrSuccessOption,
  }) = _SettingsState;
  factory SettingsState.initial() => SettingsState(
        userSettings: UserSettings.empty(
          // userAddress: UserAddress.empty(),
          // defaultLanguage: DefaultLanguage(_settings.getDefaultLanguage),
          // smartFundsUsage: _settings.isSmartFundsActive,
          // enable2FA: _settings.is2FAEnabled,
          // userPin: UserPin(_settings.getTrustedPayPin),
          // securityQuestion: SecurityQuestion.empty(),
          // dateOfBirth: ValidDateOfBirth(DateTime.tryParse(_settings.getDOB)),
          // userReputation: UserReputation(
          //     reputation: ReputationPoints(_settings.getUserReputation)),
          // subscriptionMode: SubscriptionMode(_settings.getSubscriptionMode),
          // lockEntireApp: _settings.isLockEnabled,
        ),
        isSaving: false,
        failureOrSuccessOption: none(),
      );
}
