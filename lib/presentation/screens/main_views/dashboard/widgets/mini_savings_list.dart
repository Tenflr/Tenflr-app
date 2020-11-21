import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../domain/saving/savings.dart';
import '../../savings/widgets/savingsTile.dart';

class MiniSavingsList extends StatelessWidget {
  final KtList<Savings> savings;

  const MiniSavingsList({Key key, this.savings}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return SavingsTile(savings: savings[index]);
        },
        itemCount: savings.size,
      ),
    );
  }
}