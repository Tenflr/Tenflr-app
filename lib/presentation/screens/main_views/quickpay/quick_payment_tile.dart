import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tenflrpay/application/quick_payment/quick_payment_bloc/quick_payment_bloc.dart';
import 'package:tenflrpay/domain/quick_payment/quick_payment.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';

class QuickPaymentTile extends StatelessWidget {
  final int index;
  final QuickPayment payment;

  const QuickPaymentTile({Key key, this.index, this.payment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final User user = Provider.of<User>(context, listen: false);
    final bool received =
        payment.requesterId.getOrCrash() == user.id.getOrCrash();
    if (!payment.cashed &&
        payment.requesterId.getOrCrash() == user.id.getOrCrash()) {
      context.bloc<QuickPaymentBloc>().add(QuickPaymentEvent.autoCash(payment));
    }
    return Container(
      decoration: DefaultDecoration.all,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ListTile(
          subtitle: Text(
            received ? payment.pTel.getOrCrash() : payment.rTel.getOrCrash(),
          ),
          title: RichText(
            text: TextSpan(
              // text: 'XFA ',
              children: [
                TextSpan(
                  text: '${payment.amount.getOrCrash().toStringAsFixed(1)} ',
                  style: GoogleFonts.montserrat(
                      fontSize: size.width * 0.07,
                      fontWeight: FontWeight.w400,
                      color: received ? Colors.green[300] : Colors.red[300]),
                ),
                TextSpan(
                  text: ' XFA',
                  style: GoogleFonts.montserrat(
                      fontSize: size.width * 0.033,
                      fontWeight: FontWeight.w400,
                      color: received ? Colors.green[300] : Colors.red[300]),
                ),
              ],
            ),
          ),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (!received)
                Icon(Icons.arrow_upward, color: Colors.red[300])
              else
                Icon(Icons.arrow_downward, color: Colors.green[300]),
              // const Spacer(),
              SizedBox(
                height: size.height * 0.008,
              ),
              // Divider(),
              if (payment.cashed)
                Text(
                  payment.date.toString().substring(0, 11),
                  style: TextStyle(fontSize: size.width * 0.03),
                )
              else
                Text(
                  payment.requesterId.getOrCrash() == user.id.getOrCrash()
                      ? "Uncashed"
                      : "Sent",
                  style: TextStyle(
                      color:
                          payment.cashed ? Colors.green[300] : Colors.red[300]),
                ),
            ],
          )
          // subtitle: ,
          ),
    );
  }
}
