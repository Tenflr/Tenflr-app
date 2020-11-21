import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../application/budget/budget_list_bloc/budgetlist_bloc.dart';
import '../../../../application/payment/transaction_list_bloc/transaction_list_bloc.dart';
import '../../../../application/quick_payment/quick_payment_watcher_bloc/quick_payment_watcher_bloc.dart';
import '../../../../application/saving/savings_list_bloc/savingslist_bloc.dart';
import '../../../../injection.dart';
import '../../../core/assets/colors.dart';
import '../../../widgets/transaction_list.dart';
import 'widgets/mini_budget_list.dart';
import 'widgets/mini_payment_list.dart';
import 'widgets/mini_quickpay_list.dart';
import 'widgets/mini_savings_list.dart';

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
    // final bool _hasAcc = Provider.of<bool>(context, listen: true);
    final controller = PageController(viewportFraction: 0.99);

    final hasSavings = useState(false);
    final hasBudget = useState(false);
    final hasPayment = useState(false);
    final hasQuickPay = useState(false);
    final index = useState(0);
    //

    return MultiBlocListener(
      listeners: [
        BlocListener<BudgetListBloc, BudgetListState>(
            listener: (context, state) {
          state.maybeWhen(
              orElse: () => null,
              listLoaded: (e) {
                e.size > 0 ? hasBudget.value = true : hasBudget.value = false;
                index.value = _getCount(
                    hasSavings, hasBudget, hasPayment, hasQuickPay, hasAccount);
              });
        }),
        BlocListener<TransactionListBloc, TransactionListState>(
            listener: (context, state) {
          state.maybeWhen(
              orElse: () => null,
              loadComplete: (e) {
                e.size > 0 ? hasPayment.value = true : hasPayment.value = false;
                index.value = _getCount(
                    hasSavings, hasBudget, hasPayment, hasQuickPay, hasAccount);
              });
        }),
        BlocListener<QuickPaymentWatcherBloc, QuickPaymentWatcherState>(
            listener: (context, state) {
          state.maybeWhen(
              orElse: () => null,
              loadSuccess: (e) {
                e.size > 0
                    ? hasQuickPay.value = true
                    : hasQuickPay.value = false;
                index.value = _getCount(
                    hasSavings, hasBudget, hasPayment, hasQuickPay, hasAccount);
              });
        }),
        BlocListener<SavingsListBloc, SavingsListState>(
            listener: (context, state) {
          state.maybeWhen(
              orElse: () => null,
              loadComplete: (e) {
                e.size > 0 ? hasSavings.value = true : hasSavings.value = false;
                index.value = _getCount(
                    hasSavings, hasBudget, hasPayment, hasQuickPay, hasAccount);
              });
        }),
      ],
      child: Container(
        child: index.value > 0
            ? Directionality(
                textDirection: TextDirection.ltr,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: PageView(controller: controller, children: [
                        // if (hasBudget.value)
                        BlocBuilder<BudgetListBloc, BudgetListState>(
                            builder: (context, state) {
                          return state.maybeMap(
                            orElse: () => null,
                            initial: (e) => const Center(
                                child: CircularProgressIndicator()),
                            loading: (e) => const Center(
                                child: CircularProgressIndicator()),
                            listLoaded: (e) {
                              if (e.budgets.size > 0) {
                                return TransactionsList(
                                    title: 'Budget Managers',
                                    transactionList: MiniBudgetList(
                                      budgets: e.budgets,
                                    ));
                              } else {
                                return const SizedBox();
                              }
                            },
                          );
                        }),
                        // if (hasSavings.value)
                        BlocBuilder<SavingsListBloc, SavingsListState>(
                            builder: (context, state) {
                          return state.maybeMap(
                            orElse: () => null,
                            initial: (e) => const Center(
                                child: CircularProgressIndicator()),
                            loading: (e) => const Center(
                                child: CircularProgressIndicator()),
                            loadComplete: (e) {
                              if (e.savings.size > 0) {
                                return TransactionsList(
                                    title: 'Savings',
                                    transactionList: MiniSavingsList(
                                      savings: e.savings,
                                    ));
                              } else {
                                return const SizedBox();
                              }
                            },
                          );
                        }),
                        // if (hasPayment.value)
                        BlocBuilder<TransactionListBloc, TransactionListState>(
                            builder: (context, state) {
                          return state.maybeMap(
                              orElse: () => null,
                              initial: (e) => const Center(
                                  child: CircularProgressIndicator()),
                              loading: (e) => const Center(
                                  child: CircularProgressIndicator()),
                              loadComplete: (e) {
                                if (e.payments.size > 0) {
                                  return TransactionsList(
                                      title: 'Trusted Payments',
                                      transactionList: MiniPaymentsList(
                                        payments: e.payments,
                                      ));
                                } else {
                                  return const SizedBox();
                                }
                              });
                        }),
                        // if (hasQuickPay.value)
                        BlocBuilder<QuickPaymentWatcherBloc,
                                QuickPaymentWatcherState>(
                            builder: (context, state) {
                          return state.maybeMap(
                              orElse: () => null,
                              initial: (e) => const Center(
                                  child: CircularProgressIndicator()),
                              loadInProgress: (e) => const Center(
                                  child: CircularProgressIndicator()),
                              loadSuccess: (e) {
                                if (e.quickPayment.size > 0) {
                                  return TransactionsList(
                                      title: 'Quick Payments',
                                      transactionList: MiniQuickpayList(
                                        quickpays: e.quickPayment,
                                      ));
                                } else {
                                  return const SizedBox();
                                }
                              });
                        }),
                      ]),
                    ),
                    Container(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: index.value,
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
    ValueNotifier<bool> hasAccount,
  ) {
    int number = 0;
    bool _hasAccount = false;

    if (savings.value) {
      number += 1;

      _hasAccount = true;
    }
    if (budgets.value) {
      number += 1;

      _hasAccount = true;
    }
    if (payment.value) {
      number += 1;

      _hasAccount = true;
    }
    if (quickPay.value) {
      number += 1;

      _hasAccount = true;
    }

    if (number == 0) {
      _hasAccount = false;
    }

    Future.delayed(const Duration(seconds: 2), () {
      if (_hasAccount != hasAccount.value) {
        hasAccount.value = _hasAccount;
      }
    });
    return number;
  }
}
