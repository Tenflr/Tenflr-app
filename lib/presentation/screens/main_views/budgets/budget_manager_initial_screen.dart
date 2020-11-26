import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../domain/user/user.dart';
import '../../../../routes/router.gr.dart';
import '../../../core/assets/colors.dart';
import '../../../core/assets/svg.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/button.dart';

class BudgetManagerInitialScreen extends StatelessWidget {
  const BudgetManagerInitialScreen();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final User user = Provider.of<User>(context, listen: false);

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
            ExtendedNavigator.of(context)
                .pushBudgetCreateScreen(isGift: true, user: user);
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
            ExtendedNavigator.of(context)
                .pushBudgetCreateScreen(isGift: false, user: user);
          },
          description: "New Budget Manager".i18n,
          width: size.width * 0.7,
        ),
      ],
    );
  }
}
