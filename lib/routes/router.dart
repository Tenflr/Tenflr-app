import 'package:auto_route/auto_route_annotations.dart';
import 'package:tenflrpay/presentation/widgets/deposit_screen.dart';
import 'package:tenflrpay/presentation/widgets/withdraw_screen.dart';

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
import '../presentation/screens/settings/settings.dart';
import '../presentation/screens/settings/user_profile.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashScreen, initial: true),
      MaterialRoute(page: GetStarted),
      MaterialRoute(page: SettingsScreen),
      MaterialRoute(page: UserProfile),
      MaterialRoute(page: GetMoreUserInfoAfterGoogleSignUp),
      MaterialRoute(page: GetMoreUserInfoAfterPhoneSignUp),
      MaterialRoute(page: HomeScreen),
      MaterialRoute(page: WelcomeLoginScreen),
      MaterialRoute(page: CreateSavingsScreen),
      MaterialRoute(page: SendTrustedPaymentScreen),
      MaterialRoute(page: BudgetCreateScreen),
      MaterialRoute(page: RequestPaymentScreen),
      MaterialRoute(page: DepositScreen),
      MaterialRoute(page: WithdrawScren),
    ])
class $Router {}
