import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';

import '../../application/payment/trusted_pay_input_collector/trustedpayinputcollector_bloc.dart';
import '../../domain/core/valid_objects.dart';
import '../core/assets/images.dart';
import '../core/styles/decorations.dart';
import '../core/styles/text_styles.dart';
import '../core/translations/translations.i18n.dart';
import 'default_primary_money_input.dart';

class DepositWithMTNCard extends HookWidget {
  final VoidCallback onPressed;
  const DepositWithMTNCard({this.onPressed});
  @override
  Widget build(BuildContext context) {
    final MoneyMaskedTextController mtnMoneyController =
        MoneyMaskedTextController();

    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: DefaultDecoration.all,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Deposit using MTN mobile money".i18n,
                style: DepositScreenTextStyle.cardTitle(size),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Enter the amount to deposit".i18n),
          DefaultPrimaryMoneyInput(
            imagePath: TfImages.mtnmomo,
            onChanged: (value) {
              context.bloc<TrustedPayInputCollectorBloc>().add(
                  TrustedPayInputCollectorEvent.amountChanged(
                      amount: MoneyAmount(double.parse(value))));
            },
            onEditingComplete: () {
              FocusScope.of(context).unfocus();
            },
            // moneyMaskEditingController: mtnMoneyController,
          ),
          RaisedButton(
              onPressed: () => _confirmCreditTrustedPay(
                  context, context.bloc<TrustedPayInputCollectorBloc>(), size),
              child: Text("Deposit".i18n))
        ],
      ),
    );
  }
}

_confirmCreditTrustedPay(
    BuildContext context, TrustedPayInputCollectorBloc bloc, Size size) {
  // Navigator.of(context).pop();
  return Alert(
    // style: kConfirmAlertStyle(context),
    context: context,
    type: AlertType.none,
    title: "MoMo Cash Out!!".i18n,
    desc:
        "Confirm you want credit your TrustedPay account with a sum of XFA %s from your MOMO account with number %s! "
            .i18n
            .fill([
      context
          .bloc<TrustedPayInputCollectorBloc>()
          .state
          .payment
          .amount
          .getOrCrash(),
      bloc.state.payment.pPhoneNumber.getOrCrash()
    ]),
    buttons: [
      DialogButton(
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.red[400],

        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            "Cancel".i18n,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        // Color.fromRGBO(0, 179, 134, 1.0),
      ),
      DialogButton(
        width: 200,
        onPressed: () {
          BotToast.showCustomNotification(
              toastBuilder: (context) => Container(
                    decoration: BoxDecoration(
                      color: TfColors.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: size.height * 0.06,
                    child: Text(
                      'Please dial *126# to confirm the MOMO payment of XAF %s to credit your TrustedPay account!'
                          .i18n
                          .fill([bloc.state.payment.amount.getOrCrash()]),
                      style: TextStyle(
                          fontSize: size.width * 0.03,
                          color: TfColors.secondary),
                    ),
                  ),
              duration: const Duration(seconds: 7));
          bloc.add(const TrustedPayInputCollectorEvent.creditTrustedPay());

          Navigator.pop(context);
          Navigator.pop(context);
        },
        gradient: const LinearGradient(colors: [
          Color.fromRGBO(116, 116, 191, 1.0),
          Color.fromRGBO(52, 138, 199, 1.0)
        ]),
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            "Confirm".i18n,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      )
    ],
  ).show();
}
