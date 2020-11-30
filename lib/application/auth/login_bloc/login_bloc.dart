import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/core/auth_failure.dart';
import '../../../domain/core/database_failure.dart';
import '../../../domain/core/settings.dart';
import '../../../domain/core/valid_objects.dart';
import '../../../domain/database/i_database_repository_facade.dart';
import '../../../domain/device_id/device_id.dart';
import '../../../domain/device_id/i_device_id_facade.dart';
import '../../../domain/user/user.dart';
import '../../../domain/user_settings/i_settings_facade.dart';
import '../../../domain/user_settings/user_settings.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';
/*
an AppStarted event to notify the bloc that it needs to check if the user is currently authenticated or not.
a LoggedIn event to notify the bloc that the user has successfully logged in.
a LoggedOut event to notify the bloc that the user has successfully logged out
 */

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IDatabaseRepositoryFacade dataRepository;
  final IAuthFacade dataServices;
  final ISettingsFacade _iSettingsFacade;
  final IDeviceIDFacade _deviceIdRepository;
  final MySettings _settings;
  StreamSubscription subscription;

  LoginBloc(this.dataRepository, this.dataServices, this._deviceIdRepository,
      this._iSettingsFacade, this._settings)
      : super(LoginState.initial());
  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(phoneVerificationFailed: (e) async* {
      yield state.copyWith(
        isEditing: false,
        isSubmitting: false,
        showErrorMessages: false,
        otpSent: false,
        otpVerified: false,
        authFailureOrSuccessOption:
            some(left(const AuthFailure.phoneVerificationFailed())),
      );
    }, cancelledByUser: (e) async* {
      yield state.copyWith(
        showErrorMessages: false,
        isEditing: false,
        otpSent: false,
        otpVerified: false,
        isSubmitting: false,
        authFailureOrSuccessOption:
            some(left(const AuthFailure.cancelledByUser())),
      );
    }, phoneNumberChanged: (e) async* {
      yield state.copyWith(
        phoneNumber: e.phoneNumber,
        showErrorMessages: false,
        isEditing: true,
        otpSent: false,
        otpVerified: false,
        authFailureOrSuccessOption: none(),
      );
    }, loginWithGooglePressed: (e) async* {
      yield state.copyWith(
        isSubmitting: true,
        otpSent: false,
        verId: '',
        otpVerified: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );

      final failureOrSuccess = await dataServices.signInWithGoogle();
      Either<DatabaseFailure, User> result;

      // new user check
      if (failureOrSuccess.isRight() &&
          failureOrSuccess.all((r) => r == true)) {
        result = await dataRepository.createNewUser('google', state.user);
        await _iSettingsFacade.setUserSettings(UserSettings.empty());
        _settings.setAll(UserSettings.empty(), state.user);

        if (result.isLeft()) {
          await dataServices.deleteNewUser();
        }
        yield result.fold(
          (l) => state.copyWith(
            newUserCouldNotBeCreated: true,
            otpVerified: false,
            authFailureOrSuccessOption:
                some(left(const AuthFailure.userCouldNotBeCreated())),
          ),
          (r) => state.copyWith(
            newUserCreated: true,
            user: r,
          ),
        );

        // Old user checks
      } else if (failureOrSuccess.isRight() &&
          failureOrSuccess.all((r) => r == false)) {
        // _iSettingsFacade
        //     .getUserSettings()
        //     .then((userSettings) => _settings.setAll(
        //           userSettings.getOrElse(() => null),
        //           state.user,
        //         ));

        yield state.copyWith(
          isSubmitting: false,
          oldUserReturned: true,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      }

      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      );
    }, loginWithPhonePressed: (e) async* {
      final bool isPhoneNumberValid = state.phoneNumber.isValid();
      if (isPhoneNumberValid) {
        yield state.copyWith(
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        );
        subscription = sendOtp().listen((event) => add(event));
      } else {
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: none(),
        );
      }
    }, verifyOTP: (e) async* {
      Either<DatabaseFailure, User> result;
      yield state.copyWith(
        otpSent: false,
        otpVerified: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await dataServices.verifyAndLogin(
          verificationId: state.verId, smsCode: e.otp);
      if (failureOrSuccess.isLeft()) {
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      }

      // New user checks
      if (failureOrSuccess.isRight() &&
          failureOrSuccess.all((r) => r == true)) {
        // get device incomplete id
        final DeviceId deviceId = await _deviceIdRepository
            .getDeviceDetails(state.user.copyWith(providerId: 'phone'));

        final Either<AuthFailure, bool> setDeviceIdAndPhoneNumber =
            await _deviceIdRepository.setDevicePhone(
                deviceId: deviceId, tel: _settings.getUserNumber);
        if (setDeviceIdAndPhoneNumber.isRight()) {
          result = await dataRepository.createNewUser('phone', state.user);
          await _iSettingsFacade.setUserSettings(UserSettings.empty());
          await _settings.setAll(UserSettings.empty(), state.user);

          if (result.isLeft()) {
            await dataServices.deleteNewUser();
          }
          yield result.fold(
            (l) => state.copyWith(
              newUserCouldNotBeCreated: true,
              otpVerified: false,
            ),
            (r) => state.copyWith(
              newUserCreated: true,
              user: r,
              otpVerified: true,
              authFailureOrSuccessOption: some(failureOrSuccess),
            ),
          );
        } else {
          yield state.copyWith(
            newUserCouldNotBeCreated: true,
            authFailureOrSuccessOption: some(setDeviceIdAndPhoneNumber),
          );
        }

        // Old user checks
      } else if (failureOrSuccess.isRight() &&
          failureOrSuccess.all((r) => r == false)) {
        // Either<UserSettingsFailure, UserSettings> userSettings;

        // _iSettingsFacade
        //     .getUserSettings()
        //     .then((userSettings) => _settings.setAll(
        //           userSettings.getOrElse(() => null),
        //           state.user,
        //         ));
      }

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: false,
        otpVerified: true,
        authFailureOrSuccessOption: some(failureOrSuccess),
      );
    }, setVerificationId: (e) async* {
      yield state.copyWith(
        verId: e.verId,
      );
    }, triggerOtpVerification: (e) async* {
      yield state.copyWith(
        otpSent: true,
      );
    });
  }

  Stream<LoginEvent> sendOtp() async* {
    final StreamController<LoginEvent> eventStream = StreamController();
    final PhoneVerificationCompleted = (authCredential) {
      // eventStream.add(eventStream.);
      eventStream.close();
    };
    final PhoneVerificationFailed = (authException) {
      eventStream.add(LoginEvent.phoneVerificationFailed());
    };
    final PhoneCodeSent = (String verId, [int forceResent]) {
      eventStream.add(LoginEvent.setVerificationId(verId: verId));
      eventStream.add(const LoginEvent.triggerOtpVerification());
    };
    final PhoneCodeAutoRetrievalTimeout = (String verId) {
      eventStream.add(LoginEvent.setVerificationId(verId: verId));

      eventStream.close();
    };

    await dataServices.sendOtp(
      phoneCodeSent: PhoneCodeSent,
      timeOut: const Duration(seconds: 5),
      phoneNumber: state.phoneNumber.getOrCrash(),
      phoneVerificationFailed: PhoneVerificationFailed,
      autoRetrievalTimeout: PhoneCodeAutoRetrievalTimeout,
      phoneVerificationCompleted: PhoneVerificationCompleted,
    );

    yield* eventStream.stream;
  }

  @override
  Future<void> close() {
    subscription?.cancel();
    return super.close();
  }
}
