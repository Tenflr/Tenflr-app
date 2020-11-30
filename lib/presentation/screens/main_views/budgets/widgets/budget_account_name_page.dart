import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/budget/budget_input_collector/budgetinputcollector_bloc.dart';
import '../../../../../domain/core/valid_objects.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/default_primary_input_field.dart';

class BudgetManagerAccountNamePage extends StatelessWidget {
  final PageController controller;
  const BudgetManagerAccountNamePage({@required this.controller});
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
                  'What do you want to name this Budget Manager?'.i18n,
                  textAlign: TextAlign.center,
                  style: SavingsScreenTextStyle.createDescription(size),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                  child: DefaultPrimaryTextInputField(
                maxLength: 20,
                description: 'Budget manager name'.i18n,
                // hintText: '',
                initialValue: context
                        .bloc<BudgetInputCollectorBloc>()
                        .state
                        .budget
                        .accountName
                        .isValid()
                    ? context
                        .bloc<BudgetInputCollectorBloc>()
                        .state
                        .budget
                        .accountName
                        .getOrCrash()
                    : "",

                hintText: 'Ex: Allowance'.i18n,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    context.bloc<BudgetInputCollectorBloc>().add(
                        BudgetInputCollectorEvent.managerAccountNameChanged(
                            accountName: AccountName(value)));
                  }
                },
                onEditingComplete: () {
                  // node.nextFocus();
                  FocusScope.of(context).unfocus();

                  controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
              )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
          ),
        ],
      ),
    );
  }
}
