import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';

class MyCard extends StatelessWidget {
  final String svgPath;
  final String description;
  final VoidCallback onPressed;
  final bool rotate;

  const MyCard(
      {Key key,
      @required this.svgPath,
      this.rotate = true,
      @required this.description,
      @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed,
      child: RotatedBox(
        quarterTurns: rotate? 1 :0,
        child: Container(
          decoration: DefaultDecoration.all,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          width: size.width * 0.41,
          height: size.width * 0.41,
          // color: TfColors.secondary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(svgPath, ),
              Text(
                description.i18n,
                textAlign: TextAlign.center,
                softWrap: true,
                style: DashBoardTextStyle.description(size),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
