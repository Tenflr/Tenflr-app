import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:tenflrpay/application/main_views_bloc/main_views_bloc.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/presentation/core/assets/svg.dart';

import '../../../core/assets/images.dart';
import '../../../widgets/deposit_button.dart';
import '../../../widgets/listWheelScrollViewHorizontal.dart';
import '../../../widgets/tenflr_pay_card.dart';
import '../../../widgets/withdraw_button.dart';
import 'accounts_detail_preview_page.dart';
import 'widgets/action_card.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../../routes/router.gr.dart';

class DashBoard extends HookWidget {
  const DashBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = FixedExtentScrollController(initialItem: 1);
    final hasAccounts = useState(false);
    final User user = Provider.of<User>(context, listen: false);
    return SingleChildScrollView(
      child: Container(
        // aspectRatio: 0.04,
        height: size.height * 0.78,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TenflrPayCard(),
            Flexible(
              child: hasAccounts.value
                  ? AccountDetailPreviewScreen(hasAccounts)
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyCard(
                            rotate: false,
                            svgPath: TfSvg.savings_icon,
                            description: "Create a Savings Account".i18n,
                            onPressed: () {
                              ExtendedNavigator.of(context)
                                  .pushCreateSavingsScreen();
                            }),
                        MyCard(
                            rotate: false,
                            svgPath: TfSvg.budget_icon,
                            description: "Create a Budget Manager".i18n,
                            onPressed: () {
                              ExtendedNavigator.of(context)
                                  .pushBudgetCreateScreen(user: user);
                            }),
                      ],
                    ),
            ),
            Flexible(
              // height: size.height * 0.4,
              // width: size.width,
              child: hasAccounts.value
                  ? ListWheelScrollViewX(
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      diameterRatio: 2,
                      onSelectedItemChanged: (index) {
// controller.position = index;
                      },
                      children: [
                        MyCard(
                            svgPath: TfSvg.budget_icon,
                            description: "Create a Budget Manager".i18n,
                            onPressed: () {
                              ExtendedNavigator.of(context)
                                  .pushBudgetCreateScreen(user: user);
                            }),
                        MyCard(
                            svgPath: TfSvg.quickpay_icon,
                            description: "Make a Quick Payment".i18n,
                            onPressed: () {
                              context.bloc<MainViewsBloc>().add(
                                  const MainViewsEvent.quickPaymentOverView());
                            }),
                        MyCard(
                            svgPath: TfSvg.trustedpay_icon,
                            description: "Trusted Payment".i18n,
                            onPressed: () {
                              ExtendedNavigator.of(context)
                                  .pushSendTrustedPaymentScreen(user: user);
                            }),
                      ],
                      itemExtent: 150,
                      // builder: (context, index) => cardList(index),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyCard(
                            rotate: false,
                            svgPath: TfSvg.quickpay_icon,
                            description: "Make a Quick Payment".i18n,
                            onPressed: () {
                               context.bloc<MainViewsBloc>().add(
                                  const MainViewsEvent.quickPaymentOverView());
                            }),
                        MyCard(
                            rotate: false,
                            svgPath: TfSvg.trustedpay_icon,
                            description: "Trusted Payment".i18n,
                            onPressed: () { ExtendedNavigator.of(context)
                                  .pushSendTrustedPaymentScreen(user: user);}),
                      ],
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
      svgPath: TfImages.bag_icon,
      description: "Create a Savings Account".i18n,
      onPressed: () {
        // ExtendedNavigator.of(context).pushCreateSavingsScreen();
      }),
  MyCard(
      svgPath: TfImages.budget_manager_icon,
      description: "Create a Budget Manager".i18n,
      onPressed: () {}),
  MyCard(
      svgPath: TfImages.quick_pay_icon,
      description: "Make a Quick Payment".i18n,
      onPressed: () {}),
  MyCard(
      svgPath: TfImages.trusted_pay_icon,
      description: "Trusted Payment".i18n,
      onPressed: () {}),
];
