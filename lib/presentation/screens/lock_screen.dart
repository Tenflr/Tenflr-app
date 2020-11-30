import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pinput/pin_put/pin_put.dart';

import '../../application/lock_screen_bloc/lock_screen_bloc.dart';
import '../../domain/core/settings.dart';
import '../../injection.dart';
import '../core/assets/colors.dart';
import '../core/assets/images.dart';
import '../core/translations/translations.i18n.dart';
import '../../routes/router.gr.dart';

class LockScreen extends HookWidget {
  static const String id = "VaultDoorScreen";

  const LockScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MySettings _settings = getIt<MySettings>();
    if (_settings.getTrustedPayPin == "2580") {
      BotToast.showText(text: 'Default pin is 2580'.i18n);
    }
    final focusNode = useFocusNode();
    final pinController = useTextEditingController();
    final Size size = MediaQuery.of(context).size;
    final BoxDecoration pinPutDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: TfColors.primary));
    return Padding(
      padding: EdgeInsets.only(top: size.width * 0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.2,
            width: size.width * 0.4,
            // child: SvgPicture.asset("assets/images/VaultDoor@3x.svg")),
            child: Image.asset(TfImages.vault),
            // child: SvgPicture.asset(TfSvg.vault, color: TfColors.primary,),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Text('Enter your Pin'.i18n,
              style: TextStyle(fontSize: size.width * 0.054)),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.14,
              vertical: size.height * .015,
            ),
            child: Center(
              child: PinPut(
                controller: pinController,
                focusNode: focusNode,
                obscureText: '⚈',
                eachFieldWidth: size.width * 0.14,
                eachFieldHeight: size.height * 0.08,
                submittedFieldDecoration: pinPutDecoration,
                selectedFieldDecoration: pinPutDecoration,
                followingFieldDecoration: pinPutDecoration.copyWith(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: TfColors.blue),
                ),

                pinAnimationType: PinAnimationType.rotation,
                textStyle: const TextStyle(fontSize: 25),
                // onClear: (String pin) => {},
                fieldsCount: 4,
                onSubmit: (String val) {
                  if (val == getIt<MySettings>().getTrustedPayPin) {
                    context
                        .bloc<LockScreenBloc>()
                        .add(LockScreenEvent.unlock(val));
                    if (_settings.getTrustedPayPin == "2580") {
                      ExtendedNavigator.of(context).pushChangePinScreen();
                    }
                  } else {
                    BotToast.showText(text: "Wrong Pin. Try again".i18n);
                    pinController.clear();
                  }
                },
              ),
            ),
          ),
          // SizedBox(
          //   height: size.height * .005,
          // ),
          GestureDetector(
            onTap: () {
              context
                  .bloc<LockScreenBloc>()
                  .add(const LockScreenEvent.unlock(''));
            },
            child: Container(
                height: size.height * 0.3,
                width: size.width * 8,
                alignment: Alignment.bottomCenter,
                child: const FlareActor('assets/flare/finger_print.flr',
                    animation: 'Animations')),
          ),
        ],
      ),
    );
  }
}
