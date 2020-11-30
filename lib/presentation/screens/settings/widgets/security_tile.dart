import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tenflrpay/application/settings_bloc/settings_bloc.dart';
import 'package:tenflrpay/domain/core/settings.dart';

import '../../../../injection.dart';
import '../../../core/assets/colors.dart';
import '../../../core/icons/TfIcons_icons.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../../routes/router.gr.dart';

class SecurityTile extends HookWidget {
  const SecurityTile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final defaultLang = useState("English".i18n);
    final MySettings _settings = getIt<MySettings>();
    final ValueNotifier<bool> smartFundIsOn = useState(_settings.isSmartFundsActive);
    final ValueNotifier<bool> bgAppLockIsOn = useState(_settings.isLockEnabled);
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
                onChanged: (value) {
                  context
                      .bloc<SettingsBloc>()
                      .add(SettingsEvent.updateSmartFunds(value));
                  smartFundIsOn.value = !smartFundIsOn.value;
                },
              ),
              const SizedBox(height: 10),
              SettingTile(
                icon: TfIcons.lock_app,
                description: "Background app lock".i18n,
                value: bgAppLockIsOn,
                onChanged: (value) {
                  context
                      .bloc<SettingsBloc>()
                      .add(SettingsEvent.enableAppLock(value));
                  bgAppLockIsOn.value = !bgAppLockIsOn.value;
                },
              ),
              const SizedBox(height: 10),
              SettingTile(
                icon: TfIcons.two2FA,
                description: "Enable 2FA".i18n,
                value: twoFAIsOn,
                onChanged: (value) {
                  BotToast.showText(text: "Coming Soon".i18n);
                },
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
        ExtendedNavigator.of(context).pushChangePinScreen();
      },
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          const Icon(TfIcons.lock),
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
  final void Function(bool) onChanged;
  final String description;
  const SettingTile({
    Key key,
    @required this.onChanged,
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
              Icon(icon),
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
              onChanged: onChanged,
            ),
          ],
        ),
      ],
    );
  }
}
