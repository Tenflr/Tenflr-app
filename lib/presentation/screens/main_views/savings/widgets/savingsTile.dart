import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../application/main_views_bloc/main_views_bloc.dart';
import '../../../../../domain/saving/savings.dart';
import '../../../../core/assets/svg.dart';
import '../../../../core/styles/decorations.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';

class SavingsTile extends StatelessWidget {
  final Savings savings;
  final String title;
  const SavingsTile(
      {this.title = "Allowances",
      @required this.savings,
      Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    int duration = savings.withdrawalDate
        .getOrCrash()
        .difference(DateTime.now())
        .inSeconds;
    return Container(
      decoration: DefaultDecoration.all,
      margin:  EdgeInsets.symmetric(horizontal: size.width * 0.04, vertical: 5),
      child: ListTile(
          onTap: () {
            context.bloc<MainViewsBloc>().add(MainViewsEvent.savingsDetailPage(
                savings: savings, duration: duration));
          },
          title: Text(
            savings.savingsName.getOrCrash(),
            style: BudgetScreensStyle.tileTitle(size),
          ),
          subtitle: Text(
            'XAF ${savings.amount.getOrCrash().toStringAsFixed(0)}',
            style: BudgetScreensStyle.tileSubTitle(size),
          ),
          trailing: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            decoration: DefaultDecoration.all,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 25,
                  width: 25,
                  child: SvgPicture.asset(TfSvg.add_hand),
                ),
                // Image.asset(TfImages.add_money),
                const SizedBox(width: 5),
                Text(
                  'Add'.i18n,
                  style: SavingsScreenTextStyle.add(size),
                ),
              ],
            ),
          )),
    );
  }
}
