import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/assets/svg.dart';

import '../../../core/assets/images.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/button.dart';
import '../../../../routes/router.gr.dart';

class BudgetManagerInitialScreen extends StatelessWidget {
  const BudgetManagerInitialScreen();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(),
        const SizedBox(),
        // Image.asset(TfImages.budget),
        SvgPicture.asset(TfSvg.budget),
        const SizedBox(
          height: 50,
        ),
        Button(
          onPressed: () {
            ExtendedNavigator.of(context).pushBudgetCreateScreen(isGift: true);
          },
          description: "Gift Budget Manager".i18n,
          width: size.width * 0.7,
          isSecondaryButton: true,
        ),
        SizedBox(
            width: size.width * 0.3,
            child: const Divider(
              thickness: 1,
              color: TfColors.primary,
            )),
        Button(
          onPressed: () {
            ExtendedNavigator.of(context).pushBudgetCreateScreen(isGift: false);
          },
          description: "New Budget Manager".i18n,
          width: size.width * 0.7,
        ),
      ],
    );
  }
}
