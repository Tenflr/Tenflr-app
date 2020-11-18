import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:tenflrpay/domain/core/settings.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/security_question/security_question.dart';
import 'package:tenflrpay/domain/user_address/user_address.dart';
import 'package:tenflrpay/domain/user_reputation/user_reputation.dart';
import 'package:tenflrpay/domain/user_settings/i_settings_facade.dart';
import 'package:tenflrpay/domain/user_settings/user_settings.dart';
import 'package:tenflrpay/domain/user_settings/user_settings_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final MySettings _settings;
  final ISettingsFacade _iSettingsFacade;
  SettingsBloc(this._settings, this._iSettingsFacade)
      : super(SettingsState.initial());

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(
      initial: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, UserSettings> failureOrSuccess =
            await _iSettingsFacade.getUserSettings();
        if (failureOrSuccess.isRight()) {
          _setPreferences(failureOrSuccess.getOrElse(() => null), _settings);
          yield state.copyWith(
              userSettings: failureOrSuccess.getOrElse(() => null),
              isSaving: false);
        } else {
          yield state.copyWith(
            isSaving: false,
            failureOrSuccessOption: some(failureOrSuccess),
          );
        }
      },
      setUserSettings: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, UserSettings> failureOrSuccess =
            await _iSettingsFacade.setUserSettings(e.userSettings);

        if (failureOrSuccess.isRight()) {
          _setPreferences(failureOrSuccess.getOrElse(() => null), _settings);
          yield state.copyWith(
              userSettings: failureOrSuccess.getOrElse(() => null),
              isSaving: false);
        } else {
          yield state.copyWith(
            isSaving: false,
            failureOrSuccessOption: some(failureOrSuccess),
          );
        }
      },
      updateUserAddress: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, UserAddress> failureOrSuccess =
            await _iSettingsFacade.updateUserAddress(e.userAddress);

        yield state.copyWith(
          isSaving: false,
          failureOrSuccessOption: some(failureOrSuccess),
        );
      },
      updateDefaultLanguage: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, DefaultLanguage> failureOrSuccess =
            await _iSettingsFacade.updateDefaultLanguage(e.defaultLanguage);
        yield state.copyWith(
          isSaving: false,
          failureOrSuccessOption: some(failureOrSuccess),
        );
      },
      enable2FA: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, bool> failureOrSuccess =
            await _iSettingsFacade.enable2FA(e.enable2FA);
        yield state.copyWith(
          isSaving: false,
          failureOrSuccessOption: some(failureOrSuccess),
        );
      },
      updateSmartFunds: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, bool> failureOrSuccess =
            await _iSettingsFacade.updateSmartFunds(e.smartFundsUsage);
        yield state.copyWith(
          isSaving: false,
          failureOrSuccessOption: some(failureOrSuccess),
        );
      },
      updateUserPin: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, UserPin> failureOrSuccess =
            await _iSettingsFacade.updateUserPin(e.userPin);
        yield state.copyWith(
          isSaving: false,
          failureOrSuccessOption: some(failureOrSuccess),
        );
      },
      updateSubscriptionMode: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, SubscriptionMode> failureOrSuccess =
            await _iSettingsFacade.updateSubscriptionMode(e.subscriptionMode);
        yield state.copyWith(
          isSaving: false,
          failureOrSuccessOption: some(failureOrSuccess),
        );
      },
      setSecurityQuestion: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, SecurityQuestion> failureOrSuccess =
            await _iSettingsFacade.setSecurityQuestion(e.securityQuestion);
        yield state.copyWith(
          isSaving: false,
          failureOrSuccessOption: some(failureOrSuccess),
        );
      },
      updateUserReputation: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, UserReputation> failureOrSuccess =
            await _iSettingsFacade.updateUserReputation(e.userReputation);
        yield state.copyWith(
          isSaving: false,
          failureOrSuccessOption: some(failureOrSuccess),
        );
      },
      enableAppLock: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, bool> failureOrSuccess =
            await _iSettingsFacade.enableAppLock(e.lockEntireApp);
        yield state.copyWith(
          isSaving: false,
          failureOrSuccessOption: some(failureOrSuccess),
        );
      },
      setDateOfBirth: (e) async* {
        yield state.copyWith(
          isSaving: true,
          failureOrSuccessOption: none(),
        );
        final Either<UserSettingsFailure, ValidDateOfBirth> failureOrSuccess =
            await _iSettingsFacade.setDateOfBirth(e.dateOfBirth);
        yield state.copyWith(
          isSaving: false,
          failureOrSuccessOption: some(failureOrSuccess),
        );
      },
    );
  }

  void _setPreferences(UserSettings userSettings, MySettings settings) {}
}
