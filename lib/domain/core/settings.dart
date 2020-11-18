import 'dart:convert';

import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/domain/device_id/device_id.dart';
import 'package:tenflrpay/domain/device_id/i_device_id_facade.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/domain/user_settings/user_settings.dart';
import 'package:tenflrpay/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

const USER_NUMBER = 'USER_NUMBER';
const USER_ID = 'USER_ID';
const TRUSTEDPAYPIN = 'TRUSTEDPAYPIN';
const MOMO_OR_TRUSTED_FUNDS = 'MOMO_OR_TRUSTED_FUNDS';
const AUTOMATIC_SAVING_UNLOCK = 'AUTOMATIC_SAVING_UNLOCK';
const SMART_FUNDS_USE = 'SMART_FUNDS_USE';
const APPLOCK = 'APPLOCK';
const SUBSCRIPTION_MODE = "SUBSCRIPTION_MODE";
const DATE_OF_BIRTH = "DATE_OF_BIRTH";
const TWO_FA = "TWO_FA";
const REPUTATION_POINTS = "REPUTATION_POINTS";
const DEFAULT_LANG = "DEFAULT_LANG";
const USER_EMAIL = "USER_EMAIL";
const DEVICE_ID = "DEVICE_ID";

@lazySingleton
class MySettings {
  final SharedPreferences _preferences;

  MySettings(this._preferences);

  // Set all settings
  Future<void> setAll(UserSettings userSettings, User user) async {
    // set autoSavingsUnlock

    // set trusted Funds
    Future.wait([
      // setMomoOrTrustedFunds(withdrawalWithMomo: userSettings.smartFundsUsage);
      setSmartFundsUse(useSmartFunds: userSettings.smartFundsUsage),
      setTrustedPayPin(userSettings.userPin.getOrCrash()),
      setUserEmail(user.email),
      setUserNumber(user.phoneNumber),
      setAppLock(userSettings.lockEntireApp),
      setDefaultLang(userSettings.defaultLanguage.getOrCrash()),
      setUserId(user.id),
      setUserReputation(userSettings.userReputation.reputation.getOrCrash()),
      setDeviceId(),
      setSubScriptionMode(userSettings.subscriptionMode.getOrCrash()),
    ]);
  }

  // Device Id
  Future<void> setDeviceId() async {
    final String deviceIdString =
        (await getIt<IDeviceIDFacade>().getDeviceIdentifier()).getOrCrash();
    await _preferences.setString(DEVICE_ID, deviceIdString);
  }

  String get getDeviceId => _preferences.getString(DEVICE_ID);

// AutomaticSavingsUnlock
  Future<void> setAutomaticSavingsUnlock({@required bool unlockAuto}) async =>
      await _preferences.setBool(AUTOMATIC_SAVING_UNLOCK, unlockAuto);
  bool get automaticSavingsUnlock =>
      _preferences.getBool(AUTOMATIC_SAVING_UNLOCK);

  // setting to choice if to withdraw funds from momo account or trustedFunds
  Future<void> setMomoOrTrustedFunds(
      {@required bool withdrawalWithMomo}) async {
    await _preferences.setBool(MOMO_OR_TRUSTED_FUNDS, withdrawalWithMomo);
  }

  bool get withdrawalWithMomo => _preferences.getBool(MOMO_OR_TRUSTED_FUNDS);

  // expose share preferences instance
  SharedPreferences get sharedPreferences => _preferences;

  // setting for smart funds use
  // When setting is set to smart funds use, funds required will be withdrawn from TrustedFunds if not available
  // it will be withdrawn from Momo account
  Future<void> setSmartFundsUse({@required bool useSmartFunds}) async {
    await _preferences.setBool(SMART_FUNDS_USE, useSmartFunds);
  }

  bool get isSmartFundsActive => _preferences.getBool(SMART_FUNDS_USE);

  // Trusted pay pin
  String get getTrustedPayPin => _preferences.getString(TRUSTEDPAYPIN);

  Future<void> setTrustedPayPin(String pin) async {
    await _preferences.setString(TRUSTEDPAYPIN, '2580');
  }

  // User email
  Future<void> setUserEmail(EmailAddress email) async =>
      await _preferences.setString(USER_EMAIL, email.getOrCrash());
  EmailAddress get getUserEmail =>
      EmailAddress(_preferences.getString(USER_EMAIL));

// User ID
  UniqueId get getUserId {
    final UniqueId id =
        UniqueId.fromUniqueString(_preferences.getString(USER_ID));
    return id;
  }

  Future<void> setUserId(UniqueId id) async {
    await _preferences.setString(USER_ID, id.getOrCrash());
  }

// User phoneNumber

  ValidPhoneNumber get getUserNumber {
    final String number = _preferences.getString(USER_NUMBER);
    return ValidPhoneNumber(number);
  }

  Future<void> setUserNumber(ValidPhoneNumber number) async {
    if (number.isValid()) {
      await _preferences.setString(USER_NUMBER, number.getOrCrash());
    }
  }

  // Lock entire app
  Future<void> setAppLock(bool shouldLock) async =>
      await _preferences.setBool(APPLOCK, shouldLock);
  bool get isLockEnabled => _preferences.getBool(APPLOCK) ?? true;

  // User subscriptionMode
  Future<void> setSubScriptionMode(String subMode) async =>
      await _preferences.setString(SUBSCRIPTION_MODE, subMode);
  String get getSubscriptionMode =>
      _preferences.getString(SUBSCRIPTION_MODE) ?? "";

  //User Reputation
  Future<void> setUserReputation(double points) async =>
      await _preferences.setDouble(REPUTATION_POINTS, points);
  double get getUserReputation =>
      _preferences.getDouble(REPUTATION_POINTS) ?? 0.0;

  // Default Language
  Future<void> setDefaultLang(String lang) async =>
      await _preferences.setString(DEFAULT_LANG, lang);
  String get getDefaultLanguage => _preferences.getString(DEFAULT_LANG) ?? 'en';

  // 2FA
  Future<void> enable2FA(bool enable) async =>
      await _preferences.setBool(TWO_FA, enable);
  bool get is2FAEnabled => _preferences.getBool(TWO_FA) ?? false;

  // User Date of Birth

  Future<void> setUserDateOFBirth(String dob) async =>
      await _preferences.setString(DATE_OF_BIRTH, dob);
  String get getDOB =>
      _preferences.getString(DATE_OF_BIRTH) ?? DateTime.now().toString();
}
