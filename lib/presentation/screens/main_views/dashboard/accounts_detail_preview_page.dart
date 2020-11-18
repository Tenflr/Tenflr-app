import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tenflrpay/domain/budget/budgets.dart';
import 'package:tenflrpay/domain/payment/payment.dart';
import 'package:tenflrpay/domain/saving/savings.dart';
import 'package:tenflrpay/presentation/screens/main_views/quickpay/widgets/quick_pay_tile.dart';

import '../../../core/assets/colors.dart';
import '../../../widgets/transaction_list.dart';
import '../budgets/widgets/budget_tile.dart';
import '../savings/widgets/savingsTile.dart';
import '../trustedpay/widgets/trusted_payment_tile.dart';

class AccountDetailPreviewScreen extends HookWidget {
  const AccountDetailPreviewScreen();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = PageController(viewportFraction: 0.99);

    return Container(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // const DefaultPrimaryMoneyInput(imagePath: null),
            Expanded(
              // height: size.height * 0.2,
              // width: size.width,
              child: PageView(controller: controller, children: [
                TransactionsList(
                    title: 'Budget Managers',
                    transactionTile: BudgetTile(
                      budget: Budget.empty(),
                    )),
                TransactionsList(
                    title: 'Savings',
                    transactionTile: SavingsTile(
                      savings: Savings.empty(),
                    )),
                TransactionsList(
                    title: 'Trusted Payments',
                    transactionTile: TrustedPaymentTile(
                      payment: Payment.empty(),
                    )),
                const TransactionsList(
                    title: 'Quick Payments', transactionTile: QuickPayTile()),
              ]),
            ),
            Container(
              child: SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: const WormEffect(
                    activeDotColor: TfColors.primary, dotHeight: 3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
