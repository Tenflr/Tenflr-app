part of 'user_settings_bloc.dart';

@freezed
abstract class UserSettingsState with _$UserSettingsState {
  const factory UserSettingsState.initial() = _Initial;
  const factory UserSettingsState.loadInProgress() = _LoadInProgress;
  const factory UserSettingsState.loadSuccess() = _LoadSuccess;
  const factory UserSettingsState.loadFailure() = _LoadFailure;

}