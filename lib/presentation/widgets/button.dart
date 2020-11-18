import 'package:flutter/material.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';

import '../core/styles/decorations.dart';
import '../core/styles/text_styles.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String description;
  final bool toRight;
  final double width;
  final bool isSecondaryButton;
  final Widget child;

  const Button(
      {Key key,
      this.isSecondaryButton = false,
      @required this.onPressed,
      @required this.description,
      this.toRight,
      this.width, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
final  Widget _child = RaisedButton(
        onPressed: onPressed,
        color: isSecondaryButton? TfColors.background: null,
        
        // padding: EdgeInsets.symmetric(vertical: 10, horizontal:20),
        shape: ButtonShapeBorder.shape(toRight),
        child: child ?? Text(
          description,
          style: ButtonTextStyle.description(size, isSecondaryButton),
        ));
    if(width != null ) {
      return Container(width: width,child: _child);
    } else {
      return _child ;
    }
  }
}
