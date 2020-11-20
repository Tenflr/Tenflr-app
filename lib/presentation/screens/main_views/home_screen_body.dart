import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';
import 'package:tenflrpay/presentation/screens/main_views/trustedpay/trustedpay_detail_screen.dart';
import 'package:tenflrpay/presentation/widgets/show_notification.dart';
import 'package:tenflrpay/presentation/widgets/title_builder.dart';

import '../../../application/main_views_bloc/main_views_bloc.dart';
import '../../../injection.dart';
import '../../core/icons/TfIcons_icons.dart';
import '../../core/styles/decorations.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/nav_bar.dart';
import 'budgets/budget_detail_screen.dart';
import 'budgets/budget_manager_create_screen.dart';
import 'budgets/budget_manager_initial_screen.dart';
import 'budgets/budget_screen.dart';
import 'dashboard/dashboard.dart';
import 'quickpay/cash_logic.dart';
import 'quickpay/quick_payment_view.dart';
import 'savings/create_savings_screen.dart';
import 'savings/savings_details_screen.dart';
import 'savings/savings_initial_screen.dart';
import 'savings/savings_screen.dart';
import 'trustedpay/VaultDoorScreen.dart';
import 'trustedpay/send_trusted_payment_screen.dart';
import 'trustedpay/trusted_payment_screen.dart';
import '../../core/translations/translations.i18n.dart';

class HomeScreenBody extends HookWidget {
  const HomeScreenBody();
  @override
  Widget build(BuildContext context) {
    debugPrint("debug: MainViews");
    final xOffset = useState(0.0);
    final yOffset = useState(0.0);
    final scaleFactor = useState(1.0);
    final drawerOpen = useState(false);
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: drawerOpen.value
          ? () {
              xOffset.value = 0;
              yOffset.value = 0;
              scaleFactor.value = 1;
              drawerOpen.value = false;
            }
          : null,
      child: AnimatedContainer(
        // height: size.height * 1,
        transform: Matrix4.translationValues(xOffset.value, yOffset.value, 0)
          ..scale(scaleFactor.value),
        decoration: MainViewsDecoration.homeBorderDec(size, drawerOpen),
        duration: const Duration(milliseconds: 250),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TfAppBar(
              leading: AnimatedSwitcher(
                duration: const Duration(milliseconds: 1000),
                transitionBuilder: (child, animation) =>
                    ScaleTransition(scale: animation, child: child),
                child: !drawerOpen.value
                    ? IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          xOffset.value = 230;
                          yOffset.value = 150;
                          scaleFactor.value = 0.6;
                          drawerOpen.value = true;
                        },
                      )
                    : IconButton(
                        icon: const Icon(TfIcons.arrow_back),
                        onPressed: () {
                          xOffset.value = 0;
                          yOffset.value = 0;
                          scaleFactor.value = 1;
                          drawerOpen.value = false;
                        },
                      ),
              ),
              description: const TitleBuilder(), 
              trailing: IconButton(
                icon: const Icon(TfIcons.notif),
                onPressed: ()=>  showNotif(context),
              ),
            ),
            BlocBuilder<MainViewsBloc, MainViewsState>(
              // buildWhen: (p, c) => p.,
              builder: (context, state) {
                return state.map(
                  homePage: (_) => const DashBoard(),
                  savingsPage: (_) => const SavingsScreen(),
                  // savingsInitPage: (_) => const SavingsInitialScreen(),
                  // createNewSavingsPage: (_) => const CreateSavingsScreen(),
                  savingsDetailPage: (state) => SavingsDetailScreen(
                    saving: state.savings,
                  ),
                  trustedPayUnlockPage: (_) => const TrustedPaymentScreen(),
                  trustedPayLockedPage: (_) => const VaultDoorScreen(),
                  // makeNewTrustedPaymentPage: (_) =>
                  //     const SendTrustedPaymentScreen(),
                  budgetPage: (_) => const BudgetManagerScreen(),
                  // createNewBudgetPage: (_) => const BudgetCreateScreen(),
                  // budgetInitPage: (_) => const BudgetManagerInitialScreen(),
                  // budgetAddPage: (_) => const BudgetManagerDetailScreen(),
                  budgetDetailPage: (state) => BudgetManagerDetailScreen(
                    budget: state.budget,
                  ),
                  // sendBudgetGiftPage: (_) => const BudgetCreateScreen(),
                  quickPaymentOverView: (_) => const QuickPaymentScreen(),
                  trustedPayDetail: (state) => TrustedPayDetailScreen(payment: state.payment),
                );
              },
            ),
            const NavBar(),
          ],
        ),
      ),
    );
  }
}

_showMenu(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          // height: size.height ,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              color: TfColors.background),
          child: Stack(
            alignment: Alignment(0, 0),
            overflow: Overflow.visible,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Notifications',
                    style: SettingsTextStlyles.tileHeader(size),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications_off_outlined,
                        size: size.width * 0.3),
                    Text('You have no notification at the moment.'.i18n,
                        style: SettingsTextStlyles.value(size))
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
