import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/main_views_bloc/main_views_bloc.dart';
import '../../../../../domain/budget/budgets.dart';
import '../../../../core/styles/decorations.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';

class BudgetTile extends StatelessWidget {
  final Budget budget;
  final int index;
  const BudgetTile({@required this.budget, this.index, Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: DefaultDecoration.all,
      margin:  EdgeInsets.symmetric(horizontal: size.width * 0.04, vertical: 2),
      child: Stack(
        children: [
          if (budget.isGift)
             Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(child: Text('Gift'.i18n)),
            ),
          ListTile(
            onTap: () {
              context
                  .bloc<MainViewsBloc>()
                  .add(MainViewsEvent.budgetDetailPage(budget: budget));
            },
            title: Text(
              budget.accountName.getOrCrash(),
              style: BudgetScreensStyle.tileTitle(size),
            ),
            subtitle: Text(
              'XAF ${budget.totalAmount.getOrCrash().toStringAsFixed(1)}',
              style: BudgetScreensStyle.tileSubTitle(size),
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${budget.amountLocked.getOrCrash().toStringAsFixed(1)}',
                  style: BudgetScreensStyle.locked(size),
                ),
                Text(
                  '${budget.amountCashed.getOrCrash().toStringAsFixed(1)}',
                  style: BudgetScreensStyle.cash(size),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
