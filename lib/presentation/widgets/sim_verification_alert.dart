import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

import '../../application/auth/login_bloc/login_bloc.dart';
import '../core/translations/translations.i18n.dart';

Future<void> smsCodeDialog(BuildContext context, {LoginBloc bloc}) {
  final Size size = MediaQuery.of(context).size;
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Sim Verification".i18n,
            style: TextStyle(
              fontSize: size.width * 0.065,
              fontFamily: "Circular",
            ),
          ),
          content: Container(
            // height: size.height * 0.35,
            width: size.width * 0.9,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.0081,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child: Text(
                    "A verification code has been sent to %s,\nEnter the code to verify..."
                        .i18n
                        .fill([bloc.state.phoneNumber.getOrCrash()]),
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Circular",

                      // color: AppColors.primaryText,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  // height: size.height * 0.06,
                  width: size.width * 0.7,
                  // color: Colors.white,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: PinEntryTextField(
                        // fieldWidth: size.width * 0.11,
                        fields: 6,
                        showFieldAsBox: true,
                        onSubmit: (String pin) async {
                          await bloc.add(LoginEvent.verifyOTP(otp: pin));
                          Navigator.of(context).pop();
                        }),
                  ),
                ),
              ],
            ),
          ),
          contentPadding: EdgeInsets.all(size.width * 0.01),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                bloc.add(const LoginEvent.cancelledByUser());
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.cancel,
                // color: AppColors.kCardColor100,
                size: size.width * 0.08,
              ),
            ),
          ],
        );
      });
}
