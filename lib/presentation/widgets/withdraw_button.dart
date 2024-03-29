import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenflrpay/domain/user/user.dart';

import '../../routes/router.gr.dart';
import '../core/assets/colors.dart';
import '../core/icons/TfIcons_icons.dart';
import '../core/translations/translations.i18n.dart';

class WithDrawButton extends StatelessWidget {
  // final String description;

  const WithDrawButton();
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context, listen: false);
    return RaisedButton(
        onPressed: () {
          ExtendedNavigator.of(context).pushWithdrawScren(user: user);
        },
        color: TfColors.secondary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Transform.translate(
                offset: const Offset(-15, 0),
                child: const Icon(
                  TfIcons.round_lock,
                  color: TfColors.primary,
                )),
            // const SizedBox(width: 5),
            Text(
              "Withdraw".i18n,
              // style: .deposit(size),
              style: const TextStyle(color: TfColors.primary),
            ),
            Transform.translate(
                offset: const Offset(15, 0),
                child: const Icon(
                  TfIcons.red_arrow_up,
                  color: TfColors.red,
                )),
          ],
        ));
  }
}
