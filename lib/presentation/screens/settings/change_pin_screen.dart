import 'package:tenflrpay/application/settings_bloc/settings_bloc.dart';
import 'package:tenflrpay/domain/core/settings.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/injection.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/icons/TfIcons_icons.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';
import 'package:tenflrpay/presentation/widgets/app_bar.dart';
import 'package:tenflrpay/presentation/widgets/progess_overlay_screen.dart';
import '../../core/translations/translations.i18n.dart';

const START_TEXT = "Enter Current PIN";
const PROCESS_TEXT = "Enter a new PIN";
const FINAL_TEXT = "Enter the Pin again to validate";

class ChangePinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SettingsBloc>(),
      child: ChangePinBody(),
    );
  }
}

class ChangePinBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ValueNotifier<String> displayMessage = useState(START_TEXT);
    final ValueNotifier<String> newPin = useState('');
    int numOfRun = 0;
    final MySettings _settings = getIt<MySettings>();
    final focusNode = useFocusNode();
    final pinController = useTextEditingController();
    final BoxDecoration pinPutDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: TfColors.primary));

//toDo: Fix hack
    return WillPopScope(
        onWillPop: () {
          Navigator.of(context).pop();
          return;
        },
        child: Scaffold(
          body: BlocListener<SettingsBloc, SettingsState>(
            listenWhen: (p, c) => p.isSaving != c.isSaving,
            listener: (context, state) {
              state.failureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold(
                          (failure) => FlushbarHelper.createError(
                              message: failure.maybeMap(
                                  orElse: () => null,
                                  unableToUdateUserPin: (_) =>
                                      "Unable to update user PIN 😰. Please try again..."
                                          .i18n)).show(context), (_) {
                        Navigator.of(context).pop();
                        Future.delayed(const Duration(seconds: 2), () {
                          FlushbarHelper.createSuccess(
                                  message: "PIN updated successfully 🙂".i18n)
                              .show(context);
                        });
                      }));
            },
            child: Stack(
              children: [
                Column(
                  children: [
                    TfAppBar(
                      leading: IconButton(
                          icon: const Icon(TfIcons.arrow_back),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      description: Text("Change your PIN".i18n,
                          style: SettingsTextStlyles.title(size)),
                      trailing: const Opacity(
                        opacity: 0,
                        child: IconButton(
                            icon: Icon(
                              TfIcons.arrow_back,
                            ),
                            onPressed: null),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.25),
                      child: Column(
                        children: [
                          Text(displayMessage.value.i18n),
                          const Divider(
                            color: Colors.transparent,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.1),
                            child: PinPut(
                              controller: pinController,
                              focusNode: focusNode,
                              obscureText: '⚈',
                              eachFieldWidth: size.width * 0.14,
                              eachFieldHeight: size.height * 0.08,
                              submittedFieldDecoration: pinPutDecoration,
                              selectedFieldDecoration: pinPutDecoration,
                              followingFieldDecoration:
                                  pinPutDecoration.copyWith(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color:
                                      Colors.deepPurpleAccent.withOpacity(.5),
                                ),
                              ),

                              pinAnimationType: PinAnimationType.rotation,
                              textStyle: const TextStyle(fontSize: 25),
                              // onClear: (String pin) => {},
                              onSubmit: (String pin) {
                                if (pinController.text.length == 4 &&
                                    numOfRun == 0) {
                                  switch (displayMessage.value) {
                                    case START_TEXT:
                                      if (pin == _settings.getTrustedPayPin) {
                                        displayMessage.value = PROCESS_TEXT;
                                        numOfRun += 1;
                                      } else if (pin !=
                                          _settings.getTrustedPayPin &&  newPin.value !="0") {
                                        numOfRun = 0;

                                        FlushbarHelper.createError(
                                                message:
                                                    "Wrong PIN. Try again..."
                                                        .i18n)
                                            .show(context);
                                      }
                                      pinController.clear();

                                      break;
                                    case PROCESS_TEXT:
                                      if (pin != _settings.getTrustedPayPin) {
                                        displayMessage.value = FINAL_TEXT;
                                        newPin.value = pinController.text;
                                        numOfRun += 1;
                                      } else if (pin ==
                                          _settings.getTrustedPayPin) {
                                        FlushbarHelper.createError(
                                                message:
                                                    "Your new PIN must be different from the old. Try again..."
                                                        .i18n)
                                            .show(context);
                                        newPin.value = '';
                                        numOfRun = 0;
                                      }
                                      pinController.clear();

                                      break;
                                    case FINAL_TEXT:
                                      if (pin == newPin.value) {
                                        context.bloc<SettingsBloc>().add(
                                            SettingsEvent.updateUserPin(
                                                UserPin(newPin.value)));
                                        numOfRun += 1;
                                        FocusScope.of(context).unfocus();
                                      } else if (pin != newPin.value) {
                                        FlushbarHelper.createError(
                                                message:
                                                    "PIN match failed. Try again..."
                                                        .i18n)
                                            .show(context);
                                        displayMessage.value = START_TEXT;
                                        // displayMessage.value = PROCESS_TEXT;
                                        newPin.value = '0';
                                        numOfRun = 0;
                                      }
                                      pinController.clear();
                                      break;
                                    default:
                                  }
                                }
                                // if (numOfRun == 5) {
                                //   numOfRun = 0;
                                // }
                                pinController.clear();
                              },
                              fieldsCount: 4,
                              // onSubmit: (String pin) async {
                              //   if (displayMessage.value == START_TEXT &&
                              //       pin == _settings.getTrustedPayPin) {
                              //     displayMessage.value = PROCESS_TEXT;
                              //   } else if (displayMessage.value == START_TEXT &&
                              //       pin != _settings.getTrustedPayPin) {
                              //     FlushbarHelper.createError(
                              //             message:
                              //                 "Wrong PIN. Try again...".i18n)
                              //         .show(context);
                              //   } else if (displayMessage.value ==
                              //           PROCESS_TEXT &&
                              //       pin != _settings.getTrustedPayPin) {
                              //     displayMessage.value = FINAL_TEXT;
                              //     newPin.value = pinController.text;
                              //   } else if (displayMessage.value ==
                              //           PROCESS_TEXT &&
                              //       pin == _settings.getTrustedPayPin) {
                              //     FlushbarHelper.createError(
                              //             message:
                              //                 "Your new PIN must be different from the old. Try again..."
                              //                     .i18n)
                              //         .show(context);
                              //     newPin.value = '';
                              //   } else if (displayMessage.value == FINAL_TEXT &&
                              //       pin == newPin.value) {
                              //     context.bloc<SettingsBloc>().add(
                              //         SettingsEvent.updateUserPin(
                              //             UserPin(pin)));
                              //   } else if (displayMessage.value == FINAL_TEXT &&
                              //       pin != newPin.value) {
                              //     FlushbarHelper.createError(
                              //             message:
                              //                 "PIN match failed. Try again..."
                              //                     .i18n)
                              //         .show(context);
                              //     displayMessage.value = PROCESS_TEXT;
                              //     newPin.value = '';
                              //   }
                              //   pinController.clear();

                              //   // if (numOfRun.value == 0) {
                              //   //   switch (displayMessage.value) {
                              //   //     case START_TEXT:
                              //   //       if (pin == _settings.getTrustedPayPin) {
                              //   //         displayMessage.value = PROCESS_TEXT;
                              //   //       } else if (pin !=
                              //   //           _settings.getTrustedPayPin) {
                              //   //         FlushbarHelper.createError(
                              //   //                 message:
                              //   //                     "Wrong PIN. Try again..."
                              //   //                         .i18n)
                              //   //             .show(context);
                              //   //       }
                              //   //       pinController.clear();
                              //   //       numOfRun.value = numOfRun.value + 1;
                              //   //       break;
                              //   //     case PROCESS_TEXT:
                              //   //       if (pin != _settings.getTrustedPayPin) {
                              //   //         displayMessage.value = FINAL_TEXT;
                              //   //         newPin.value = pinController.text;
                              //   //       } else if (pin ==
                              //   //           _settings.getTrustedPayPin) {
                              //   //         FlushbarHelper.createError(
                              //   //                 message:
                              //   //                     "Your new PIN must be different from the old. Try again..."
                              //   //                         .i18n)
                              //   //             .show(context);
                              //   //         newPin.value = '';
                              //   //       }
                              //   //       pinController.clear();
                              //   //       numOfRun.value = numOfRun.value + 1;
                              //   //       break;
                              //   //     case FINAL_TEXT:
                              //   //       if (pin == newPin.value) {
                              //   //         context.bloc<SettingsBloc>().add(
                              //   //             SettingsEvent.updateUserPin(
                              //   //                 UserPin(pin)));
                              //   //       } else if (pin != newPin.value) {
                              //   //         FlushbarHelper.createError(
                              //   //                 message:
                              //   //                     "PIN match failed. Try again..."
                              //   //                         .i18n)
                              //   //             .show(context);
                              //   //         displayMessage.value = PROCESS_TEXT;
                              //   //         newPin.value = '';
                              //   //       }
                              //   //       pinController.clear();
                              //   //       numOfRun.value = numOfRun.value + 1;
                              //   //       break;
                              //   //     default:
                              //   //   }
                              //   // } else if (numOfRun.value > 1) {
                              //   //   numOfRun.value = 0;
                              //   // }
                              //   // pinController.clear();
                              // },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                BlocBuilder<SettingsBloc, SettingsState>(
                  buildWhen: (p, c) => p.isSaving != c.isSaving,
                  builder: (context, state) {
                    return ProgressOverlayIndicator(isSaving: state.isSaving);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
