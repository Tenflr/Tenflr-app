import 'package:flutter/material.dart';
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
                          onPressed: () {
                            controller.previousPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
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
