import 'package:flutter/material.dart';
import 'package:tenflrpay/domain/budget/budgets.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';

class BudgetTile extends StatelessWidget {
  final String title;
  final Budget budget;
  final int index;
  final String subTitle;
  final String locked;
  final String cashed;
  final bool isGift;
  const BudgetTile(
      {this.isGift = false,
    @required  this.budget,
      this.index,
      this.cashed = '2,500',
      this.title = "Allowances",
      this.subTitle = 'XAF 102,500.0',
      this.locked = '100,000',
      Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: DefaultDecoration.all,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: ListTile(
        title: Text(
          title.i18n,
          style: BudgetScreensStyle.tileTitle(size),
        ),
        subtitle: Text(
          subTitle.i18n,
          style: BudgetScreensStyle.tileSubTitle(size),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              locked.i18n,
              style: BudgetScreensStyle.locked(size),
            ),
            Text(
              cashed.i18n,
              style: BudgetScreensStyle.cash(size),
            ),
          ],
        ),
      ),
    );
  }
}
