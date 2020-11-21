import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../application/budget/budget_input_collector/budgetinputcollector_bloc.dart';
import '../../../../application/main_views_bloc/main_views_bloc.dart';
import '../../../../domain/user/user.dart';
import '../../../../injection.dart';
import '../../../core/assets/colors.dart';
import '../../../core/icons/TfIcons_icons.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/app_bar.dart';
import 'widgets/budget_account_name_page.dart';
import 'widgets/budget_duration_page.dart';
import 'widgets/budget_frequency_page.dart';
import 'widgets/budget_manager_amount_page.dart';
import 'widgets/budget_user_name_page.dart';

class BudgetCreateScreen extends HookWidget {
  final bool isGift;
  final User user;
  const BudgetCreateScreen({this.isGift = true, @required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: BlocProvider(
        create: (context) => getIt<BudgetInputCollectorBloc>()
          ..add(BudgetInputCollectorEvent.initialized(user)),
        child: CreateBudgetManagerForm(
          isGift: isGift,
        ),
      ),
    );
  }
}

class CreateBudgetManagerForm extends StatelessWidget {
  final bool isGift;
  const CreateBudgetManagerForm({@required this.isGift});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = PageController(viewportFraction: 0.88);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Directionality(
        textDirection: TextDirection.ltr,
        child:
            BlocConsumer<BudgetInputCollectorBloc, BudgetInputCollectorState>(
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                        (failure) => FlushbarHelper.createError(
                            title: "An Error occured".i18n,
                            duration: const Duration(seconds: 5),
                            message: failure.maybeMap(
                              orElse: () => null,
                              userNotFound: (_) => 'Receiver not found'.i18n,
                              unexpected: (_) =>
                                  "An unexpected error occurred".i18n,
                              insufficientPermissions: (_) =>
                                  "Insufficient Permission. Contact support!"
                                      .i18n,
                              unableToCashUnlock: (_) =>
                                  "Unable to cashed unlock amount!".i18n,
                              unableToCreateBudget: (_) =>
                                  "Unable to create budget Manager".i18n,
                              unableToSendBudget: (_) =>
                                  "Unable to send budget manager gift".i18n,
                              insufficientFundsInTrustedFunds: (_) =>
                                  "Insufficient Funds in TrustedPay wallet!"
                                      .i18n,
                              paymentWithMomoFailed: (_) =>
                                  "Payment with MOMO account failed! Please try again!"
                                      .i18n,
                              invalidDailyPayRate: (_) =>
                                  "The daily Payout rate is very small. It should be at least XFA 200/day 🤑"
                                      .i18n,
                              invalidMonthlyPayRate: (_) =>
                                  "The daily Payout rate is very small. It should be at least XFA 1,000/day 🤑"
                                      .i18n,
                              invalidWeeklyPayRate: (_) =>
                                  "The daily Payout rate is very small.It should be at least XFA 5,000/day 🤑"
                                      .i18n,
                              invalidYearlyPayRate: (_) =>
                                  "The daily Payout rate is very small. It should be at least XFA 50,000/day 🤑"
                                      .i18n,
                              unexpectedFieldInBudget: (_) =>
                                  " 😨 There's in an invalid field in your Budget manager. Please contact support"
                                      .i18n,
                              invalidNoDaysForDailyPayRate: (_) =>
                                  "For a daily Payout, Budget Duration should be greater than 2 days"
                                      .i18n,
                              invalidNoDaysForMonthlyPayRate: (_) =>
                                  "For a month Payout, Budget Duration should be greater than a month"
                                      .i18n,
                              invalidNoDaysForWeeklyPayRate: (_) =>
                                  "For a weekly Payout, Budget Duration should be greater than a week"
                                      .i18n,
                              invalidNoDaysForYearlyPayRate: (_) =>
                                  "For a yearly Payout,Budget Duration should be greater than a year"
                                      .i18n,
                              timeOutOfSync: (_) =>
                                  "The operation was cancelled because your local time is out-of-sync with the server time"
                                      .i18n,
                            )).show(context), (r) {
                      Navigator.of(context).pop();
                      Future.delayed(const Duration(microseconds: 2), () {
                        FlushbarHelper.createSuccess(
                                duration: const Duration(seconds: 2),
                                message:
                                    "You have successfully created a new budget Manager Account 😃"
                                        .i18n)
                            .show(context);
                      });

                      // context
                      // .bloc<MainViewsBloc>()
                      // .add(const MainViewsEvent.budgetPage()),
                    }));
            if (state.isSaving) {
              FlushbarHelper.createLoading(
                      duration: const Duration(seconds: 4),
                      linearProgressIndicator: const LinearProgressIndicator(),
                      message: "Creating a new Budget Manager".i18n)
                  .show(context);
            }
            if (!state.budget.accountName.isValid() && state.showErrorMessage) {
              FlushbarHelper.createError(message: "Invalid Account name".i18n)
                  .show(context);
            }
            if (!state.budget.unlockDate.isValid() && state.showErrorMessage) {
              FlushbarHelper.createError(
                      message: "Invalid Withdrawal Date".i18n)
                  .show(context);
            }
          },
          buildWhen: (p, c) => p.isSaving != c.isSaving,
          builder: (context, state) => Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // const DefaultPrimaryMoneyInput(imagePath: null),
              TfAppBar(
                  leading: IconButton(
                    icon: const Icon(TfIcons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  description: Text(
                      isGift
                          ? 'Send Budget Manager'.i18n
                          : 'New Budget Manager'.i18n,
                      style:
                          SavingsScreenTextStyle.addSavingsDescription(size)),
                  trailing: const Opacity(
                      opacity: 0,
                      child: IconButton(
                        icon: Icon(TfIcons.arrow_back),
                        onPressed: null,
                      ))),
              Container(
                height: size.height * 0.8,
                width: size.width,
                child: PageView(controller: controller, children: [
                  BudgetManagerAccountNamePage(controller: controller),
                  BudgetManagerAmountPage(controller: controller),
                  BudgetDurationPage(controller: controller),
                  BudgetFrequencyPage(controller: controller, isGift: isGift),
                  if (isGift) BudgetUserNamePage(controller: controller),
                  //  SavingsAmountPage(controller: controller),
                  //  SavingsDatePickerPage(controller: controller),
                ]),
              ),
              Container(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: isGift ? 5 : 4,
                  effect: const WormEffect(
                      activeDotColor: TfColors.primary, dotHeight: 5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
