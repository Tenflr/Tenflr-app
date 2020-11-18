import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'curren_theme_mode_state.dart';
part 'curren_theme_mode_event.dart';
part 'curren_theme_mode_bloc.freezed.dart';

@injectable
class CurrentThemeModeBloc
    extends Bloc<CurrentThemeModeEvent, CurrentThemeModeState> {
  CurrentThemeModeBloc() : super(const _Initial());

  @override
  Stream<CurrentThemeModeState> mapEventToState(
      CurrentThemeModeEvent gEvent) async* {
    if (gEvent is _DarkMode) {
      yield const CurrentThemeModeState.darkMode();
    }
    if (gEvent is _LighMode) {
      yield const CurrentThemeModeState.lightMode();
    }
  }
}
