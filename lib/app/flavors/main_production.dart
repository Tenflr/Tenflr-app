



import 'package:flutter/material.dart';

import '../../injection.dart';
import '../app_config.dart';

void main() async {

   /** WidgetsFlutterBinding.ensureInitialized() is required in Flutter v1.9.4+ before using any plugins if the code is executed before runApp. */
  WidgetsFlutterBinding.ensureInitialized();

// Configure injecction
  await configureInjection(Env.production);

//   /** BlocDelegate allows us to override onTransition and onError and will help us see all bloc state changes (transitions) and errors in one place!
//  */
//   Bloc.observer = MyBlocObserver();

  // // Logger to intercept and print all momoService in console for better debugging.
  // _setupLogging();

  await FlutterAppConfig(
    environment: AppEnvironment.production,
    apiBaseUrl: 'https://my-api.com',
    appName: 'College Plan',
    initializeCrashlytics: true,
  ).run();
}