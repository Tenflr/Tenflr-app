import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tenflrpay/infrastructure/repositories/momo_api_service.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:device_info/device_info.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:package_info/package_info.dart';

import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  Firestore get firestore => Firestore.instance;

  @preResolve
  Future<SharedPreferences> get sharedPreference =>
      SharedPreferences.getInstance();

  // @preResolve
  // Future<FirebaseApp> get firebaseInit => Firebase.initializeApp();

  @lazySingleton
  MomoApiService get momoApiService => MomoApiService.create();

  @lazySingleton
  FirebaseAnalytics get analytics => FirebaseAnalytics();

  @lazySingleton
  FirebaseAnalyticsObserver get analyticsObserver =>
      FirebaseAnalyticsObserver(analytics: analytics);

  @lazySingleton
  DataConnectionChecker get connectionChecker => DataConnectionChecker();

  @lazySingleton
  Crashlytics get recorerdFlutterError => Crashlytics.instance;

 @preResolve
  Future<RemoteConfig> get remoteConfig => RemoteConfig.instance;

  @preResolve 
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();
  
  @lazySingleton
  DeviceInfoPlugin get deviceInfoPlugin => DeviceInfoPlugin();
}
