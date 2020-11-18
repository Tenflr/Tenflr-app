import 'package:flutter/material.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/icons/TfIcons_icons.dart';
import '../core/translations/translations.i18n.dart';

class DepositButton extends StatelessWidget {
  // final String description;

  const DepositButton();
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      
        onPressed: () {},
        color: TfColors.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Transform.translate(
                offset: const Offset(-15, 0),
                child: const Icon(
                  TfIcons.round_lock,
                  // size: 18,
                  color: TfColors.secondary,
                )),
            // const SizedBox(width: 5),
            Text(
              "Deposit".i18n,
              // style: .deposit(size),
            ),
            Transform.translate(
                offset: const Offset(15, 0),
                child: const Icon(
                  TfIcons.green_arrow_down,
                  // size: 18,
                  color: TfColors.green,
                )),
          ],
        ));
  }
}
