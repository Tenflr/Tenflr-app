import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:tenflrpay/domain/auth/i_auth_facade.dart';
import 'package:tenflrpay/domain/core/settings.dart';
import 'package:tenflrpay/domain/device_id/device_id.dart';
import 'package:tenflrpay/domain/device_id/i_device_id_facade.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/domain/user_settings/i_settings_facade.dart';
import 'package:tenflrpay/domain/user_settings/user_settings.dart';
import 'package:tenflrpay/domain/user_settings/user_settings_failure.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

/*
uninitialized - waiting to see if the user is authenticated or not on app start.
authenticated - successfully authenticated
unauthenticated - not authenticated
*/
@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthFacade _authFacade;
  final MySettings _settings;
  final IDeviceIDFacade _idFacade;
  final ISettingsFacade _iSettingsFacade;

  AuthenticationBloc(
    this._authFacade,
    this._settings,
    this._idFacade,
    this._iSettingsFacade,
  ) : super(const AuthenticationState.initial());


  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final bool _isNewUser = _settings.sharedPreferences.getBool("newUser");
        debugPrint("Is user a firstTime User: $_isNewUser");
        if (_isNewUser == null || _isNewUser == true) {
          _settings.sharedPreferences.setBool("newUser", false);
          yield const AuthenticationState.firstTimeUser();
        } else {
          // let check if the user has registered before d
          final isOldUser = await _authFacade.hasRegisteredBefore();

          // if user has registered before check if userDetail has be collected before
          // if not register user.
          if (isOldUser) {
            final userOptionFromDatabase = await _authFacade.getSignedInUser();
            final _user = userOptionFromDatabase.getOrElse(() => null);

            /*
                Let set some settings in sharePreferences which can be access globally
                all over the app using the settings class.
               */
            if (_user != null) {
              _settings.setAutomaticSavingsUnlock(unlockAuto: true);
              // _settings.setSmartFundsUse(useSmartFunds: true);
              _settings.setMomoOrTrustedFunds(withdrawalWithMomo: true);
              _settings.setTrustedPayPin('2580');
              // await _settings.setUserNumber(_user.phoneNumber);
              // await _settings.setUserId(_user.id);
            }
            yield userOptionFromDatabase
                .fold((l) => const AuthenticationState.unauthenticated(),
                    (User user) {
              if (user.isNewUser) {
                if (user.providerId == "phone") {
                  return AuthenticationState.moreInfoPhone(user);
                } else if (user.providerId == "google") {
                  return AuthenticationState.moreInfoGoogle(user);
                }
              }

              return AuthenticationState.authenticated(
                  user: user,
                  deviceId: DeviceId.empty(),
                  userSettings: UserSettings.empty());
            });
          } else {
            final userOptionFromGoogle = await _authFacade.getSignedInUser();
            final _user = userOptionFromGoogle.getOrElse(() => null);

            DeviceId deviceId;
            UserSettings userSettings;
            // get UserAddress
            final Either<UserSettingsFailure, UserSettings>
                failureOrUserSettings =
                await _iSettingsFacade.getUserSettings();
            // Get local device Id
            if (failureOrUserSettings.isRight()) {
              userSettings = failureOrUserSettings.getOrElse(() => null);
              final DeviceId localDeviceId = await _idFacade.getDeviceDetails(
                  _user);
              deviceId = await _idFacade.getDeviceIdFromFirebase(localDeviceId);
            }
            /*
                Let set some settings in sharePreferences which can be access globally
                all over the app using the settings class.
               */
            if (_user != null) {
              _settings.setAutomaticSavingsUnlock(unlockAuto: true);
              // _settings.setSmartFundsUse(useSmartFunds: true);
              _settings.setMomoOrTrustedFunds(withdrawalWithMomo: true);
              _settings.setTrustedPayPin('2580');
              // await _settings.setUserNumber(_user.phoneNumber);
              // await _settings.setUserId(_user.id);
            }

            yield userOptionFromGoogle.fold(
                (_) => const AuthenticationState.unauthenticated(),
                (User user) => AuthenticationState.authenticated(
                    user: user,
                    deviceId: deviceId,
                    userSettings: userSettings));
          }
        }
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        await _settings.sharedPreferences.remove(USER_ID);
        await _settings.sharedPreferences.remove(USER_NUMBER);
        yield const AuthenticationState.unauthenticated();
      },
    );
  }
}
