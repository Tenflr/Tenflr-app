import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../application/saving/savings_input_collector/savingsinputcollector_bloc.dart';
import '../../../../injection.dart';
import '../../../core/assets/colors.dart';
import '../../../core/icons/TfIcons_icons.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/progess_overlay_screen.dart';
import 'widgets/savings_account_name_page.dart';
import 'widgets/savings_date_picker_page.dart';
import 'widgets/savings_initial_amount_page.dart';

class CreateSavingsScreen extends HookWidget {
  const CreateSavingsScreen();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SavingsInputCollectorBloc>(),
      child: Scaffold(
          resizeToAvoidBottomPadding: false, body: CreateSavingsForm()),
    );
  }
}

class CreateSavingsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = PageController(viewportFraction: 0.88);

    return Stack(
      children: [
        Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TfAppBar(
                  leading: IconButton(
                    icon: const Icon(TfIcons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  description: Text('Create a Savings'.i18n,
                      style:
                          SavingsScreenTextStyle.addSavingsDescription(size)),
                  trailing: const Opacity(
                      opacity: 0,
                      child: IconButton(
                        icon: Icon(TfIcons.arrow_back),
                        onPressed: null,
                      ))),
              BlocConsumer<SavingsInputCollectorBloc,
                      SavingsInputCollectorState>(
                  listener: (context, state) {
                    state.saveFailureOrSuccessOption.fold(
                      () {},
                      (either) => either.fold(
                        (failure) => FlushbarHelper.createError(
                            title: "An Error occured".i18n,
                            duration: const Duration(seconds: 5),
                            message: failure.maybeMap(
                              orElse: () => null,
                              unexpected: (_) =>
                                  "An unexpected error occurred".i18n,
                              insufficientPermissions: (_) =>
                                  "Insufficient Permission. Contact support!"
                                      .i18n,
                              unableToCreate: (_) =>
                                  "Unable to create saving!".i18n,
                              unableToUpdate: (_) =>
                                  "Unable to update saving!".i18n,
                              insufficientFundsInTrustedFunds: (_) =>
                                  "Insufficient Funds in TrustedPay wallet!"
                                      .i18n,
                              paymentWithMomoFailed: (_) =>
                                  "Payment with MOMO account failed! Please try again!"
                                      .i18n,
                              timeOutOfSync: (_) =>
                                  "The operation was cancelled because your local time is out-of-sync with the server time"
                                      .i18n,
                            )).show(context),
                        (r) {
                          Navigator.of(context).pop();
                          Future.delayed(const Duration(microseconds: 2), () {
                            FlushbarHelper.createSuccess(
                                duration: const Duration(seconds: 2),
                                message:
                                    "You have successfully created a Savings Account 😃"
                                        .i18n)
                              ..show(context);
                          });
                        },
                      ),
                    );
                    if (state.isSaving) {
                      FlushbarHelper.createLoading(
                              // duration: const Duration(seconds: 5),
                              message: 'Creating a new savings account...'.i18n,
                              linearProgressIndicator:
                                  const LinearProgressIndicator())
                          .show(context);
                    }
                    if (!state.saving.savingsName.isValid() &&
                        state.showErrorMessage) {
                      FlushbarHelper.createError(
                              message: "Invalid Account name".i18n)
                          .show(context);
                    }
                    if (!state.saving.withdrawalDate.isValid() &&
                        state.showErrorMessage) {
                      FlushbarHelper.createError(
                              message: "Invalid Withdrawal Date".i18n)
                          .show(context);
                    }
                    if (state.saving.timeLeft.getOrCrash().inDays == 0 &&
                        state.showErrorMessage) {
                      FlushbarHelper.createError(
                              message: "Invalid Savings Duration".i18n)
                          .show(context);
                    }
                  },
                  buildWhen: (p, c) => p.isSaving != c.isSaving,
                  builder: (context, state) => Container(
                        height: size.height * 0.8,
                        width: size.width,
                        child: PageView(controller: controller, children: [
                          SavingsAccountNamePage(controller: controller),
                          SavingsAmountPage(controller: controller),
                          SavingsDatePickerPage(controller: controller),
                        ]),
                      )),
              Container(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const WormEffect(
                      activeDotColor: TfColors.primary, dotHeight: 5),
                ),
              ),
            ],
          ),
        ),
        BlocBuilder<SavingsInputCollectorBloc, SavingsInputCollectorState>(
          buildWhen: (p, c) => p.isSaving != c.isSaving,
          builder: (context, state) {
            return ProgressOverlayIndicator(
              isSaving: state.isSaving,
            );
          },
        ),
      ],
    );
  }
}
