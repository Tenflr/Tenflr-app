import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/valid_objects.dart';

part 'user_settings_bloc.freezed.dart';
part 'user_settings_event.dart';
part 'user_settings_state.dart';

@injectable
class UserSettingsBloc extends Bloc<UserSettingsEvent, UserSettingsState> {
  UserSettingsBloc() : super(const _Initial());

  @override
  Stream<UserSettingsState> mapEventToState(UserSettingsEvent gEvent) async* {
    yield* gEvent.map(
      addressChanged: (e) async* {
        // yield state.copyWith(
        //   user: state.user.copyWith(address: e.address),
        //   saveFailureOrSuccessOption: none(),
        // );
      },
      stateChanged: (e) async* {
        // yield state.copyWith(
        //   user: state.user.copyWith(state: e.state),
        //   saveFailureOrSuccessOption: none(),
        // );
      },
      zipcodeChanged: (e) async* {
        // yield state.copyWith(
        //   user: state.user.copyWith(zipcode: e.zipCode),
        //   saveFailureOrSuccessOption: none(),
        // );
      },
      cityChanged: (e) async* {
        // yield state.copyWith(
        //   user: state.user.copyWith(city: e.city),
        //   saveFailureOrSuccessOption: none(),
        // );
      },
      emailChanged: (e) async* {},
      initialize: (e) async* {},
    );
  }
}
