import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import '../core/assets/images.dart';
import '../core/styles/decorations.dart';
import '../core/styles/text_styles.dart';
import '../core/translations/translations.i18n.dart';
import 'default_primary_money_input.dart';

class DepositWithOrangeCard extends HookWidget {
  const DepositWithOrangeCard();
  @override
  Widget build(BuildContext context) {
    final MoneyMaskedTextController orangMoneyController =
        MoneyMaskedTextController();

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
                "Deposit using Orange mobile money".i18n,
                style: DepositScreenTextStyle.cardTitle(size),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Enter the amount to deposit".i18n),
          DefaultPrimaryMoneyInput(
            imagePath: TfImages.orangemomo,
            // moneyMaskEditingController: orangMoneyController,
          ),
          RaisedButton(
              onPressed: () {
                BotToast.showText(text: "In development".i18n);
              },
              child: Text("Deposit".i18n))
        ],
      ),
    );
  }
}
