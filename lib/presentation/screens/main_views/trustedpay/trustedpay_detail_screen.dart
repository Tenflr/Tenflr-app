import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';
import 'package:tenflrpay/presentation/widgets/button.dart';
import 'package:tenflrpay/presentation/widgets/stars_rating.dart';

import '../../../core/assets/colors.dart';
import '../../../core/icons/TfIcons_icons.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/infoDisplayTile.dart';

class TrustedPayDetailScreen extends HookWidget {
  const TrustedPayDetailScreen();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final isSent = useState(false);

    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              if (isSent.value)
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
              if (isSent.value)
                InfoDisplayTile(
                  leading: Text('Receiver'.i18n,
                      style: TrustedPayScreenTextStyles.key(size)),
                  trailing: Text('user@gmail.com',
                      style: TrustedPayScreenTextStyles.value(size)),
                )
              else
                InfoDisplayTile(
                  leading: Text('Sender'.i18n,
                      style: TrustedPayScreenTextStyles.key(size)),
                  trailing: Text('+237 6000000',
                      style: TrustedPayScreenTextStyles.value(size)),
                ),
              InfoDisplayTile(
                leading: Text('Total amount'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Text('XAF 250,000.0',
                    style: TrustedPayScreenTextStyles.value(size)),
              ),
              InfoDisplayTile(
                leading: Text('Status'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Text(isSent.value ? 'Locked' : "Cashed",
                    style:
                        TrustedPayScreenTextStyles.status(size, isSent.value)),
              ),
              InfoDisplayTile(
                leading: Text('Unlock date'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('15 Nov 2020',
                        style: TrustedPayScreenTextStyles.value(size)),
                    const SizedBox(height: 5),
                    Text('2 days',
                        style: TrustedPayScreenTextStyles.value(size)),
                  ],
                ),
              ),
              if (!isSent.value)
                Container(
                  decoration: DefaultDecoration.all,
                  // padding: EdgeInsets.symmetric(horizontal: 50, ),
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.3, vertical: 20),
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

          // Button(onPressed: null, description: null),
          if (!isSent.value)
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
      ),
    );
  }
}
