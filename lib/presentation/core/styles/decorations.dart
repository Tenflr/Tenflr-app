import 'package:flutter/widgets.dart';

import '../assets/colors.dart';
import 'shadows.dart';

class MainViewsDecoration {
  static Decoration homeBorderDec(Size size, ValueNotifier<bool> drawerOpen) =>
      BoxDecoration(
          color: TfColors.background,
          borderRadius:
              BorderRadius.circular(drawerOpen.value ? size.width * 0.05 : 0),
          boxShadow: !drawerOpen.value ? null : TfShadow.shadow);
}

class DefaultDecoration {
  static Decoration get all => BoxDecoration(
      color: TfColors.secondary,
      borderRadius: BorderRadius.circular(5),
      boxShadow: TfShadow.shadow);

  static Decoration get left => BoxDecoration(
      color: TfColors.secondary,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
      boxShadow: TfShadow.left);
  static Decoration get right => BoxDecoration(
      color: TfColors.secondary,
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
      boxShadow: TfShadow.right);
}

class ButtonShapeBorder {
  static ShapeBorder shape(bool direction) => RoundedRectangleBorder(
      borderRadius: direction == null
          ? const BorderRadius.all(Radius.circular(5))
          : direction
              ? const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
              : const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )
      // borderWidth: 10.0,
      );
}
