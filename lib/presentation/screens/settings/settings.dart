import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'widgets/common_tile.dart';
import 'widgets/misc_tile.dart';
import 'widgets/security_tile.dart';
import 'widgets/settings_app_bar.dart';

class SettingsScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // final defaultLang = useState("French");
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
              child: Column(
          children: [
            const SettingsAppBar(),
            const CommonTile(),
            const SecurityTile(),
            const MiscTile(),
          ],
        ),
      ),
    );
  }
}
