part of 'curren_theme_mode_bloc.dart';

@freezed
abstract class CurrentThemeModeEvent with _$CurrentThemeModeEvent {
  const factory CurrentThemeModeEvent.darkMode() = _DarkMode;
  const factory CurrentThemeModeEvent.lightMode() = _LighMode;
}