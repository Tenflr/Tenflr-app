import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route.dart' as autoRoute;
import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_widget.dart';

import '../application/auth/auth_bloc/authentication_bloc.dart';
import '../application/connectivity_and_time_bloc/connectivity_and_time_bloc.dart';
import '../application/curren_theme_mode_bloc/curren_theme_mode_bloc.dart';
import '../application/device_id_watcher/device_id_watcher_bloc.dart';
import '../application/lock_screen_bloc/lock_screen_bloc.dart';
import '../injection.dart';
import '../presentation/core/assets/colors.dart';
import '../routes/router.gr.dart' as generatedRoute;
import 'shared_state.dart';

class TenflrPay extends HookWidget {
  final SharedState state;
  final String appName;
  const TenflrPay({
    @required this.state,
    @required this.appName,
  });
  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    print('debug: MaterialApp');

    final ValueNotifier<ThemeMode> currentThemeMode = useState(ThemeMode.dark);
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (context) => getIt<AuthenticationBloc>()
            ..add(const AuthenticationEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<ConnectivityAndTimeBloc>()
            ..add(const ConnectivityAndTimeEvent.checkInternet()),
        ),
        BlocProvider(
          create: (context) => getIt<CurrentThemeModeBloc>(),
        ),
        BlocProvider(create: (context) => getIt<LockScreenBloc>()),
        BlocProvider(
            create: (context) => getIt<DeviceIdWatcherBloc>()
              ..add(const DeviceIdWatcherEvent.watchDeviceId())),
      ],
      child: BlocListener<CurrentThemeModeBloc, CurrentThemeModeState>(
        // listenWhen: (p, c) => p,
        listener: (context, state) {
          state.map(
              initial: (_) => currentThemeMode.value = ThemeMode.dark,
              lightMode: (_) => currentThemeMode.value = ThemeMode.light,
              darkMode: (_) => currentThemeMode.value = ThemeMode.dark);
        },
        child: MaterialApp(
          title: 'Tenflr',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('en', "US"),
            const Locale('fr', "FR"),
          ],
          theme: ThemeData(
            primaryColor: TfColors.primary,
            secondaryHeaderColor: TfColors.secondary,
            backgroundColor: TfColors.background,
            indicatorColor: TfColors.grey,
            cursorColor: TfColors.grey,
            iconTheme: const IconThemeData(color: TfColors.primary),
            accentColor: TfColors.grey,
            buttonTheme: const ButtonThemeData(
              buttonColor: TfColors.primary,
              textTheme: ButtonTextTheme.primary,
            ),
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: TfColors.primary,
                  displayColor: TfColors.grey,
                ),
            fontFamily: 'Helvitica',
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          builder: (context, child) {
            child = autoRoute.ExtendedNavigator(
              navigatorKey: SharedState.navigatorKey,
              observers: [
                BotToastNavigatorObserver(),
                getIt<FirebaseAnalyticsObserver>(),
              ],
              router: generatedRoute.Router(),
            );
            child = botToastBuilder(context, child);
            return I18n(child: child);
          },
        ),
      ),
      // home: SplashScreen(),
    );
  }
}
