import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../domain/user/user.dart';
import '../../../../routes/router.gr.dart';
import '../../../core/assets/svg.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/button.dart';

class TrustedPaymentInitialScreen extends StatelessWidget {
  const TrustedPaymentInitialScreen();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final User user = Provider.of<User>(context, listen:false);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(),
          // Image.asset(TfImages.trustedpay),
          SvgPicture.asset(TfSvg.trustedpay),
          const SizedBox(),
          Button(
            onPressed: () {
              ExtendedNavigator.of(context).pushSendTrustedPaymentScreen(user :user);
            },
            description: "Make a Trusted Payment".i18n,
            width: size.width * 0.7,
          ),
        ],
      ),
    );
  }
}
