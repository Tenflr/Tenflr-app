import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@injectable
class TrustedVaultDoorManager {
  final LocalAuthentication auth = LocalAuthentication();
  Future<bool> checkBiometrics() async {
    try {
      return await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      // throw e;
      debugPrint('$e');
      return false;
    }
  }

  Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      return await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      // throw e;
      debugPrint('$e');
      return [];
    }
  }

  Future<bool> authenticate() async {
    try {
      return await auth.authenticateWithBiometrics(
        localizedReason: 'Scan your fingerdebugPrint to authenticate',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      debugPrint('$e');

      // throw e;
      return false;
    }
  }

  void cancelAuthentication() {
    auth.stopAuthentication();
  }
}
