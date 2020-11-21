import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import '../../../../domain/quick_payment/quick_payment.dart';
import 'quick_payment_tile.dart';

class QuickPaymentList extends StatelessWidget {
  final ScrollController controller;
  final KtList<QuickPayment> quickPaymants;
  const QuickPaymentList({Key key, this.controller, this.quickPaymants})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
      if (quickPaymants.isEmpty()) {
          return const FlareActor(
            'assets/flare/payment.flr',
            alignment: Alignment.topCenter,
            animation: "Untitled",
          );
        }
    return Container(
      height:size.height * 0.78, 
      child: ListView.separated(
        controller: controller,
        itemCount: quickPaymants.size,
        itemBuilder: (context, index) {
          final QuickPayment payment = quickPaymants.get(index);
          return 
          // const SizedBox();
          QuickPaymentTile(index: index, payment: payment);
        },
        separatorBuilder: (context, index) =>
            SizedBox(height: size.height * 0.01),
      ),
    );
  }
}
