import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../../application/budget/budget_input_collector/budgetinputcollector_bloc.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/default_primary_input_field.dart';

class BudgetUserNamePage extends HookWidget {
  final PageController controller;
  const BudgetUserNamePage({@required this.controller});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final userQuery = useState('');
    return Container(
      height: size.height,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        // alignment: Alignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
              // height: 3,
              ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: size.width * 0.7,
                child: Text(
                  "Enter the recipient's phone number or email".i18n,
                  textAlign: TextAlign.center,
                  style: SavingsScreenTextStyle.createDescription(size),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                  child: Column(
                      // height: 60,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    const Text(''),
                    Center(
                        child: DefaultPrimaryTextInputField(
                      description: 'recipient'.i18n,
                      // hintText: '',

                      hintText: 'Ex: user@gmail.com / +2367..',

                      onChanged: (value) {
                        userQuery.value = value;
                      },
                      onEditingComplete: () {
                        FocusScope.of(context).unfocus();
                        if (userQuery.value.length > 10) {
                          context.bloc<BudgetInputCollectorBloc>().add(
                              BudgetInputCollectorEvent.searchUser(
                                  userQuery: userQuery.value.trim()));
                        } else {
                          BotToast.showText(
                              text: 'recipient info incorrect'.i18n);
                        }
                      },
                    )),
                  ])),
              BlocBuilder<BudgetInputCollectorBloc,
                      BudgetInputCollectorState>(
                  buildWhen: (p, c) => p.userFound != c.userFound,
                  builder: (context, state) {
                    if (state.showErrorMessage || state.userFound) {
                     final  userName = state.budget.rDisplayName.isValid()
                          ? state.budget.rDisplayName.getOrCrash()
                          : "Recipient Not Found".i18n;
                      return Text(
                          state.userFound ? userName : "Recipient Not Found".i18n);
                    }
                    return const SizedBox();
                  }),
            ],
          ),
          const SizedBox(
            // height: 3,
            ),
        const SizedBox(
            // height: 3,
            ),
        const SizedBox(
            // height: 3,
            ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Button(
                        onPressed: () => _confirmBudgetGift(
                          context,
                          context.bloc<BudgetInputCollectorBloc>(),
                        ),
                        description: 'Sent a Budget manger'.i18n,
                        // toRight: false,
                        width: size.width * 0.75,
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

_confirmBudgetGift(BuildContext context, BudgetInputCollectorBloc bloc) {
  if (bloc.state.budget.failureOption.isSome()) {
    bloc.add(const BudgetInputCollectorEvent.submitted());
  } else {
    // String years = bloc.state.budget.unlockDate.getOrCrash().inDays > 365 ? '${(bloc.state.saving.timeLeft.getOrCrash().inDays ~/ 356).toString()} years' : "${bloc.state.saving.timeLeft.getOrCrash().inDays} days" ;
    return Alert(
      // style: kConfirmAlertStyle(context),
      context: context,
      type: AlertType.none,
      title: "Gift Budget Manager!!".i18n,
      desc: "Confirm you want to send a budget Manager gift of XFA %s to %s!"
          .i18n
          .fill([
        context
            .bloc<BudgetInputCollectorBloc>()
            .state
            .budget
            .totalAmount
            .getOrCrash(),
        bloc.state.budget.rDisplayName.getOrCrash()
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
            bloc.add(const BudgetInputCollectorEvent.submitted());
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
