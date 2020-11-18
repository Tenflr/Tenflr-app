import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../application/auth/auth_bloc/authentication_bloc.dart';
import '../../../application/auth/login_bloc/login_bloc.dart';
import '../../../injection.dart';
import '../../core/assets/images.dart';
import '../../core/styles/text_styles.dart';
import '../../core/translations/translations.i18n.dart';
import '../../widgets/progess_overlay_screen.dart';
import '../../widgets/sim_verification_alert.dart';
import 'widgets/continue_with_google_button.dart';
import 'widgets/continue_with_phone_button.dart';
import 'widgets/phone_input_text_field.dart';

class WelcomeLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: BlocProvider<LoginBloc>(
        create: (context) => getIt<LoginBloc>(),
        child: SafeArea(child: WelcomeLoginForm()),
      ),
    );
  }
}

class WelcomeLoginForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final phoneController = useTextEditingController();

    final _number = useState(PhoneNumber(isoCode: 'CM'));
    final Flushbar loading = FlushbarHelper.createLoading(
        message: 'Logging In...'.i18n,
        linearProgressIndicator: const LinearProgressIndicator(),
        duration: const Duration(seconds: 35));
    return BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
              loading?.dismiss();
              FlushbarHelper.createError(
                title: "Error Occurred 😨",
                duration: const Duration(seconds: 5),
                message: failure.map(
                  phoneVerificationFailed: (_) =>
                      "Phone auth failed, Please contact support".i18n,
                  cancelledByUser: (_) => "Cancelled By User".i18n,
                  serverError: (_) => "Server error occurred!".i18n,
                  wrongPinEntered: (_) => "You entered a wrong pin!".i18n,
                  userDisable: (_) => "User disabled".i18n,
                  accountExistWithDifferentCredential: (_) =>
                      "An account exist with different credentials!".i18n,
                  operationNotAllowed: (_) => "Operation not allowed".i18n,
                  invalidAction: (_) => "Invalid action!".i18n,
                  invalidCredential: (_) => "Invalid credential!".i18n,
                  userCouldNotBeDeleted: (_) =>
                      "The user couldn't be deleted: Either operation failed or user doesn't exist"
                          .i18n,
                  invalidVerificationCode: (_) =>
                      "You entered an invalid verification Code!".i18n,
                  userNotFound: (_) => "User not found!".i18n,
                  errorVerificationCode: (_) =>
                      "You entered an incorrect verification code! Please try again!!"
                          .i18n,
                  emailUsedOnAnotherDevice: (_) =>
                      "This account is used on another device!".i18n,
                  telUsedOnAnotherDevice: (_) =>
                      "This account is used on another device!".i18n,
                  insufficientPermissions: (_) =>
                      "Insufficient permission. Please contact support".i18n,
                  unexpected: (_) => "An unexpected error occurred".i18n,
                  userCouldNotBeCreated: (_) =>
                      'Your account could not be created. Please contact support'
                          .i18n,
                ),
              ).show(context);
            }, (r) {
              // navigate to get more info
              context
                  .bloc<AuthenticationBloc>()
                  .add(const AuthenticationEvent.authCheckRequested());
            }),
          );

          if (state.isSubmitting) {
            loading?.dismiss();
            loading.show(context);
          }
          if (state.otpSent) {
            smsCodeDialog(context, bloc: context.bloc<LoginBloc>());
          }
        },
        buildWhen: (p, c) =>
            p.showErrorMessages != c.showErrorMessages ||
            p.phoneNumber != c.phoneNumber ||
            p.isSubmitting != c.isSubmitting,
        builder: (context, state) {
          // _phoneNumberController.selection = TextSelection.fromPosition(
          //     TextPosition(offset: _phoneNumberController.text.length));

          return Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(TfImages.backgroundImage),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: size.height * 0.2),
                        child: Text(
                          'Tenflr',
                          style: WelcomeScreenTextStyles.title(size),
                        ),
                      ),
                      Column(
                        children: [
                          PhoneInputTextField(
                            width: size.width * 0.75,
                            controller: phoneController,
                            textInputAction: TextInputAction.done,
                            onInputChanged: (PhoneNumber number) {
                              phoneController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset: phoneController.text.length));
                              _number.value = number;

                              if (number.phoneNumber.length > 11) {
                                context.bloc<LoginBloc>().add(
                                    LoginEvent.phoneNumberChanged(
                                        ValidPhoneNumber(number.phoneNumber)));
                              }
                            },
                            autovalidateMode: context
                                    .bloc<LoginBloc>()
                                    .state
                                    .showErrorMessages
                                ? AutovalidateMode.always
                                : AutovalidateMode.disabled,
                          ),
                          const SizedBox(height: 20),
                          const ContinueWithPhoneButton(),
                        ],
                      ),
                      SizedBox(
                          width: size.width * 0.4,
                          child: const Divider(
                            thickness: 2,
                          )),
                      const ContinueWithGoogleButton(),
                      Column(
                        children: [
                          Text(
                            "By continuing, you agree to the".i18n,
                            style: WelcomeScreenTextStyles.terms(size),
                          ),
                          FlatButton(
                            height: 5,
                            // color: Colors.red,
                            onPressed: _launchURL,
                            child: Text(
                              "Terms and Services".i18n,
                              style: WelcomeScreenTextStyles.terms(size),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ProgressOverlayIndicator(
                  isSaving: state.isSubmitting,
                ),
              ],
            ),
          );
        });
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
