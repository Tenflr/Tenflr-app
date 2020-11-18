import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tenflrpay/presentation/core/assets/svg.dart';

import '../../../core/assets/images.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/button.dart';

class TrustedPaymentInitialScreen extends StatelessWidget {
  const TrustedPaymentInitialScreen();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(),
          // Image.asset(TfImages.trustedpay),
          SvgPicture.asset(TfSvg.trustedpay),
          const SizedBox(),
          Button(
            onPressed: () {},
            description: "Make a Trusted Payment".i18n,
            width: size.width * 0.7,
          ),
        ],
      ),
    );
  }
}
