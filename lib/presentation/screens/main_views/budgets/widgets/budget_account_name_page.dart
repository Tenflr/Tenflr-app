import 'package:flutter/material.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';
import 'package:tenflrpay/presentation/widgets/button.dart';
import 'package:tenflrpay/presentation/widgets/default_primary_input_field.dart';
import '../../../../core/translations/translations.i18n.dart';

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
                    description: 'Budget manager name'.i18n,
                    // hintText: '',
                    hintText: 'Ex: Allowance'.i18n,
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
                      controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
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
