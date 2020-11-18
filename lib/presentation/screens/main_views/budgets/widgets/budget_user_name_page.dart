import 'package:flutter/material.dart';
import 'package:tenflrpay/presentation/widgets/default_primary_input_field.dart';

import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/default_primary_money_input.dart';

class BudgetUserNamePage extends StatelessWidget {
  final PageController controller;
  const BudgetUserNamePage({@required this.controller});
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
                  "Enter the receiver's phone number or email".i18n
                      .i18n,
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
                    description: 'Receiver'.i18n,
                    // hintText: '',
                    
                    hintText: 'Ex: user@gmail.com / +2367..',
                  )),]
              )),
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
                        onPressed: () {
                          controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        description: 'Sent a Budget manger'.i18n,
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
