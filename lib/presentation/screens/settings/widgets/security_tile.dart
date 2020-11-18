import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../core/assets/colors.dart';
import '../../../core/icons/TfIcons_icons.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';

class SecurityTile extends HookWidget {
  const SecurityTile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final defaultLang = useState("French");
    final ValueNotifier<bool> smartFundIsOn = useState(false);
    final ValueNotifier<bool> bgAppLockIsOn = useState(false);
    final ValueNotifier<bool> twoFAIsOn = useState(false);

    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Security".i18n,
            style: SettingsTextStlyles.tileHeader(size),
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              const PasswordTile(),
              const SizedBox(height: 10),
              SettingTile(
                icon: TfIcons.dollar,
                description: "User smart funds".i18n,
                value: smartFundIsOn,
              ),
              const SizedBox(height: 10),
              SettingTile(
                icon: TfIcons.lock_app,
                description: "Background app lock".i18n,
                value: bgAppLockIsOn,
              ),
              const SizedBox(height: 10),
              SettingTile(
                icon: TfIcons.two2FA,
                description: "Enable 2FA".i18n,
                value: twoFAIsOn,
              ),
            ],
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

class PasswordTile extends StatelessWidget {
  const PasswordTile();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        // TODO:
      },
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          const Icon(
            TfIcons.lock
           
          ),
          SizedBox(width: size.width * 0.03),
          Text("Change Password".i18n,
              style: SettingsTextStlyles.description(size)),
        ],
      ),
    );
  }
}

class SettingTile extends StatelessWidget {
  final IconData icon;
  final ValueNotifier<bool> value;
  final String description;
  const SettingTile({
    Key key,
    @required this.description,
    @required this.icon,
    @required this.value,
  });
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            if (icon == TfIcons.dollar)
              Transform.translate(
                offset: const Offset(-3, 0),
                child: Icon(
                  icon,
                  size: 26,
                ),
              )
            else
              Icon(
                icon
              ),
            SizedBox(width: size.width * 0.03),
            Text(description.i18n,
                style: SettingsTextStlyles.description(size)),
            // const SizedBox(height: 5),
          ],
        ),
        Row(
          children: [
            CupertinoSwitch(
              activeColor: TfColors.primary,
              value: value.value,
              onChanged: (_value) {
                // TODO:

                value.value = _value;
              },
            ),
          ],
        ),
      ],
    );
  }
}
