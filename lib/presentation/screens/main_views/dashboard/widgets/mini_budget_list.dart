import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../domain/budget/budgets.dart';
import '../../budgets/widgets/budget_tile.dart';

class MiniBudgetList extends StatelessWidget {
  final KtList<Budget> budgets;

  const MiniBudgetList({Key key, this.budgets}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return BudgetTile(budget: budgets[index]);
        },
        itemCount: budgets.size,
      ),
    );
  }
}
