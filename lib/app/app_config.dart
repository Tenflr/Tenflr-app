import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'shared_state.dart';
import 'tenflrpay.dart';


enum AppEnvironment {
  development,
  staging,
  production,
  testing,
}

class FlutterAppConfig {
  FlutterAppConfig({
    @required this.appName,
    @required this.environment,
    @required this.apiBaseUrl,
    this.initializeCrashlytics = true,
    this.monitorConnectivity = true,
    this.enableCrashlyiticsInDevMode = true,
  });

  final String appName;
  final AppEnvironment environment;
  final String apiBaseUrl;
  final bool initializeCrashlytics,
      monitorConnectivity,
      enableCrashlyiticsInDevMode;

  Future<SharedState> loadState() async {
    return SharedState();
  }

  Future startCrashlytics() async {
    if (this.initializeCrashlytics) {
      Crashlytics.instance.enableInDevMode = enableCrashlyiticsInDevMode;
      FlutterError.onError = (FlutterErrorDetails details) {
        Crashlytics.instance.recordFlutterError(details);
      };
    }
  }

  Widget createApp(SharedState state) {
    return TenflrPay(
      appName: this.appName,
      state: state,
    );
  }

  Future run() async {
    //initialize firebase app
    FirebaseApp;
    await startCrashlytics();
    final _state = await loadState();
    runApp(createApp(_state));
  }
}
