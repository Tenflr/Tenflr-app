import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/assets/svg.dart';
import '../core/styles/decorations.dart';
import 'withdraw_with_mtn_card.dart';
import 'withdraw_with_orange_card.dart';

class WithdrawScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const WithdrawWithMTNCard(),
          const SizedBox(height: 10),
          const WithdrawWithOrangeCard(),
          const SizedBox(height: 10),
          Container(
              width: size.width * 0.9,
              decoration: DefaultDecoration.all,
              child: InkWell(
                  onTap: () {
                    //todo;
                  },
                  child: SvgPicture.asset(TfSvg.add_bank))),
        ],
      ),
    );
  }
}
