import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../core/assets/colors.dart';
import '../../../core/icons/TfIcons_icons.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';

class CommonTile extends HookWidget {
  const CommonTile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final defaultLang = useState("French");
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Common".i18n,
            style: SettingsTextStlyles.tileHeader(size),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              // TODO:
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                const Icon(
                  TfIcons.globe,
                ),
                SizedBox(width: size.width * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Language".i18n,
                        style: SettingsTextStlyles.description(size)),
                    const SizedBox(height: 5),
                    Text(defaultLang.value.i18n,
                        style: SettingsTextStlyles.value(size)),
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: TfColors.secondary,
            thickness: 2,
            height: size.height * 0.07,
          ),
        ],
      ),
    );
  }
}
