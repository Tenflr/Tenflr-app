import 'package:flutter/material.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/assets/images.dart';
import 'package:tenflrpay/presentation/core/icons/TfIcons_icons.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';

class QuickPayTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool isSent;
  const QuickPayTile(
      {this.isSent = false,
      this.subTitle = "user@gmail.com",
      this.title = 'XAF 102,500.0',
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
        trailing: isSent
            ? const Icon(
                TfIcons.red_arrow_up,
                color: TfColors.red,
              )
            : const Icon(
                TfIcons.green_arrow_down,
                color: TfColors.green,
              ),
      ),
    );
  }
}
