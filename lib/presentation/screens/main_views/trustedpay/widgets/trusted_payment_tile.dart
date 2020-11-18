import 'package:flutter/material.dart';
import 'package:tenflrpay/domain/core/settings.dart';
import 'package:tenflrpay/domain/payment/payment.dart';

import '../../../../../injection.dart';
import '../../../../core/assets/colors.dart';
import '../../../../core/icons/TfIcons_icons.dart';
import '../../../../core/styles/decorations.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';

class TrustedPaymentTile extends StatelessWidget {
  final Payment payment;
  final int index;
  final String title;
  final String subTitle;
  final bool isSent;
  final String dateTime;
  const TrustedPaymentTile(
      {this.isSent = false,
      @required this.payment,
      this.index,
      this.dateTime = '15 Nov 2020',
      this.subTitle = "user@gmail.com",
      this.title = 'XAF 102,500.0',
      Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isSent =
        payment.payerId.getOrCrash() == getIt<MySettings>().getUserId
            ? true
            : false;

    return Container(
      decoration: DefaultDecoration.all,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: ListTile(
          title: Text(
            'XAF ${payment.amount.getOrCrash().toStringAsFixed(1)}' ??
                title.i18n,
            style: BudgetScreensStyle.tileTitle(size),
          ),
          subtitle: Text(
            isSent
                ? 'XAF ${payment.rPhoneNumber.getOrCrash()}'
                : ' XAF ${payment.pPhoneNumber.getOrCrash()}',
            style: BudgetScreensStyle.tileSubTitle(size),
          ),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              isSent
                  ? const Icon(
                      TfIcons.red_arrow_up,
                      color: TfColors.red,
                    )
                  : const Icon(
                      TfIcons.green_arrow_down,
                      color: TfColors.green,
                    ),
              const SizedBox(height: 5),
              Text(payment.unlockDate.getOrCrash().toString().substring(0, 11)),
            ],
          )),
    );
  }
}
