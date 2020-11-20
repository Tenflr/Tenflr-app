import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tenflrpay/application/budget/budget_list_bloc/budgetlist_bloc.dart';
import 'package:tenflrpay/application/payment/transaction_list_bloc/transaction_list_bloc.dart';
import 'package:tenflrpay/application/quick_payment/quick_payment_bloc/quick_payment_bloc.dart';
import 'package:tenflrpay/application/quick_payment/quick_payment_watcher_bloc/quick_payment_watcher_bloc.dart';
import 'package:tenflrpay/application/saving/savings_list_bloc/savingslist_bloc.dart';
import 'package:tenflrpay/domain/budget/budgets.dart';
import 'package:tenflrpay/domain/payment/payment.dart';
import 'package:tenflrpay/domain/saving/savings.dart';
import 'package:tenflrpay/presentation/screens/main_views/quickpay/widgets/quick_pay_tile.dart';

import '../../../../injection.dart';
import '../../../core/assets/colors.dart';
import '../../../widgets/transaction_list.dart';
import '../budgets/widgets/budget_tile.dart';
import '../savings/widgets/savingsTile.dart';
import '../trustedpay/widgets/trusted_payment_tile.dart';

class AccountDetailPreviewScreen extends HookWidget {
  final ValueNotifier<bool> hasAccounts;
  const AccountDetailPreviewScreen(this.hasAccounts);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<BudgetListBloc>()..add(const BudgetListEvent.watchAll())),
        BlocProvider(
            create: (context) => getIt<TransactionListBloc>()
              ..add(const TransactionListEvent.watchAll())),
        BlocProvider(
            create: (context) => getIt<QuickPaymentWatcherBloc>()
              ..add(const QuickPaymentWatcherEvent.watchAll())),
        BlocProvider(
            create: (context) => getIt<SavingsListBloc>()
              ..add(const SavingsListEvent.watchAll())),
      ],
      child: AccountDetailPreviewForm(hasAccounts),
    );
  }
}

class AccountDetailPreviewForm extends HookWidget {
  final ValueNotifier<bool> hasAccount;

  const AccountDetailPreviewForm(this.hasAccount);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = PageController(viewportFraction: 0.99);

    final hasSavings = useState(false);
    final hasBudget = useState(false);
    final hasPayment = useState(false);
    final hasQuickPay = useState(false);

    return MultiBlocListener(
      listeners: [
        BlocListener<BudgetListBloc, BudgetListState>(
            listener: (context, state) {

              
            }),
        BlocListener<TransactionListBloc, TransactionListState>(
            listener: (context, state) {}),
        BlocListener<QuickPaymentWatcherBloc, QuickPaymentWatcherState>(
            listener: (context, state) {}),
        BlocListener<SavingsListBloc, SavingsListState>(
            listener: (context, state) {}),
      ],
      child: Container(
        child: _getCount(hasSavings, hasBudget, hasPayment, hasQuickPay,
                    hasAccount) >
                0
            ? Directionality(
                textDirection: TextDirection.ltr,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // const DefaultPrimaryMoneyInput(imagePath: null),
                    Expanded(
                      // height: size.height * 0.2,
                      // width: size.width,
                      child: PageView(controller: controller, children: [
                        if (hasBudget.value)
                          TransactionsList(
                              title: 'Budget Managers',
                              transactionTile: BudgetTile(
                                budget: Budget.empty(),
                              )),
                        if (hasSavings.value)
                          TransactionsList(
                              title: 'Savings',
                              transactionTile: SavingsTile(
                                savings: Savings.empty(),
                              )),
                        if (hasPayment.value)
                          TransactionsList(
                              title: 'Trusted Payments',
                              transactionTile: TrustedPaymentTile(
                                payment: Payment.empty(),
                              )),
                        if (hasQuickPay.value)
                          const TransactionsList(
                              title: 'Quick Payments',
                              transactionTile: QuickPayTile()),
                      ]),
                    ),
                    Container(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: _getCount(hasSavings, hasBudget, hasPayment,
                            hasQuickPay, hasAccount),
                        effect: const WormEffect(
                            activeDotColor: TfColors.primary, dotHeight: 3),
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(),
      ),
    );
  }

  int _getCount(
      ValueNotifier<bool> savings,
      ValueNotifier<bool> budgets,
      ValueNotifier<bool> payment,
      ValueNotifier<bool> quickPay,
      ValueNotifier<bool> hasAccount) {
    int number = 0;

    if (savings.value) {
      number += 1;
      hasAccount.value = true;
    }
    if (budgets.value) {
      number += 1;
      hasAccount.value = true;
    }
    if (payment.value) {
      number += 1;
      hasAccount.value = true;
    }
    if (quickPay.value) {
      number += 1;
      hasAccount.value = true;
    }

    if (number == 0) {
      hasAccount.value = false;
    }
    return number;
  }
}
