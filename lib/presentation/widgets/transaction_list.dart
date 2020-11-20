import 'package:flutter/material.dart';

import '../core/assets/colors.dart';
import '../core/styles/decorations.dart';
import '../core/translations/translations.i18n.dart';

class TransactionsList extends StatelessWidget {
  final Widget transactionTile;
  final String title;
  const TransactionsList({Key key, @required this.transactionTile, @required  this.title}): super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: DefaultDecoration.all,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.04, vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Stack(
        children: [
          ListView.builder(
            physics: const BouncingScrollPhysics() ,
            itemBuilder: (context, indext) => transactionTile,
            itemCount: 3,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                color: TfColors.secondary, child: Text(title.i18n)),
          ),
        ],
      ),
    );
  }
}