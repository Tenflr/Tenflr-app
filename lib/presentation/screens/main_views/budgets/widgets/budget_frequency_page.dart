import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:tenflrpay/application/budget/budget_input_collector/budgetinputcollector_bloc.dart';
import 'package:tenflrpay/presentation/widgets/cupertino_frequency_picker.dart';

import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/cupertino_duration_picker.dart';

class BudgetFrequencyPage extends StatelessWidget {
  final PageController controller;
  final bool isGift;
  const BudgetFrequencyPage({@required this.controller, @required this.isGift});
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
                  'How do you want to be paid? Daily, weekly, etc'.i18n,
                  textAlign: TextAlign.center,
                  style: SavingsScreenTextStyle.createDescription(size),
                ),
              ),
              const SizedBox(height: 30),
              const CupertinoFrequencyPicker(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (isGift)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Button(
                          onPressed: () {
                            controller.previousPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          description: 'Back'.i18n,
                          toRight: false,
                          // width: size.width * 0.4,
                        )),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Button(
                          onPressed: () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          description: 'Next'.i18n,
                          toRight: true,
                          // width: size.width * 0.4,
                        )),
                  ],
                )
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Button(
                          onPressed: () => _confirmBudgetCreation(context,
                              context.bloc<BudgetInputCollectorBloc>()),
                          description: 'Create Budget manger'.i18n,
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

_confirmBudgetCreation(BuildContext context, BudgetInputCollectorBloc bloc) {
  if (bloc.state.budget.failureOption.isSome()) {
    bloc.add(const BudgetInputCollectorEvent.submitted());
  } else {
    // String years = bloc.state.budget.unlockDate.getOrCrash().inDays > 365 ? '${(bloc.state.saving.timeLeft.getOrCrash().inDays ~/ 356).toString()} years' : "${bloc.state.saving.timeLeft.getOrCrash().inDays} days" ;
    return Alert(
      // style: kConfirmAlertStyle(context),
      context: context,
      type: AlertType.none,
      title: "Create Budget Manager!!".i18n,
      desc: "Confirm you want to create a personal budget Manager".i18n,
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
          onPressed: () {
            bloc.add(const BudgetInputCollectorEvent.submitted());
            Navigator.of(context, rootNavigator: true).pop();
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
}
