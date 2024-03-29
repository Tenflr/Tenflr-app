import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:tenflrpay/presentation/core/assets/svg.dart';
import 'package:tenflrpay/presentation/core/money_controller/m_controller.dart';

import '../../injection.dart';
import '../core/assets/images.dart';
import '../core/styles/decorations.dart';
import '../core/styles/text_styles.dart';
import '../core/translations/translations.i18n.dart';
import 'default_primary_money_input.dart';

class WithdrawWithOrangeCard extends HookWidget {
  const WithdrawWithOrangeCard();
  @override
  Widget build(BuildContext context) {
    // final MoneyMaskedTextController orangMoneyController =
    //      getIt<MoneyController>().controller;

    final textController = useTextEditingController();
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: DefaultDecoration.all,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Withdraw using Orange mobile money".i18n,
                style: DepositScreenTextStyle.cardTitle(size),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Enter the amount to withdraw".i18n),
          DefaultPrimaryMoneyInput(
            initialValue: '0.0',
            svgPath: TfSvg.orangemomo,
            // moneyMaskEditingController: orangMoneyController,
          ),
          RaisedButton(
              onPressed: () {
                 BotToast.showText(text: "In development".i18n);
              },
              child: Text("Withdraw".i18n))
        ],
      ),
    );
  }
}
