import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';
import 'package:tenflrpay/domain/payment/payment.dart';

import '../../domain/budget/budgets.dart';
import '../../domain/core/settings.dart';
import '../../domain/saving/savings.dart';
import '../../infrastructure/managers/trusted_pay_door_manager.dart';

part 'main_views_bloc.freezed.dart';
part 'main_views_event.dart';
part 'main_views_state.dart';

@injectable
class MainViewsBloc extends Bloc<MainViewsEvent, MainViewsState> {
  MainViewsBloc(this.pagesScreenService, this._settings)
      : super(const MainViewsState.homePage());

  final TrustedVaultDoorManager pagesScreenService;
  final MySettings _settings;
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo androidInfo;
  bool uptoDateSdkInt = false;
  bool isVaultOpen = false;
  LocalAuthentication auth;
  static bool canCheckBiometrics;
  static List<BiometricType> availableBiometrics;
  bool isAuthenticating;
  bool newNotification;
  bool searchVisible = false;

  @override
  Stream<MainViewsState> mapEventToState(
    MainViewsEvent event,
  ) async* {
    if (Platform.isAndroid) {
      androidInfo ??= await deviceInfo.androidInfo;
      uptoDateSdkInt = androidInfo.version.sdkInt > 23;
      if (uptoDateSdkInt) {
        canCheckBiometrics ??= await pagesScreenService.checkBiometrics();
      }
    }

    if (Platform.isIOS) {
      canCheckBiometrics ??= await pagesScreenService.checkBiometrics();
    }
    if (canCheckBiometrics) {
      availableBiometrics = await pagesScreenService.getAvailableBiometrics();
    }
    yield* event.map(
      homePage: (e) async* {
        yield const MainViewsState.homePage();
      },
      trustedPayDetail: (e) async* {
        yield  MainViewsState.trustedPayDetail(payment: e.payment);
      },
      savingsPage: (e) async* {
        yield const MainViewsState.savingsPage();
      },
      savingsDetailPage: (e) async* {
        yield MainViewsState.savingsDetailPage(
            savings: e.savings, duration: e.duration);
      },
      budgetPage: (e) async* {
        yield const MainViewsState.budgetPage();
      },
      budgetDetailPage: (e) async* {
        yield MainViewsState.budgetDetailPage(budget: e.budget);
      },
      trustedPayPage: (e) async* {
        // temporal modification
        yield const MainViewsState.trustedPayUnlockPage();

        // if (e.pin == _settings.getTrustedPayPin) {
        //   yield const MainViewsState.trustedPayUnlockPage();
        // } else {
        //   yield const MainViewsState.trustedPayLockedPage();

        //   try {
        //     if (canCheckBiometrics && availableBiometrics.isNotEmpty) {
        //       isAuthenticating = true;

        //       isVaultOpen = await pagesScreenService.authenticate();
        //       isAuthenticating = false;
        //     }
        //     if (isVaultOpen || e.pin == _settings.getTrustedPayPin) {
        //       yield const MainViewsState.trustedPayUnlockPage();
        //     } else {
        //       yield const MainViewsState.trustedPayLockedPage();
        //     }
        //   } on PlatformException catch (e) {
        //     if (e.code == auth_error.notAvailable) {
        //       // Handle this exception here.
        //       print("An error occured during authentication.");
        //     }
        //   }
        // }
      },
      quickPaymentOverView: (e) async* {
        yield const MainViewsState.quickPaymentOverView();
      },
      trustedPayAuthCancel: (e) async* {
        isAuthenticating = false;
        isVaultOpen = false;
        await pagesScreenService.checkBiometrics();
        yield const MainViewsState.trustedPayLockedPage();
      },
    );
  }
}
