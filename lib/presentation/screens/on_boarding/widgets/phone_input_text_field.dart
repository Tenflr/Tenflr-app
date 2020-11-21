import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../../../application/auth/login_bloc/login_bloc.dart';
import '../../../../application/auth/user_detail_bloc/user_detail_bloc.dart';
import '../../../../domain/core/constant_list.dart';
import '../../../../domain/core/valid_objects.dart';
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
    // final FocusNode focusNode = useFocusNode();
    // final TextEditingController _phoneNumberController =
    //     useTextEditingController();
    // final ValueNotifier<PhoneNumber> _numb =
    //     useState<PhoneNumber>(PhoneNumber(isoCode: 'CM'));

    // debugPrint("Is number Valid: ${_numb.value.phoneNumber}");

    final Size size = MediaQuery.of(context).size;
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
          countries: KCountries,
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
