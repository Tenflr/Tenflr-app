import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/assets/colors.dart';
import '../../../core/icons/TfIcons_icons.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/stars_rating.dart';

class MiscTile extends HookWidget {
  const MiscTile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final defaultLang = useState("French");
    // final ValueNotifier<bool> smartFundIsOn = useState(false);
    // final ValueNotifier<bool> bgAppLockIsOn = useState(false);
    // final ValueNotifier<bool> twoFAIsOn = useState(false);

    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Misc".i18n,
            style: SettingsTextStlyles.tileHeader(size),
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              const RateUsTile(),
              const SizedBox(height: 10),
              const TermsOfUseTile(),
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

class RateUsTile extends StatelessWidget {
  const RateUsTile();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        // TODO:
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              const Icon(
                Icons.star_half,
              ),
              SizedBox(width: size.width * 0.03),
              Text("Rate Us".i18n,
                  style: SettingsTextStlyles.description(size)),
            ],
          ),
          const Stars(),
        ],
      ),
    );
  }
}



class TermsOfUseTile extends StatelessWidget {
  const TermsOfUseTile();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: _launchURL,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          const Icon(
            TfIcons.files,
          ),
          SizedBox(width: size.width * 0.03),
          Text("Terms of Use".i18n,
              style: SettingsTextStlyles.description(size)),
        ],
      ),
    );
  }

  _launchURL() async {
    const url = 'https://tenflr.com/terms.html';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
