import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tenflrpay/presentation/core/icons/TfIcons_icons.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';
import 'package:tenflrpay/presentation/screens/main_views/budgets/widgets/budget_user_name_page.dart';
import 'package:tenflrpay/presentation/widgets/app_bar.dart';

import '../../../core/assets/colors.dart';
import 'widgets/budget_account_name_page.dart';
import 'widgets/budget_duration_page.dart';
import 'widgets/budget_frequency_page.dart';
import 'widgets/budget_manager_amount_page.dart';
import '../../../core/translations/translations.i18n.dart';

class BudgetCreateScreen extends HookWidget {
  final bool isGift;
  const BudgetCreateScreen({this.isGift = true});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = PageController(viewportFraction: 0.88);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // const DefaultPrimaryMoneyInput(imagePath: null),
            TfAppBar(
                leading: IconButton(
                  icon: const Icon(TfIcons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                description: Text(
                    isGift
                        ? 'Send Budget Manager'.i18n
                        : 'New Budget Manager'.i18n,
                    style: SavingsScreenTextStyle.addSavingsDescription(size)),
                trailing: const Opacity(
                    opacity: 0,
                    child: IconButton(
                      icon: Icon(TfIcons.arrow_back),
                      onPressed: null,
                    ))),
            Container(
              height: size.height * 0.8,
              width: size.width,
              child: PageView(controller: controller, children: [
                BudgetManagerAccountNamePage(controller: controller),
                BudgetManagerAmountPage(controller: controller),
                BudgetDurationPage(controller: controller),
                BudgetFrequencyPage(controller: controller, isGift: isGift),
                if (isGift) BudgetUserNamePage(controller: controller),
                //  SavingsAmountPage(controller: controller),
                //  SavingsDatePickerPage(controller: controller),
              ]),
            ),
            Container(
              child: SmoothPageIndicator(
                controller: controller,
                count: isGift ? 5 : 4,
                effect: const WormEffect(
                    activeDotColor: TfColors.primary, dotHeight: 5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
