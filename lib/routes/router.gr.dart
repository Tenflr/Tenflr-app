// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../domain/user/user.dart';
import '../presentation/screens/main_views/budgets/budget_manager_create_screen.dart';
import '../presentation/screens/main_views/home_screen.dart';
import '../presentation/screens/main_views/quickpay/request_payment_screen.dart';
import '../presentation/screens/main_views/savings/create_savings_screen.dart';
import '../presentation/screens/main_views/trustedpay/send_trusted_payment_screen.dart';
import '../presentation/screens/on_boarding/get_more_user_info_after_google_signUp.dart';
import '../presentation/screens/on_boarding/get_more_user_info_after_phone_signUp.dart';
import '../presentation/screens/on_boarding/getstarted.dart';
import '../presentation/screens/on_boarding/splash_screen.dart';
import '../presentation/screens/on_boarding/welcome_login_screen.dart';
import '../presentation/screens/settings/change_pin_screen.dart';
import '../presentation/screens/settings/settings.dart';
import '../presentation/screens/settings/user_profile.dart';
import '../presentation/widgets/deposit_screen.dart';
import '../presentation/widgets/withdraw_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String getStarted = '/get-started';
  static const String settingsScreen = '/settings-screen';
  static const String userProfile = '/user-profile';
  static const String getMoreUserInfoAfterGoogleSignUp =
      '/get-more-user-info-after-google-sign-up';
  static const String getMoreUserInfoAfterPhoneSignUp =
      '/get-more-user-info-after-phone-sign-up';
  static const String homeScreen = '/home-screen';
  static const String welcomeLoginScreen = '/welcome-login-screen';
  static const String createSavingsScreen = '/create-savings-screen';
  static const String sendTrustedPaymentScreen = '/send-trusted-payment-screen';
  static const String budgetCreateScreen = '/budget-create-screen';
  static const String requestPaymentScreen = '/request-payment-screen';
  static const String depositScreen = '/deposit-screen';
  static const String withdrawScren = '/withdraw-scren';
  static const String changePinScreen = '/change-pin-screen';
  static const all = <String>{
    splashScreen,
    getStarted,
    settingsScreen,
    userProfile,
    getMoreUserInfoAfterGoogleSignUp,
    getMoreUserInfoAfterPhoneSignUp,
    homeScreen,
    welcomeLoginScreen,
    createSavingsScreen,
    sendTrustedPaymentScreen,
    budgetCreateScreen,
    requestPaymentScreen,
    depositScreen,
    withdrawScren,
    changePinScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.getStarted, page: GetStarted),
    RouteDef(Routes.settingsScreen, page: SettingsScreen),
    RouteDef(Routes.userProfile, page: UserProfile),
    RouteDef(Routes.getMoreUserInfoAfterGoogleSignUp,
        page: GetMoreUserInfoAfterGoogleSignUp),
    RouteDef(Routes.getMoreUserInfoAfterPhoneSignUp,
        page: GetMoreUserInfoAfterPhoneSignUp),
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.welcomeLoginScreen, page: WelcomeLoginScreen),
    RouteDef(Routes.createSavingsScreen, page: CreateSavingsScreen),
    RouteDef(Routes.sendTrustedPaymentScreen, page: SendTrustedPaymentScreen),
    RouteDef(Routes.budgetCreateScreen, page: BudgetCreateScreen),
    RouteDef(Routes.requestPaymentScreen, page: RequestPaymentScreen),
    RouteDef(Routes.depositScreen, page: DepositScreen),
    RouteDef(Routes.withdrawScren, page: WithdrawScren),
    RouteDef(Routes.changePinScreen, page: ChangePinScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    GetStarted: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const GetStarted(),
        settings: data,
      );
    },
    SettingsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingsScreen(),
        settings: data,
      );
    },
    UserProfile: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserProfile(),
        settings: data,
      );
    },
    GetMoreUserInfoAfterGoogleSignUp: (data) {
      final args = data.getArgs<GetMoreUserInfoAfterGoogleSignUpArguments>(
        orElse: () => GetMoreUserInfoAfterGoogleSignUpArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => GetMoreUserInfoAfterGoogleSignUp(
          key: args.key,
          user: args.user,
        ),
        settings: data,
      );
    },
    GetMoreUserInfoAfterPhoneSignUp: (data) {
      final args = data.getArgs<GetMoreUserInfoAfterPhoneSignUpArguments>(
        orElse: () => GetMoreUserInfoAfterPhoneSignUpArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => GetMoreUserInfoAfterPhoneSignUp(
          key: args.key,
          user: args.user,
        ),
        settings: data,
      );
    },
    HomeScreen: (data) {
      final args = data.getArgs<HomeScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(user: args.user),
        settings: data,
      );
    },
    WelcomeLoginScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomeLoginScreen(),
        settings: data,
      );
    },
    CreateSavingsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateSavingsScreen(),
        settings: data,
      );
    },
    SendTrustedPaymentScreen: (data) {
      final args =
          data.getArgs<SendTrustedPaymentScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => SendTrustedPaymentScreen(user: args.user),
        settings: data,
      );
    },
    BudgetCreateScreen: (data) {
      final args = data.getArgs<BudgetCreateScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => BudgetCreateScreen(
          isGift: args.isGift,
          user: args.user,
        ),
        settings: data,
      );
    },
    RequestPaymentScreen: (data) {
      final args = data.getArgs<RequestPaymentScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => RequestPaymentScreen(
          user: args.user,
          key: args.key,
        ),
        settings: data,
      );
    },
    DepositScreen: (data) {
      final args = data.getArgs<DepositScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => DepositScreen(user: args.user),
        settings: data,
      );
    },
    WithdrawScren: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WithdrawScren(),
        settings: data,
      );
    },
    ChangePinScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChangePinScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushGetStarted() => push<dynamic>(Routes.getStarted);

  Future<dynamic> pushSettingsScreen() => push<dynamic>(Routes.settingsScreen);

  Future<dynamic> pushUserProfile() => push<dynamic>(Routes.userProfile);

  Future<dynamic> pushGetMoreUserInfoAfterGoogleSignUp({
    Key key,
    User user,
  }) =>
      push<dynamic>(
        Routes.getMoreUserInfoAfterGoogleSignUp,
        arguments:
            GetMoreUserInfoAfterGoogleSignUpArguments(key: key, user: user),
      );

  Future<dynamic> pushGetMoreUserInfoAfterPhoneSignUp({
    Key key,
    User user,
  }) =>
      push<dynamic>(
        Routes.getMoreUserInfoAfterPhoneSignUp,
        arguments:
            GetMoreUserInfoAfterPhoneSignUpArguments(key: key, user: user),
      );

  Future<dynamic> pushHomeScreen({
    @required User user,
  }) =>
      push<dynamic>(
        Routes.homeScreen,
        arguments: HomeScreenArguments(user: user),
      );

  Future<dynamic> pushWelcomeLoginScreen() =>
      push<dynamic>(Routes.welcomeLoginScreen);

  Future<dynamic> pushCreateSavingsScreen() =>
      push<dynamic>(Routes.createSavingsScreen);

  Future<dynamic> pushSendTrustedPaymentScreen({
    @required User user,
  }) =>
      push<dynamic>(
        Routes.sendTrustedPaymentScreen,
        arguments: SendTrustedPaymentScreenArguments(user: user),
      );

  Future<dynamic> pushBudgetCreateScreen({
    bool isGift = true,
    @required User user,
  }) =>
      push<dynamic>(
        Routes.budgetCreateScreen,
        arguments: BudgetCreateScreenArguments(isGift: isGift, user: user),
      );

  Future<dynamic> pushRequestPaymentScreen({
    @required User user,
    Key key,
  }) =>
      push<dynamic>(
        Routes.requestPaymentScreen,
        arguments: RequestPaymentScreenArguments(user: user, key: key),
      );

  Future<dynamic> pushDepositScreen({
    @required User user,
  }) =>
      push<dynamic>(
        Routes.depositScreen,
        arguments: DepositScreenArguments(user: user),
      );

  Future<dynamic> pushWithdrawScren() => push<dynamic>(Routes.withdrawScren);

  Future<dynamic> pushChangePinScreen() =>
      push<dynamic>(Routes.changePinScreen);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// GetMoreUserInfoAfterGoogleSignUp arguments holder class
