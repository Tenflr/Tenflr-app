import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../domain/payment/payment.dart';
import '../../trustedpay/widgets/trusted_payment_tile.dart';

class MiniPaymentsList extends StatelessWidget {
  final KtList<Payment> payments;

  const MiniPaymentsList({Key key, this.payments}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TrustedPaymentTile(payment: payments[index]);
        },
        itemCount: payments.size,
      ),
    );
  }
}
