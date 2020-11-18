import 'package:flutter/material.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/translations/translations.i18n.dart';

class MoreInfoTextStyle {
  static TextStyle  title(Size size) => const TextStyle(
        // fontFamily: 'Helvetica',
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );
}

class OnboradingTextStyles {
  static TextStyle get onboardingTitle => const TextStyle(
        // fontFamily: 'Helvetica',
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get onboardingDescription => const TextStyle(
        // fontFamily: 'Helvetica',
        fontSize: 17,
        fontWeight: FontWeight.w300,
      );
}

class WelcomeScreenTextStyles {
  static TextStyle title(Size size) => TextStyle(
        fontFamily: 'BrushScript',
        fontSize: size.width * 0.13,
        // color: TfColors.primary,
      );
  static TextStyle terms(Size size) => TextStyle(
        // fontFamily: 'BrushScript',
        fontSize: size.width * 0.025,
      );

  static InputDecoration phoneInputDecoration(Size size) =>
      InputDecoration(hintText: "Phone number".i18n, border: InputBorder.none);
}

class SettingsTextStlyles {
  static TextStyle title(Size size) => TextStyle(
        // fontFamily: 'BrushScript',
        fontSize: size.width * 0.06,
        // fontWeight: FontWeight.bold,
      );
  static TextStyle tileHeader(Size size) => TextStyle(
        // fontFamily: 'BrushScript',
        // color: TfColors.grey,
        fontSize: size.width * 0.05,
        fontWeight: FontWeight.w300,
      );
  static TextStyle description(Size size) => TextStyle(
        // fontFamily: 'BrushScript',
        // color: TfColors.grey,
        fontSize: size.width * 0.055,
        // fontWeight: FontWeight.bold,
      );
  static TextStyle value(Size size) => TextStyle(
        // fontFamily: 'BrushScript',
        // color: TfColors.grey,
        fontSize: size.width * 0.045,
        // fontWeight: FontWeight.bold,
      );
}

class TenflrPayCardTextStyle {
  static TextStyle title(Size size) => TextStyle(
        // fontFamily: 'BrushScript',
        color: TfColors.lightBlue,
        fontSize: size.width * 0.06,
        // fontWeight: FontWeight.bold,
      );
  static TextStyle number(Size size) => TextStyle(
        fontFamily: 'Apple Symbols',
        // color: TfColors.lightBlue,
        color: TfColors.blue,
        fontSize: size.width * 0.03,
        // fontWeight: FontWeight.bold,
      );
  static TextStyle email(Size size) => TextStyle(
        fontFamily: 'Apple Symbols',
        color: TfColors.blue,
        fontSize: size.width * 0.03,
        // fontWeight: FontWeight.bold,
      );
  static TextStyle amount(Size size) => TextStyle(
        fontFamily: 'Apple Symbols',
        // color: TfColors.blue,
        fontSize: size.width * 0.1,
        fontWeight: FontWeight.w100,
      );

  static TextStyle deposit(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols' ,
        color: TfColors.primary,
        fontSize: size.width * 0.04,
        // fontWeight: FontWeight.w100,
      );

  static TextStyle history(Size size) => TextStyle(
        fontFamily: 'Apple Symbols',
        // color: TfColors.blue,
        fontSize: size.width * 0.03,
        fontWeight: FontWeight.w300,
      );
}

class DashBoardTextStyle {
  static TextStyle description(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        // color: TfColors.blue,
        fontSize: size.width * 0.04,
        // fontWeight: FontWeight.w300,
      );
}

class DrawerTextStyle {
  static TextStyle userName(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        // color: TfColors.blue,
        fontSize: size.width * 0.05,
        // fontWeight: FontWeight.w300,
      );
  static TextStyle identifier(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        // color: TfColors.blue,
        fontSize: size.width * 0.03,
        // fontWeight: FontWeight.w300,
      );
  static TextStyle tileNames(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        color: TfColors.primary,
        fontSize: size.width * 0.04,
        fontWeight: FontWeight.w300,
      );
}

class MoneyInputFieldTextStyle {
  static TextStyle sufix(Size size) => TextStyle(
        fontFamily: 'Apple Symbols',
        color: TfColors.primary,
        fontSize: size.width * 0.05,
        fontWeight: FontWeight.w300,
      );
  static TextStyle hint(Size size) => TextStyle(
        fontFamily: 'Apple Symbols',
        color: TfColors.primary,
        fontSize: size.width * 0.05,
        fontWeight: FontWeight.w300,
      );
  static TextStyle label(Size size) => TextStyle(
        fontFamily: 'Apple Symbols',
        color: TfColors.primary,
        fontSize: size.width * 0.065,
        fontWeight: FontWeight.w400,
      );
}

class DepositScreenTextStyle {
  static TextStyle cardTitle(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        color: TfColors.primary,
        fontSize: size.width * 0.04,
        fontWeight: FontWeight.w600,
      );
}

class ButtonTextStyle {
  static TextStyle description(Size size, bool isSecondaryButton) => TextStyle(
        // fontFamily: 'Apple Symbols',
        color: isSecondaryButton ? TfColors.primary : TfColors.secondary,
        fontSize: size.width * 0.05,
        fontWeight: FontWeight.w300,
      );
}

class BudgetScreensStyle {
  static TextStyle tileTitle(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        // color: TfColors.p,
        fontSize: size.width * 0.05,
        fontWeight: FontWeight.w500,
      );
  static TextStyle tileSubTitle(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        // color: TfColors.p,
        // fontSize: size.width * 0.05,
        fontWeight: FontWeight.w500,
      );
  static TextStyle locked(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        color: TfColors.red,
        // fontSize: size.width * 0.05,
        fontWeight: FontWeight.w500,
      );
  static TextStyle cash(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        color: TfColors.green,
        // fontSize: size.width * 0.05,
        fontWeight: FontWeight.w500,
      );
}

class SavingsScreenTextStyle {
  static TextStyle createDescription(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        // color: TfColors.p,
        fontSize: size.width * 0.05,
        fontWeight: FontWeight.w600,
      );
  static TextStyle add(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        // color: TfColors.p,
        fontSize: size.width * 0.05,
        fontWeight: FontWeight.w500,
      );
  static TextStyle addSavingsDescription(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        // color: TfColors.p,
        fontSize: size.width * 0.04,
        fontWeight: FontWeight.w500,
      );
}

class TrustedPayScreenTextStyles {
  static TextStyle key(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        color: TfColors.grey,
        // fontSize: size.width * 0.05,
        fontWeight: FontWeight.w400,
      );
  static TextStyle value(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        // color: TfColors.p,
        fontSize: size.width * 0.04,
        fontWeight: FontWeight.w500,
      );
  static TextStyle rateUser(Size size) => TextStyle(
        // fontFamily: 'Apple Symbols',
        color: TfColors.primary,
        fontSize: size.width * 0.04,

        fontWeight: FontWeight.w400,
      );
  static TextStyle status(Size size, bool isRed) => TextStyle(
        // fontFamily: 'Apple Symbols',
        color: isRed ? TfColors.red : TfColors.green,
        fontSize: size.width * 0.04,
        fontWeight: FontWeight.w500,
      );
}
