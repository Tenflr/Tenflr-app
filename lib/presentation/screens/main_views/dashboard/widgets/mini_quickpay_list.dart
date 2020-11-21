import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../domain/quick_payment/quick_payment.dart';
import '../../quickpay/quick_payment_tile.dart';

class MiniQuickpayList extends StatelessWidget {
  final KtList<QuickPayment> quickpays;

  const MiniQuickpayList({Key key, this.quickpays}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return QuickPaymentTile(payment: quickpays[index]);
        },
        itemCount: quickpays.size,
      ),
    );
  }
}