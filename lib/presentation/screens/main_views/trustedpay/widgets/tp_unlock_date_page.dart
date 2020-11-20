import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:tenflrpay/application/budget/budget_input_collector/budgetinputcollector_bloc.dart';
import 'package:tenflrpay/application/payment/trusted_pay_input_collector/trustedpayinputcollector_bloc.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/presentation/widgets/cupertino_frequency_picker.dart';

import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/cupertino_duration_picker.dart';

class TpUnlockDatePage extends StatelessWidget {
  final PageController controller;
  const TpUnlockDatePage({
    @required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      // height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        // alignment: Alignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
              // height: 3,
              ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.7,
                child: Text(
                  'When do you want the funds to the unlocked?'.i18n,
                  textAlign: TextAlign.center,
                  style: SavingsScreenTextStyle.createDescription(size),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: size.height * 0.3,
                child: CupertinoDatePicker(
                  minimumDate: DateTime.now(),
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (DateTime date) {
                  context.bloc<TrustedPayInputCollectorBloc>().add(
                      TrustedPayInputCollectorEvent.unlockDateChanged(
                          unlockDate: ValidDate(date)));
                }),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Button(
                        onPressed: () => _confirmPayment(context,
                            context.bloc<TrustedPayInputCollectorBloc>()),
                        description: 'Send Payment'.i18n,
                        // toRight: false,
                        width: size.width * 0.7,
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

_confirmPayment(BuildContext context, TrustedPayInputCollectorBloc bloc) {
  if (bloc.state.payment.failureOption.isSome()) {
    bloc.add(const TrustedPayInputCollectorEvent.submitted());
  } else {
    return Alert(
      // style: kConfirmAlertStyle(context),
      context: context,
      type: AlertType.none,
      title: "Confirm Payment!!".i18n,
      desc:
          "Confirm you want to make a payment of XFA %s to %s with phone number %s !"
              .i18n
              .fill([
        context
            .bloc<TrustedPayInputCollectorBloc>()
            .state
            .payment
            .amount
            .getOrCrash(),
        bloc.state.payment.rDisplayName.getOrCrash(),
        bloc.state.payment.rPhoneNumber.getOrCrash()
      ]),
      buttons: [
        DialogButton(
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                "Cancel".i18n,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            color: Colors.red[400]

            // Color.fromRGBO(0, 179, 134, 1.0),
            ),
        DialogButton(
          width: 200,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              "Confirm".i18n,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          onPressed: () {
            bloc.add(const TrustedPayInputCollectorEvent.submitted());
            Navigator.of(context, rootNavigator: true).pop();
          },
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),
        )
      ],
    ).show();
  }
}
