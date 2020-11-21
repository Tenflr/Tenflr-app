import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../routes/router.gr.dart';
import '../../../core/assets/svg.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/button.dart';

class SavingsInitialScreen extends StatelessWidget {
  const SavingsInitialScreen();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(),
        // Image.asset(TfImages.savings),
        SvgPicture.asset(TfSvg.savings),
        const SizedBox(
          height: 100,
        ),
        Button(
          onPressed: () {
            ExtendedNavigator.of(context).pushCreateSavingsScreen();
          },
          description: "New Savings Account".i18n,
          width: size.width * 0.7,
        ),
      ],
    );
  }
}
