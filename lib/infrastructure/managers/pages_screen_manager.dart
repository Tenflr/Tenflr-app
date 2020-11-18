import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class PagesScreenService {
  final LocalAuthentication auth = LocalAuthentication();
  Future<bool> checkBiometrics() async {
    try {
      return await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      throw e;
    }
  }

  Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      return await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      throw e;
    }
  }

  Future<bool> authenticate() async {
    try {
      return await auth.authenticateWithBiometrics(
        localizedReason: 'Scan your fingerprint to authenticate',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      throw e;
    }
  }

  void cancelAuthentication() {
    auth.stopAuthentication();
  }
}
