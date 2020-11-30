import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:tenflrpay/presentation/core/money_controller/m_controller.dart';

import '../../application/payment/trusted_pay_input_collector/trustedpayinputcollector_bloc.dart';
import '../../domain/core/settings.dart';
import '../../domain/core/valid_objects.dart';
import '../../injection.dart';
import '../core/assets/svg.dart';
import '../core/styles/decorations.dart';
import '../core/styles/text_styles.dart';
import '../core/translations/translations.i18n.dart';
import 'default_primary_money_input.dart';

class WithdrawWithMTNCard extends HookWidget {
  const WithdrawWithMTNCard();
  @override
  Widget build(BuildContext context) {
    final MySettings _settings = getIt<MySettings>();
    final _amount = useState(MoneyAmount(0.0));
    context.bloc<TrustedPayInputCollectorBloc>().add(
        TrustedPayInputCollectorEvent.amountChanged(amount: _amount.value));

    // final MoneyMaskedTextController moneyController =
    //     getIt<MoneyController>().controller;

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
                "Withdraw using MTN mobile money".i18n,
                style: DepositScreenTextStyle.cardTitle(size),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Enter the amount to withdraw".i18n),
          DefaultPrimaryMoneyInput(
            svgPath: TfSvg.mtnmomo,
            // moneyMaskEditingController: moneyController,
            initialValue: _amount.value.getOrCrash().toString(),
            onChanged: (value) {
              _amount.value = double.parse(value.replaceAll(',','')) > 0 &&
                      _settings.getTenflrBalance >= double.parse(value.replaceAll(',',''))
                  ? MoneyAmount(double.parse(value.replaceAll(',','')))
                  : MoneyAmount(0.0);
              context.bloc<TrustedPayInputCollectorBloc>().add(
                  TrustedPayInputCollectorEvent.amountChanged(
                      amount: _amount.value));
            },
            onEditingComplete: () {
              FocusScope.of(context).unfocus();
            },
          ),
          RaisedButton(
              onPressed: _amount.value.getOrCrash() >= 200
                  ? () => _confirmCreditTrustedPay(context,
                      context.bloc<TrustedPayInputCollectorBloc>(), size)
                  : () => BotToast.showText(
                          text:
                              "Invalid amount!!, Enter an amount between %s XAF to %s XAF"
                                  .i18n
                                  .fill([
                        '200',
                        _settings.getTenflrBalance.toString(),
                      ])),
              child: Text("Withdraw".i18n))
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
    title: "Withdraw".i18n,
    desc:
        "Confirm you want to withdraw a sum of XFA %s from your Tenflr account to your MOMO account with number %s!"
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
          bloc.add(
              const TrustedPayInputCollectorEvent.withdrawTenflrPayToMTN());

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
