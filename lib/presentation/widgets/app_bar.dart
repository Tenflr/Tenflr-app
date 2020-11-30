import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TfAppBar extends HookWidget {
  final Widget leading;
  final Widget description;
  final Widget trailing;

  const TfAppBar(
      {@required this.leading,
      @required this.description,
      @required this.trailing});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        top:  Platform.isIOS && size.height >= 812 ? size.height * 0.04: size.height * 0.025,
        right: size.width * 0.03,
        left: size.width * 0.03,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading,
          description,
          trailing,
        ],
      ),
    );
  }
}
