import 'package:flutter/material.dart';

import '../assets/colors.dart';

class TfShadow {
  static List<BoxShadow> shadow = [
    const BoxShadow(color: TfColors.background, blurRadius: 2, spreadRadius: 2)
  ];
  
  static List<BoxShadow> right = [
    const BoxShadow(
        offset: Offset(5, 0),
        color: TfColors.background,
        blurRadius: 2,
        spreadRadius: 2)
  ];
  static List<BoxShadow> left = [
    const BoxShadow(
        offset: Offset(0, 5),
        color: TfColors.background,
        blurRadius: 2,
        spreadRadius: 2)
  ];
}
