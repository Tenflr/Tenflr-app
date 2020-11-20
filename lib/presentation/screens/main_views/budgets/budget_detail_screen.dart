import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../domain/budget/budgets.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/infoDisplayTile.dart';

class BudgetManagerDetailScreen extends HookWidget {
  final Budget budget;
  const BudgetManagerDetailScreen({@required this.budget, Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height:size.height * 0.78,
      child: ListView(
        children: [
          InfoDisplayTile(
            leading: Text('Account name'.i18n,
                style: TrustedPayScreenTextStyles.key(size)),
            trailing: Text('${budget.accountName.getOrCrash()}',
                style: TrustedPayScreenTextStyles.value(size)),
          ),
          InfoDisplayTile(
            leading: Text('Total amount'.i18n,
                style: TrustedPayScreenTextStyles.key(size)),
            trailing: Text(
                'XAF ${budget.totalAmount.getOrCrash().toStringAsFixed(1)}',
                style: TrustedPayScreenTextStyles.value(size)),
          ),
          InfoDisplayTile(
            leading: Text('Amount locked'.i18n,
                style: TrustedPayScreenTextStyles.key(size)),
            trailing: Text(
                'XAF ${budget.amountLocked.getOrCrash().toStringAsFixed(1)}',
                style: TrustedPayScreenTextStyles.value(size)),
          ),
          InfoDisplayTile(
            leading: Text('Amount unlocked'.i18n,
                style: TrustedPayScreenTextStyles.key(size)),
            trailing: Text(
                'XAF ${budget.amountCashed.getOrCrash().toStringAsFixed(1)}',
                style: TrustedPayScreenTextStyles.value(size)),
          ),
          if (budget.isGift)
            InfoDisplayTile(
              leading: Text('Gift from'.i18n,
                  style: TrustedPayScreenTextStyles.key(size)),
              trailing: Text('${budget.rPhoneNumber.getOrCrash()}',
                  style: TrustedPayScreenTextStyles.value(size)),
            ),
          InfoDisplayTile(
            leading: Text('Pay rate'.i18n,
                style: TrustedPayScreenTextStyles.key(size)),
            trailing: Text(
                'XAF ${budget.payoutAmount.getOrCrash().toStringAsFixed(0)}/${budget.payoutMode.getOrCrash()}',
                style: TrustedPayScreenTextStyles.value(size)),
          ),
          InfoDisplayTile(
            leading: Text('Unlock date'.i18n,
                style: TrustedPayScreenTextStyles.key(size)),
            trailing: Text(
                '${budget.unlockDate.getOrCrash().toString().substring(0, 11)}',
                style: TrustedPayScreenTextStyles.value(size)),
          ),
        ],
      ),
    );
  }
}
