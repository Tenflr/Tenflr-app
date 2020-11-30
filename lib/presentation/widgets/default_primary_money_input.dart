import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../core/styles/decorations.dart';
import '../core/styles/text_styles.dart';

class DefaultPrimaryMoneyInput extends HookWidget {
  final String svgPath;
  final double width;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final String hintText;
  final FocusNode focusNode;
  final List<TextInputFormatter> currencyFormatter;
  final String initialValue;
  // final MoneyMaskedTextController moneyMaskEditingController;
  final TextEditingController controller;
  final String Function(String) validator;
  final dynamic Function(String) onChanged;
  final void Function() onEditingComplete;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;

  const DefaultPrimaryMoneyInput(
      {this.hintText,
      this.focusNode,
      this.currencyFormatter, 
      this.initialValue = '10,000.0',
      // @required this.moneyMaskEditingController,
      this.validator,
      this.onChanged,
      this.onEditingComplete,
      this.textInputAction,
      this.keyboardType,
      this.padding,
      this.margin,
      this.controller,
      this.width,
      Key key,
      @required this.svgPath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final _currencyFormatter = CurrencyTextInputFormatter(decimalDigits: 1);
    // final currencyFormatter = CurrencyTextInputFormatter(decimalDigits: 2, );
    // final maskFormatter = MaskTextInputFormatter(mask: '###,###,###', filter: { "#": RegExp(r'[0-9]') });

    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      // height: 100,
      width: width ?? size.width * 0.8,
      decoration: DefaultDecoration.all,
      child: Stack(
        // mainAxisSize: MainAxisSize.min,
        children: [
          if (svgPath != null)
            Transform.translate(
                offset: const Offset(5, 5), child: SvgPicture.asset(svgPath)),
          TextFormField(
            textAlign: TextAlign.end,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            textInputAction: textInputAction,
            focusNode: focusNode,
            initialValue: controller == null ? initialValue : null,
            // validator: ,
            controller: controller,
            inputFormatters: currencyFormatter ?? [_currencyFormatter],

            // controller: moneyMaskEditingController,
            // inputFormatters: [maskFormatter],
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText ?? "0.0",
                suffixText: ' XAF',
                hintStyle: MoneyInputFieldTextStyle.hint(size),
                suffixStyle: MoneyInputFieldTextStyle.sufix(size),
                labelStyle: MoneyInputFieldTextStyle.label(size)),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
