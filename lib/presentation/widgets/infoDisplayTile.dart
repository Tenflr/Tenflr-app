import 'package:flutter/material.dart';

import '../core/assets/colors.dart';

class InfoDisplayTile extends StatelessWidget {
  final Widget trailing;
  final Widget leading;

  const InfoDisplayTile({Key key, this.trailing, this.leading})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: TfColors.secondary,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              leading,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              trailing,
            ],
          )
        ],
      ),
    );
  }
}
