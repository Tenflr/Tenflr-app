import 'package:flutter/material.dart';

class DefaultPrimaryButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const DefaultPrimaryButton(
      {Key key, @required this.child, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.06,
      width:  size.width * 0.75,
      child: RaisedButton(
        elevation: 3,
      

        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
