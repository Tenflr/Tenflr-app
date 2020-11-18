import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';
import '../core/translations/translations.i18n.dart';

class CupertinoFrequencyPicker extends HookWidget {
  const CupertinoFrequencyPicker();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Align(
      // alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Text('What is the frequency of the payment you need?'.i18n),
          const SizedBox(height: 10),
          Container(
            decoration: DefaultDecoration.all,
            width: size.width * 0.4,
            height: size.height * 0.1,
            child: CupertinoPicker(
              // scrollController:  scrollController,

              backgroundColor: TfColors.secondary,
              itemExtent: 40,
              onSelectedItemChanged: (_) {},
              children: [
                Center(child: Text('daily'.i18n)),
                Center(child: Text('weekly'.i18n)),
                Center(child: Text('monthly'.i18n)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
