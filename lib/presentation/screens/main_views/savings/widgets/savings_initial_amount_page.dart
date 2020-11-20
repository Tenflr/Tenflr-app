import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:tenflrpay/application/saving/savings_input_collector/savingsinputcollector_bloc.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';

import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/default_primary_money_input.dart';

class SavingsAmountPage extends StatefulWidget {
  final PageController controller;
  const SavingsAmountPage({@required this.controller});

  @override
  _SavingsAmountPageState createState() => _SavingsAmountPageState();
}

class _SavingsAmountPageState extends State<SavingsAmountPage> {
  @override
  Widget build(BuildContext context) {
    final MoneyMaskedTextController moneyController = MoneyMaskedTextController(
        decimalSeparator: '.', precision: 1, thousandSeparator: ',');

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
                  'How much do you want to start your savings account with?'
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
                    Text('Enter the amount...'.i18n),
                    DefaultPrimaryMoneyInput(
                      imagePath: null,
                      // moneyMaskEditingController: moneyController,

                      onChanged: (value) {
                        context.bloc<SavingsInputCollectorBloc>().add(
                            SavingsInputCollectorEvent.amountChanged(
                                amount: MoneyAmount(double.parse(value))));
                      },
                      onEditingComplete: () {
                        FocusScope.of(context).unfocus();

                        widget.controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                    ),
                  ])),
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
                          widget.controller.previousPage(
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
                          widget.controller.nextPage(
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
