import 'package:flutter/material.dart';

import '../../../core/icons/TfIcons_icons.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/app_bar.dart';

class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return TfAppBar(
      leading: IconButton(
          icon: const Icon(
            TfIcons.arrow_back
         
          ),
          onPressed: () {
            Navigator.of(context).pop();
          }),
      description: Text("Settings".i18n, style: SettingsTextStlyles.title(size)),
      trailing: const Opacity(
        opacity: 0,
        child: IconButton(
            icon: Icon(
              TfIcons.arrow_back,
            ),
            onPressed: null),
      ),
    );
  }
}
