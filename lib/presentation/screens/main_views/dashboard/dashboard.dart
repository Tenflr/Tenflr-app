import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:tenflrpay/application/budget/budget_list_bloc/budgetlist_bloc.dart';
import 'package:tenflrpay/application/payment/transaction_list_bloc/transaction_list_bloc.dart';
import 'package:tenflrpay/application/quick_payment/quick_payment_watcher_bloc/quick_payment_watcher_bloc.dart';
import 'package:tenflrpay/application/saving/savings_list_bloc/savingslist_bloc.dart';

import '../../../../application/main_views_bloc/main_views_bloc.dart';
import '../../../../domain/user/user.dart';
import '../../../../injection.dart';
import '../../../../routes/router.gr.dart';
import '../../../core/assets/images.dart';
import '../../../core/assets/svg.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/deposit_button.dart';
import '../../../widgets/listWheelScrollViewHorizontal.dart';
import '../../../widgets/tenflr_pay_card.dart';
import '../../../widgets/withdraw_button.dart';
import 'accounts_detail_preview_page.dart';
import 'widgets/action_card.dart';

class DashBoard extends HookWidget {
  const DashBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = FixedExtentScrollController(initialItem: 1);
    final hasAccounts = useState(true);
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
                                  .pushBudgetCreateScreen(
                                      user: user, isGift: false);
                            }),
                      ],
                    ),
            ),
            Flexible(
              // height: size.height * 0.4,
              // width: size.width,
              child: hasAccounts.value
                  ? GestureDetector(
                      onTap: () {
                        // controller.selectedItem
                        switch (controller.selectedItem) {
                          case 0:
                            ExtendedNavigator.of(context)
                                .pushBudgetCreateScreen(
                                    user: user, isGift: false);
                            break;
                          case 1:
                            context.bloc<MainViewsBloc>().add(
                                const MainViewsEvent.quickPaymentOverView());
                            break;
                          case 2:
                            ExtendedNavigator.of(context)
                                .pushSendTrustedPaymentScreen(user: user);
                            break;
                          default:
                        }
                      },
                      child: ListWheelScrollViewX(
                        scrollDirection: Axis.horizontal,
                        controller: controller,
                        diameterRatio: 2,

                        onSelectedItemChanged: (index) {},
                        itemExtent: 150,
                        children: [
                          MyCard(
                            svgPath: TfSvg.budget_icon,
                            description: "Create a Budget Manager".i18n,
                            onPressed: () => ExtendedNavigator.of(context)
                                .pushBudgetCreateScreen(user: user),
                          ),
                          MyCard(
                              svgPath: TfSvg.quickpay_icon,
                              description: "Make a Quick Payment".i18n,
                              onPressed: null),
                          MyCard(
                              svgPath: TfSvg.trustedpay_icon,
                              description: "Trusted Payment".i18n,
                              onPressed: null),
                        ],
                        // builder: (context, index) => cardList(index),
                      ),
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
                                  const MainViewsEvent
                                      .quickPaymentOverView());
                            }),
                        MyCard(
                            rotate: false,
                            svgPath: TfSvg.trustedpay_icon,
                            description: "Trusted Payment".i18n,
                            onPressed: () {
                              ExtendedNavigator.of(context)
                                  .pushSendTrustedPaymentScreen(user: user);
                            }),
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
