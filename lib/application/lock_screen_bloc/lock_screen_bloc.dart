import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';

import '../../domain/core/settings.dart';
import '../../infrastructure/managers/trusted_pay_door_manager.dart';

part 'lock_screen_bloc.freezed.dart';
part 'lock_screen_event.dart';
part 'lock_screen_state.dart';

@injectable
class LockScreenBloc extends Bloc<LockScreenEvent, LockScreenState> {
  LockScreenBloc(this.pagesScreenService, this._settings)
      : super(LockScreenState.unlocked());
  final MySettings _settings;
  final TrustedVaultDoorManager pagesScreenService;
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo androidInfo;
  bool uptoDateSdkInt = false;
  bool isVaultOpen = false;
  static String pin = "2580";

  LocalAuthentication auth;
  static bool canCheckBiometrics;
  static List<BiometricType> availableBiometrics;
  bool isAuthenticating;
  bool newNotification;
  bool searchVisible = false;

  @override
  Stream<LockScreenState> mapEventToState(
    LockScreenEvent event,
  ) async* {
    if (Platform.isAndroid) {
      androidInfo ??= await deviceInfo.androidInfo;
      uptoDateSdkInt = androidInfo.version.sdkInt > 23;
      if (uptoDateSdkInt) {
        canCheckBiometrics ??= await pagesScreenService.checkBiometrics();
      }
    } else if (Platform.isIOS) {
      canCheckBiometrics ??= await pagesScreenService.checkBiometrics();
    }
    if (canCheckBiometrics) {
      availableBiometrics ??= await pagesScreenService.getAvailableBiometrics();
    }
    yield* event.map(
      lock: (e) async* {
        if (state.pausedLock == false) {
          yield state.copyWith(isLocked: true);
        }
      },
      shouldPaused: (e) async* {
        yield state.copyWith(pausedLock: e.paused);
      },
      unlock: (e) async* {
        if (e.pin == _settings.getTrustedPayPin) {
          yield state.copyWith(isLocked: false);
        } else {
          // yield const LockScreenState.locked();

          try {
            if (canCheckBiometrics && availableBiometrics.isNotEmpty) {
              isAuthenticating = true;

              isVaultOpen = await pagesScreenService.authenticate();
              isAuthenticating = false;
            }
            if (isVaultOpen || e.pin == _settings.getTrustedPayPin) {
              yield state.copyWith(isLocked: false, pausedLock: true);
            } else {
              if (!state.pausedLock) {
                yield state.copyWith(isLocked: true);
              }
            }
          } on PlatformException catch (e) {
            if (e.code == auth_error.notAvailable) {
              // Handle this exception here.
              debugPrint("An error occured during authentication.");
            }
          }
        }
      },
    );
  }
}
