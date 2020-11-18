import 'package:flutter/material.dart';

import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/cupertino_duration_picker.dart';

class BudgetDurationPage extends StatelessWidget {
  final PageController controller;
  const BudgetDurationPage({@required this.controller});
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
                  'For how long should this budget be manage?'.i18n,
                  textAlign: TextAlign.center,
                  style: SavingsScreenTextStyle.createDescription(size),
                ),
              ),
              const SizedBox(height: 30),
              const CupertinoDurationPicker(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
