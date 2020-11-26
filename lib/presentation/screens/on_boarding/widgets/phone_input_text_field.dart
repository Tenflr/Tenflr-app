import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:package_info/package_info.dart';

import '../../../../domain/core/constant_list.dart';
import '../../../core/assets/colors.dart';
import '../../../core/styles/text_styles.dart';

class PhoneInputTextField extends HookWidget {
  final ValueNotifier textController;
  final double width;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final void Function(PhoneNumber) onInputChanged;
  final TextEditingController controller;
  final AutovalidateMode autovalidateMode;

  const PhoneInputTextField(
      {Key key,
      this.width,
      this.textController,
      this.focusNode,
      this.textInputAction,
      @required this.onInputChanged,
      this.controller,
      this.autovalidateMode})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    String flavor = "com.tenflr.tenflrPay";

    PackageInfo.fromPlatform().then((value) => flavor = value.packageName);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: width ?? size.width * 0.65,
      decoration: BoxDecoration(
        color: TfColors.secondary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: InternationalPhoneNumberInput(
          autoValidateMode: autovalidateMode,
          ignoreBlank: true,
          textFieldController: controller,
          countries: flavor != "com.tenfr.tenflrPay"? null : KCountries,
          onInputChanged: onInputChanged,

          // keyboardAction: textInputAction,
          selectorConfig: const SelectorConfig(
              selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
          focusNode: focusNode,
          keyboardAction: textInputAction ?? TextInputAction.continueAction,
          initialValue: PhoneNumber(isoCode: 'CM'),
          inputDecoration: WelcomeScreenTextStyles.phoneInputDecoration(size)),
    );
  }
}
