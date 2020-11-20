import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tenflrpay/domain/core/settings.dart';
import 'package:tenflrpay/domain/payment/payment.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';
import 'package:tenflrpay/presentation/widgets/button.dart';
import 'package:tenflrpay/presentation/widgets/stars_rating.dart';

import '../../../../injection.dart';
import '../../../core/assets/colors.dart';
import '../../../core/icons/TfIcons_icons.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/infoDisplayTile.dart';

class TrustedPayDetailScreen extends HookWidget {
  final Payment payment;
  const TrustedPayDetailScreen({@required this.payment});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // final isSent = useState(false);
    final bool isSent =
        payment.payerId.getOrCrash() == getIt<MySettings>().getUserId
            ? false
            : true;
    return Container(
      height: size.height * 0.78,
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              if (isSent)
                Icon(
                  TfIcons.red_arrow_up,
                  size: size.width * 0.2,
                  color: TfColors.red,
                )
              else
                Icon(
                  TfIcons.green_arrow_down,
                  size: size.width * 0.2,
                  color: TfColors.green,
                ),
              if (isSent)
                InfoDisplayTile(
                  leading: Text('Receiver'.i18n,
                      style: TrustedPayScreenTextStyles.key(size)),
                  trailing: Text(payment.rDisplayName.getOrCrash(),
                      style: TrustedPayScreenTextStyles.value(size)),
                )
              else
                InfoDisplayTile(
                  leading: Text('Sender'.i18n,
                      style: TrustedPayScreenTextStyles.key(size)),
                  trailing: Text(payment.pDisplayNames.getOrCrash(),
                      style: TrustedPayScreenTextStyles.value(size)),
                ),
              InfoDisplayTile(
                leading: Text('Total amount'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Text(payment.amount.getOrCrash().toStringAsFixed(1),
                    style: TrustedPayScreenTextStyles.value(size)),
              ),
              InfoDisplayTile(
                leading: Text('Status'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Text(isSent ? 'Locked' : "Cashed",
                    style: TrustedPayScreenTextStyles.status(size, isSent)),
              ),
              InfoDisplayTile(
                leading: Text('Unlock date'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        payment.unlockDate
                            .getOrCrash()
                            .toString()
                            .substring(0, 11),
                        style: TrustedPayScreenTextStyles.value(size)),
                    const SizedBox(height: 5),
                    Text('2 days',
                        style: TrustedPayScreenTextStyles.value(size)),
                  ],
                ),
              ),
              if (!isSent)
                Container(
                  decoration: DefaultDecoration.all,
                  // padding: EdgeInsets.symmetric(horizontal: 50, ),
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.3, vertical: 20),
                  // width: size.width * 0.7,
                  height: 50,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    // alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text('Rate User'.i18n,
                            style: TrustedPayScreenTextStyles.rateUser(size)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Stars(),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
          Column(
            children: [
              if (!isSent)
                Button(
                  onPressed: () {},
                  description: 'Request Payment unlock'.i18n,
                  width: size.width * 0.7,
                )
              else
                Button(
                  onPressed: () {},
                  isSecondaryButton: true,
                  description: 'Unlock payment'.i18n,
                  width: size.width * 0.7,
                ),
            ],
          )
          // Button(onPressed: null, description: null),
        ],
      ),
    );
  }
}
