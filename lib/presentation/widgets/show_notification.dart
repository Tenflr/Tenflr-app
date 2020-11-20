import 'package:flutter/material.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';
import '../core/translations/translations.i18n.dart';

Future<void> showNotif(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          // height: size.height ,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              color: TfColors.background),
          child: Stack(
            alignment: Alignment(0, 0),
            overflow: Overflow.visible,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Notifications',
                    style: SettingsTextStlyles.tileHeader(size),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications_off_outlined,
                        size: size.width * 0.3),
                    Text('You have no notification at the moment.'.i18n,
                        style: SettingsTextStlyles.value(size))
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
