import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:tenflrpay/domain/auth/i_auth_facade.dart';
import 'package:tenflrpay/domain/core/database_failure.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/database/i_database_repository_facade.dart';
import 'package:tenflrpay/domain/device_id/device_id.dart';
import 'package:tenflrpay/domain/device_id/i_device_id_facade.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/domain/user_settings/user_settings.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'user_detail_event.dart';
part 'user_detail_state.dart';

part 'user_detail_bloc.freezed.dart';

@injectable
class UserDetailBloc extends Bloc<UserDetailEvent, UserDetailState> {
  final IDatabaseRepositoryFacade databaseRepositoryFacade;
  final IAuthFacade dataService;
  final IDeviceIDFacade deviceIDFacade;

  UserDetailBloc({
    @required this.deviceIDFacade,
    @required this.databaseRepositoryFacade,
    @required this.dataService,
  }) : super(UserDetailState.initial());

  @override
  Stream<Transition<UserDetailEvent, UserDetailState>> transformEvents(
    Stream<UserDetailEvent> events,
    TransitionFunction<UserDetailEvent, UserDetailState> transitionFn,
  ) {
    final nonDebounceStream = events.where((event) {
      return event is! _PhoneNumberChangedE &&
          event is! _LastNameChangedE &&
          event is! _FirstNameChangedE &&
          event is! _FirstNameChangedE;
      // return (event is! UserNameChanged && event is! PhoneNumberChanged);
    });
    final debounceStream = events.where((UserDetailEvent event) {
      return event is _PhoneNumberChangedE ||
          event is _LastNameChangedE ||
          event is _FirstNameChangedE ||
          event is _FirstNameChangedE;

      // return (event is UserNameChanged || event is PhoneNumberChanged);
    }).debounceTime(const Duration(milliseconds: 900));
    return super.transformEvents(
      nonDebounceStream.mergeWith([debounceStream]),
      transitionFn,
    );
  }

  @override
  Stream<UserDetailState> mapEventToState(
    UserDetailEvent event,
  ) async* {
    yield* event.map(
      initialize: (e) async* {
        yield state.copyWith(
          user: e.user,
          saveFailureOrSuccessOption: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(phoneNumber: e.phoneNumber),
          saveFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(email: e.email),
          saveFailureOrSuccessOption: none(),
        );
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: e.firstName,
          saveFailureOrSuccessOption: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: e.lastName,
          saveFailureOrSuccessOption: none(),
        );
      },
      submit: (e) async* {
        Either<DatabaseFailure, bool> failureOrSuccess;
        yield state.copyWith(
          isSubmitting: true,
          saveFailureOrSuccessOption: none(),
        );
        // final DeviceId deviceId = await deviceIDFacade.getDeviceDetails(
        //     state.user, state.userSettings.userAddress.copyWith(email: _se));

        if (state.user.failureOption.isNone()) {
          failureOrSuccess = await databaseRepositoryFacade.updateNewUser(
              state.user.copyWith(
                  displayName: ValidNames('${state.firstName.getOrCrash()} ' +
                      '${state.lastName.getOrCrash()}')));

          yield state.copyWith(
            isSubmitting: false,
            showErrorMessage: true,
            newUserInfoUpdated: true,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        } else {
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessage: true,
            newUserInfoUpdated: false,
            saveFailureOrSuccessOption: none(),
          );
        }
      },
    );
  }
}
