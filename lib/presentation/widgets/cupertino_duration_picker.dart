import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';
import '../core/translations/translations.i18n.dart';

class CupertinoDurationPicker extends HookWidget {
  const CupertinoDurationPicker();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Select the duration...'.i18n),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: DefaultDecoration.left,
                width: size.width * 0.2,
                height: size.height * 0.1,
                child: CupertinoPicker(
                  // scrollController:  scrollController,

                  backgroundColor: TfColors.secondary,
                  itemExtent: 40,
                  onSelectedItemChanged: (_) {},
                  children: const [
                    Text('1'),
                    Text('2'),
                    Text('3'),
                  ],
                ),
              ),
              Container(
                decoration: DefaultDecoration.right,
                width: size.width * 0.3,
                height: size.height * 0.1,
                child: CupertinoPicker(
                  // scrollController:  scrollController,

                  backgroundColor: TfColors.secondary,
                  itemExtent: 40,
                  onSelectedItemChanged: (_) {},
                  children:  [
                    Text('days'.i18n),
                    Text('weeks'.i18n),
                    Text('months'.i18n),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
