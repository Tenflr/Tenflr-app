
import 'package:devicelocale/devicelocale.dart';
import 'package:flt_telephony_info/flt_telephony_info.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:trust_fall/trust_fall.dart';

import '../../domain/core/constant_list.dart';

@injectable
class PhoneInitManager {
  bool isJailBroken;
  bool isRealDevice;
  bool isTrustFall;
  TelephonyInfo telephonyInfo;
  String line1Number;
  String locale = "CM";

  Map<String, dynamic> info() {
    return {};
  }

  Future<String> getDeviceLocale() async {
    locale = await Devicelocale.currentLocale;
    if (KCountries.contains(locale.toUpperCase())) {
      return locale.toUpperCase();
    } else {
      return "CM";
    }
  }

  Future<String> getLine1Number() async {
    TelephonyInfo info = await FltTelephonyInfo.info;

    line1Number = info?.line1Number;
    return line1Number;
  }

  Future<TelephonyInfo> getTelephonyInfo() async {
    try {
      return await FltTelephonyInfo.info;
    } on PlatformException catch (e) {
      throw e;
    }
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
//    String platformVersion;

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.

    // Platform messages may fail, so we use a try/catch PlatformException.ßß
    try {
      locale = await getDeviceLocale();
      isJailBroken = await TrustFall.isJailBroken;
      // isRealDevice = await TrustFall.isRealDevice;

      // isTrustFall = await TrustFall.isTrustFall;

      // PermissionStatus status = await Permission.locationWhenInUse.status;

      // if (status.isUndetermined) {
      //   await Permission.locationWhenInUse.request().then((status) async {
      //     if (PermissionStatus.granted == status) {
      //       // canMockLocation = await TrustFall.canMockLocation;
      //       isTrustFall = await TrustFall.isRou\;
      //     }
      //   });
      // } else if (status.isGranted) {
      //   canMockLocation = await TrustFall.canMockLocation;
      //   isTrustFall = await TrustFall.isTrustFall;
      // }

      // if (Platform.isAndroid) {
      //   isOnExternalStorage = await TrustFall.isOnExternalStorage;
      // } else if (Platform.isIOS) {
      //   isJailBroken = await TrustFall.isJailBroken;
      //   isOnExternalStorage = false;
      // }

      // return <Map>{
      //   "isJailBroken": isJailBroken,

      //   "deviceLocale": locale,
      //   "telephonyInfo": await getTelephonyInfo()
      // };
      return null;
    } on PlatformException catch (error) {
      throw error;
    }
  }
}
