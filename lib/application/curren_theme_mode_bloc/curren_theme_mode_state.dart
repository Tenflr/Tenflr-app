part of 'curren_theme_mode_bloc.dart';

@freezed
abstract class CurrentThemeModeState with _$CurrentThemeModeState {
  const factory CurrentThemeModeState.initial() = _Initial;
  const factory CurrentThemeModeState.lightMode() = _LightModeS;
  const factory CurrentThemeModeState.darkMode() = _DarkModeS;

}