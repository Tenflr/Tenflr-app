import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../core/assets/images.dart';
import '../../../widgets/deposit_button.dart';
import '../../../widgets/listWheelScrollViewHorizontal.dart';
import '../../../widgets/tenflr_pay_card.dart';
import '../../../widgets/withdraw_button.dart';
import 'accounts_detail_preview_page.dart';
import 'widgets/action_card.dart';
import '../../../core/translations/translations.i18n.dart';

class DashBoard extends HookWidget {
  const DashBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = FixedExtentScrollController(initialItem: 1);
    return SingleChildScrollView(
      child: Container(
        // aspectRatio: 0.04,
        height: size.height * 0.78,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TenflrPayCard(),
            Flexible(
              child: const AccountDetailPreviewScreen(),
            ),
            Flexible(
              // height: size.height * 0.4,
              // width: size.width,
              child: ListWheelScrollViewX(
                scrollDirection: Axis.horizontal,
                controller: controller,
                diameterRatio: 2,
                onSelectedItemChanged: (index) {
// controller.position = index;
                },
                children: list,
                itemExtent: 150,
                builder: (context, index) => cardList(index),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [DepositButton(), WithDrawButton()],
            )
          ],
        ),
      ),
    );
  }
}

Widget cardList(int index) => list[index];

final List<Widget> list = [
  MyCard(
      imagePath: TfImages.bag_icon,
      
      description: "Create a Savings Account".i18n,
      onPressed: () {}),
  MyCard(
      imagePath: TfImages.budget_manager_icon,
      description: "Create a Budget Manager".i18n,
      onPressed: () {}),
  MyCard(
      imagePath: TfImages.quick_pay_icon,
      description: "Make a Quick Payment".i18n,
      onPressed: () {}),
  MyCard(
      imagePath: TfImages.trusted_pay_icon,
      description: "Trusted Payment".i18n,
      onPressed: () {}),
];
