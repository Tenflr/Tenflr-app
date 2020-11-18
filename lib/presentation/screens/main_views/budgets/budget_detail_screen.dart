import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/infoDisplayTile.dart';

class BudgetManagerDetailScreen extends HookWidget {
  const BudgetManagerDetailScreen();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final isGift = useState(false);

    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              InfoDisplayTile(
                leading: Text('Account name'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Text('College Tuition',
                    style: TrustedPayScreenTextStyles.value(size)),
              ),
              InfoDisplayTile(
                leading: Text('Total amount'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Text('XAF 250,000.0',
                    style: TrustedPayScreenTextStyles.value(size)),
              ),
              InfoDisplayTile(
                leading: Text('Amount locked'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Text('XAF 200,000.0',
                    style: TrustedPayScreenTextStyles.value(size)),
              ),
              InfoDisplayTile(
                leading: Text('Amount unlocked'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Text("XAF 50,000",
                    style: TrustedPayScreenTextStyles.value(size)),
              ),
              if (isGift.value)
                InfoDisplayTile(
                  leading: Text('Gift from'.i18n,
                      style: TrustedPayScreenTextStyles.key(size)),
                  trailing: Text('user@gmail.com',
                      style: TrustedPayScreenTextStyles.value(size)),
                ),
              InfoDisplayTile(
                leading: Text('Pay rate'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Text('XAF 5000/day',
                    style: TrustedPayScreenTextStyles.value(size)),
              ),
              InfoDisplayTile(
                leading: Text('Unlock date'.i18n,
                    style: TrustedPayScreenTextStyles.key(size)),
                trailing: Text('15 Nov 2020',
                    style: TrustedPayScreenTextStyles.value(size)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
