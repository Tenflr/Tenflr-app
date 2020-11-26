import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../core/assets/colors.dart';
import '../core/icons/TfIcons_icons.dart';
import '../core/styles/decorations.dart';
import '../core/translations/translations.i18n.dart';

class DefaultPrimaryTextInputField extends HookWidget {
  final String description;
  final bool canVerify;
  final int maxLength;
  final String hintText;
  final bool canEdit;
  final FocusNode focusNode;
  final TextEditingController controller;
  final String Function(String) validator;
  final dynamic Function(String) onChanged;
  final void Function() onEditingComplete;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;

  const DefaultPrimaryTextInputField(
      {this.focusNode,
      this.maxLength,
      this.keyboardType,
      this.onEditingComplete,
      this.textInputAction,
      this.onChanged,
      this.validator,
      this.controller,
      this.canEdit = false,
      this.hintText,
      this.canVerify = false,
      Key key,
      this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final isVerified = useState(false);

    return Container(
      width: size.width * 0.8,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(
          bottom: canVerify ? size.height * 0.05 : size.height * 0.02),
      decoration: DefaultDecoration.all,
      child: Stack(
        children: [
          Transform.translate(
              offset: const Offset(5, -10), child: Text(description.i18n)),
          Container(
            margin: EdgeInsets.only(right: size.width * 0.05),
            child: TextFormField(
              maxLength: maxLength,
              buildCounter: (context, {currentLength, isFocused, maxLength}) {
                if (maxLength != null && currentLength > maxLength) {
                  controller?.text = controller?.text?.substring(0, 20);
                  return  Text("Max lenght reached".i18n,
                      style: TextStyle(
                        color: TfColors.red,
                      ));
                }
                return null;
              },
              controller: controller,
              onChanged: onChanged,
              focusNode: focusNode,
              onEditingComplete: onEditingComplete,
              textInputAction: textInputAction,
              validator: validator,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: const TextStyle(
                      color: TfColors.primary, fontFamily: 'Apple Symbols')),
              textAlign: TextAlign.end,
              cursorColor: TfColors.primary,
            ),
          ),
          if (!isVerified.value && canEdit)
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Transform.translate(
                  offset: const Offset(15, 0),
                  child: const Icon(
                    TfIcons.edit,
                    size: 15,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          if (!isVerified.value && canVerify)
            Align(
              alignment: Alignment.bottomRight,
              child: Transform.translate(
                offset: const Offset(0, 45),
                child: Container(
                  height: 25,
                  child: RaisedButton(
                    onPressed: () {},
                    elevation: 3,
                    child: Text("Verify".i18n),
                    // shape: Recta(),
                  ),
                ),
              ),
            ),
          if (isVerified.value && canVerify)
            Align(
              alignment: Alignment.bottomRight,
              child: Transform.translate(
                  offset: Offset(0, 35),
                  child: Icon(
                    Icons.check,
                    color: TfColors.green,
                  )),
            ),
        ],
      ),
    );
  }
}