class GetMoreUserInfoAfterGoogleSignUpArguments {
  final Key key;
  final User user;
  GetMoreUserInfoAfterGoogleSignUpArguments({this.key, this.user});
}

/// GetMoreUserInfoAfterPhoneSignUp arguments holder class
class GetMoreUserInfoAfterPhoneSignUpArguments {
  final Key key;
  final User user;
  GetMoreUserInfoAfterPhoneSignUpArguments({this.key, this.user});
}

/// HomeScreen arguments holder class
class HomeScreenArguments {
  final User user;
  HomeScreenArguments({@required this.user});
}

/// SendTrustedPaymentScreen arguments holder class
class SendTrustedPaymentScreenArguments {
  final User user;
  SendTrustedPaymentScreenArguments({@required this.user});
}

/// BudgetCreateScreen arguments holder class
class BudgetCreateScreenArguments {
  final bool isGift;
  final User user;
  BudgetCreateScreenArguments({this.isGift = true, @required this.user});
}

/// RequestPaymentScreen arguments holder class
class RequestPaymentScreenArguments {
  final User user;
  final Key key;
  RequestPaymentScreenArguments({@required this.user, this.key});
}

/// DepositScreen arguments holder class
class DepositScreenArguments {
  final User user;
  DepositScreenArguments({@required this.user});
}
