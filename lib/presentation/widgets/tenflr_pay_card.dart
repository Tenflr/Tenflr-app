import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/presentation/core/assets/images.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';

import '../core/assets/colors.dart';
import '../core/icons/TfIcons_icons.dart';
import '../core/styles/text_styles.dart';
import '../core/translations/translations.i18n.dart';

class TenflrPayCard extends StatelessWidget {
  const TenflrPayCard();
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context, listen: false);

    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: DefaultDecoration.all,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Icon(TfIcons.trustedpaylogo)
              Row(
                children: [
                  Image.asset(TfImages.tp_logo),
                  const SizedBox(width: 5),
                  Text(
                    "TenflrPay",
                    style: TenflrPayCardTextStyle.title(size),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(user.phoneNumber.getOrCrash(),
                      style: TenflrPayCardTextStyle.number(size)),
                  Text(user.email.getOrCrash() ?? '',
                      style: TenflrPayCardTextStyle.email(size)),
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              '3,459.8 XFA',
              style: TenflrPayCardTextStyle.amount(size),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "View all transaction history".i18n,
                style: TenflrPayCardTextStyle.history(size),
              ),
              RaisedButton(
                  onPressed: () {},
                  color: TfColors.secondary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Transform.translate(
                          offset: const Offset(-15, 0),
                          child: const Icon(
                            TfIcons.round_lock,
                            size: 18,
                            color: TfColors.primary,
                          )),
                      // const SizedBox(width: 5),
                      Text(
                        "Deposit".i18n,
                        style: TenflrPayCardTextStyle.deposit(size),
                      ),
                      Transform.translate(
                          offset: const Offset(15, 0),
                          child: const Icon(
                            TfIcons.green_arrow_down,
                            size: 18,
                            color: TfColors.green,
                          )),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
