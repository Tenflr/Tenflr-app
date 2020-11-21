import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../../application/saving/savings_input_collector/savingsinputcollector_bloc.dart';
import '../../../../../domain/core/valid_objects.dart';
import '../../../../core/assets/colors.dart';
import '../../../../core/styles/decorations.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';

class SavingsDatePickerPage extends StatelessWidget {
  final PageController controller;
  const SavingsDatePickerPage({@required this.controller});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final DateTime date = DateTime(DateTime.now().year + 3);
    context.bloc<SavingsInputCollectorBloc>().add(
        SavingsInputCollectorEvent.withdrawalDataChanged(
            date: ValidDate(date)));
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
                  'When do you want the account to be unlocked?'.i18n,
                  textAlign: TextAlign.center,
                  style: SavingsScreenTextStyle.createDescription(size),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: DefaultDecoration.all,
                width: size.width * 0.8,
                height: size.height * 0.15,
                child: CupertinoDatePicker(
                  initialDateTime: date,
                  mode: CupertinoDatePickerMode.date,
                  minimumDate: DateTime.now(),
                  onDateTimeChanged: (DateTime time) {
                    context.bloc<SavingsInputCollectorBloc>().add(
                        SavingsInputCollectorEvent.withdrawalDataChanged(
                            date: ValidDate(time)));
                  },
                  backgroundColor: TfColors.secondary,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Button(
                onPressed: () => _confirmSaving(
                  context,
                  context.bloc<SavingsInputCollectorBloc>(),
                ),
                description: 'Create Savings'.i18n,
                // toRight: true,
                width: size.width * 0.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

_confirmSaving(BuildContext context, SavingsInputCollectorBloc bloc) {
  if (bloc.state.saving.failureOption.isSome()) {
    bloc.add(const SavingsInputCollectorEvent.submitted());
  } else {
    String years = bloc.state.saving.timeLeft.getOrCrash().inDays > 365
        ? '%s years'.i18n.fill([
            (bloc.state.saving.timeLeft.getOrCrash().inDays ~/ 356).toString()
          ])
        : "%s days".i18n.fill([bloc.state.saving.timeLeft.getOrCrash().inDays]);
    return Alert(
      // style: kConfirmAlertStyle(context),
      context: context,
      type: AlertType.none,
      title: "Create Savings".i18n,
      desc:
          "Confirm you want to create a savings account that will be unlocked in %s!"
              .i18n
              .fill([years]),
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
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          onPressed: () {
            bloc.add(const SavingsInputCollectorEvent.submitted());
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
