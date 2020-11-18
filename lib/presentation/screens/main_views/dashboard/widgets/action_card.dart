import 'package:flutter/material.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';

class MyCard extends StatelessWidget {
  final String imagePath;
  final String description;
  final VoidCallback onPressed;

  const MyCard(
      {Key key,
      @required this.imagePath,
      @required this.description,
      @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed,
      child: RotatedBox(
        quarterTurns: 1,
        child: Container(
          decoration: DefaultDecoration.all,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          // width: size.width * 0.2,
          height: size.height * 0.21,
          // color: TfColors.secondary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(imagePath, scale: 1.3,),
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
