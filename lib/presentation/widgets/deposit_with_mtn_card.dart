import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:tenflrpay/presentation/core/assets/images.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';

import '../core/styles/decorations.dart';
import '../core/translations/translations.i18n.dart';
import 'default_primary_money_input.dart';

class DepositWithMTNCard extends HookWidget {
  const DepositWithMTNCard();
  @override
  Widget build(BuildContext context) {
    final MoneyMaskedTextController mtnMoneyController =
        MoneyMaskedTextController();

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
                "Deposit using MTN mobile money".i18n,
                style: DepositScreenTextStyle.cardTitle(size),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Enter the amount to deposit".i18n),
          DefaultPrimaryMoneyInput(
            imagePath: TfImages.mtnmomo,
            // moneyMaskEditingController: mtnMoneyController,
          ),
          RaisedButton(
              onPressed: () {
                // Todo:
              },
              child: Text("Deposit".i18n))
        ],
      ),
    );
  }
}
