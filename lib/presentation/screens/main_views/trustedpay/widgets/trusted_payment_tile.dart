import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../application/main_views_bloc/main_views_bloc.dart';
import '../../../../../domain/payment/payment.dart';
import '../../../../../domain/user/user.dart';
import '../../../../core/assets/colors.dart';
import '../../../../core/icons/TfIcons_icons.dart';
import '../../../../core/styles/decorations.dart';
import '../../../../core/styles/text_styles.dart';

class TrustedPaymentTile extends StatelessWidget {
  final Payment payment;
  final int index;
  const TrustedPaymentTile({@required this.payment, this.index, Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final User user = Provider.of<User>(context, listen: false);
    final bool isSent =
        payment.payerId.getOrCrash() == user.id.getOrCrash() 
            ? true
            : false;

    return Container(
      decoration: DefaultDecoration.all,
      margin:  EdgeInsets.symmetric(horizontal: size.width * 0.04, vertical: 2),
      child: ListTile(
          onTap: () {
            context
                .bloc<MainViewsBloc>()
                .add(MainViewsEvent.trustedPayDetail(payment: payment));
          },
          title: Text(
            'XAF ${payment.amount.getOrCrash().toStringAsFixed(1)}',
            style: BudgetScreensStyle.tileTitle(size),
          ),
          subtitle: Text(
            isSent
                ? '${payment.rDisplayName.getOrCrash()}'
                : '${payment.pDisplayNames.getOrCrash()}',
            style: BudgetScreensStyle.tileSubTitle(size),
          ),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              isSent
                  ? const Icon(
                      TfIcons.red_arrow_up,
                      color: TfColors.red,
                    )
                  : const Icon(
                      TfIcons.green_arrow_down,
                      color: TfColors.green,
                    ),
              const SizedBox(height: 5),
              Text(payment.unlockDate.getOrCrash().toString().substring(0, 11)),
            ],
          )),
    );
  }
}
