import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/user/user.dart';
import '../../routes/router.gr.dart';
import '../core/assets/colors.dart';
import '../core/icons/TfIcons_icons.dart';
import '../core/translations/translations.i18n.dart';

class DepositButton extends StatelessWidget {
  // final String description;

  const DepositButton();
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context, listen: false);
    return RaisedButton(
        onPressed: () {
          ExtendedNavigator.of(context).pushDepositScreen(user: user);
        },
        color: TfColors.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Transform.translate(
                offset: const Offset(-15, 0),
                child: const Icon(
                  TfIcons.round_lock,
                  // size: 18,
                  color: TfColors.secondary,
                )),
            // const SizedBox(width: 5),
            Text(
              "Deposit".i18n,
              // style: .deposit(size),
            ),
            Transform.translate(
                offset: const Offset(15, 0),
                child: const Icon(
                  TfIcons.green_arrow_down,
                  // size: 18,
                  color: TfColors.green,
                )),
          ],
        ));
  }
}
