import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:tenflrpay/presentation/core/money_controller/m_controller.dart';

import '../../../../../application/payment/trusted_pay_input_collector/trustedpayinputcollector_bloc.dart';
import '../../../../../domain/core/valid_objects.dart';
import '../../../../../injection.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/default_primary_money_input.dart';

class TpAmountPage extends StatelessWidget {
  final PageController controller;
  const TpAmountPage({@required this.controller});
  @override
  Widget build(BuildContext context) {
    // final MoneyMaskedTextController moneyController =getIt<MoneyController>().controller;

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
                  'How much do you want to send?'.i18n,
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
                      svgPath: null,
                      onChanged: (value) {
                        context.bloc<TrustedPayInputCollectorBloc>().add(
                            TrustedPayInputCollectorEvent.amountChanged(
                                amount: MoneyAmount(double.parse(value.replaceAll(',','')))));
                      },
                        // moneyMaskEditingController: moneyController,
                      onEditingComplete: () {
                        // node.nextFocus();

                        FocusScope.of(context).unfocus();

                        controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      // moneyMaskEditingController: moneyController,
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
