import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../application/payment/trusted_pay_input_collector/trustedpayinputcollector_bloc.dart';
import '../../../../domain/user/user.dart';
import '../../../../injection.dart';
import '../../../core/assets/colors.dart';
import '../../../core/icons/TfIcons_icons.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/app_bar.dart';
import 'widgets/tp_manager_amount_page.dart';
import 'widgets/tp_unlock_date_page.dart';
import 'widgets/tp_user_name_page.dart';

class SendTrustedPaymentScreen extends StatelessWidget {
  final User user;
  const SendTrustedPaymentScreen({@required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: BlocProvider<TrustedPayInputCollectorBloc>(
        create: (context) => getIt<TrustedPayInputCollectorBloc>()
          ..add(TrustedPayInputCollectorEvent.initialized(user)),
        child: const SendTrustedPaymentForm(),
      ),
    );
  }
}

class SendTrustedPaymentForm extends HookWidget {
  const SendTrustedPaymentForm();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = PageController(viewportFraction: 0.88);

    return Directionality(
      textDirection: TextDirection.ltr,
      child: BlocListener<TrustedPayInputCollectorBloc,
          TrustedPayInputCollectorState>(
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                      (failure) => FlushbarHelper.createError(
                            message: failure.maybeMap(
                              orElse: () => null,
                              userNotFound: (_) => "Recipient not found".i18n,
                              unexpected: (_) =>
                                  "An unexpected error occurred!".i18n,
                              insufficientPermissions: (_) =>
                                  "Insufficient permission to perform action!"
                                      .i18n,
                              unableToSendPayment: (_) =>
                                  "Payment could not be sent!".i18n,
                              unableToUnlockSentPayment: (_) =>
                                  "Payment could not be unlocked".i18n,
                              unableToDeleteReceivedPayment: (_) =>
                                  "Unable to delete payment".i18n,
                              userWithIdNotFound: (_) =>
                                  "The user with specified ID not found!".i18n,
                              insufficientFundsInTrustedFunds: (_) =>
                                  "Insufficient Funds in TrustedPay wallet!"
                                      .i18n,
                              withdrawalIntoMOMOFailed: (_) =>
                                  "Withdrawal into MOMO failed".i18n,
                              creditingWithMomoFailed: (_) =>
                                  "Payment with MOMO account failed! Please try again!"
                                      .i18n,
                              timeOutOfSync: (_) =>
                                  "The operation was cancelled because your local time is out-of-sync with the server time"
                                      .i18n,
                            ),
                          )..show(context), (r) {
                    Navigator.of(context).pop();
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.of(context).pop();
                       FlushbarHelper.createInformation(
                        title: "Payment successful".i18n,
                        // duration: const Duration(seconds: 4),
                        message: "A payment of %s was successfully sent to %s"
                            .i18n
                            .fill([
                          state.payment.amount.getOrCrash(),
                          state.payment.rDisplayName.getOrCrash()
                        ])).show(context);
                    });
                  }));
          if (!state.payment.unlockDate.isValid() && state.showErrorMessage) {
            FlushbarHelper.createError(
                    message: "Invalid unlock date. It shouldn't be in the pass."
                        .i18n)
                .show(context);
          }
          if (!state.payment.rPhoneNumber.isValid() && state.showErrorMessage) {
            FlushbarHelper.createError(
                    message: "Choice a valid receiver of the payment.".i18n)
                .show(context);
          }
          if (state.isSaving) {
            FlushbarHelper.createLoading(
                    message: 'Sending payment...'.i18n,
                       duration: const Duration(seconds: 9),
                    linearProgressIndicator: const LinearProgressIndicator())
                .show(context);
          }
        },
        child: Column(
          children: [
            TfAppBar(
                leading: IconButton(
                  icon: const Icon(TfIcons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                description: Text("Send Trusted Payment".i18n,
                    style: SavingsScreenTextStyle.addSavingsDescription(size)),
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
                  TpUserNamePage(controller: controller),
                  TpAmountPage(controller: controller),
                  TpUnlockDatePage(controller: controller),
                ])),
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
    );
  }
}
