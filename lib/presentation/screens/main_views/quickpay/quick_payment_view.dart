import 'package:auto_route/auto_route.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../application/lock_screen_bloc/lock_screen_bloc.dart';
import '../../../../application/quick_payment/quick_payment_bloc/quick_payment_bloc.dart';
import '../../../../application/quick_payment/quick_payment_watcher_bloc/quick_payment_watcher_bloc.dart';
import '../../../../domain/user/user.dart';
import '../../../../injection.dart';
import '../../../../routes/router.gr.dart';
import '../../../core/hooks/scrol_controller_for_animation.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/button.dart';
import 'quick_payment_overview.dart';

class QuickPaymentScreen extends StatelessWidget {
  const QuickPaymentScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context, listen: false);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<QuickPaymentWatcherBloc>()
              ..add(const QuickPaymentWatcherEvent.watchAll())),
        // BlocProvider(create: (context) => getIt<QuickPaymentWa)
        BlocProvider(
            create: (context) => getIt<QuickPaymentBloc>()
              ..add(QuickPaymentEvent.initialize(user))),
      ],
      child: const QuickPaymentBody(),
    );
  }
}

class QuickPaymentBody extends HookWidget {
  const QuickPaymentBody({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context, listen: false);

    final Size size = MediaQuery.of(context).size;
    final ValueNotifier<bool> requestPay = useState(false);
    final hideFabAnimController = useAnimationController(
        duration: kThemeAnimationDuration, initialValue: 1);
    final ScrollController scrollController =
        useScrollControllerForAnimation(hideFabAnimController);
    return BlocListener<QuickPaymentBloc, QuickPaymentState>(
      // listenWhen: (p, c) =>
      //     p.shouldValidatePayment != c.shouldValidatePayment ||
      //     p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption ||
      //     p.isTokenExpired != c.isTokenExpired,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                    (failure) => FlushbarHelper.createError(
                            message: failure.map(
                          tokenExpired: (_) =>
                              "The QR code you have scanned has expired. Please restart the payment."
                                  .i18n,
                          errorGeneratingQRCode: (_) =>
                              "An error occurred while generating a QR code. Please try again!"
                                  .i18n,
                          errorScanningQRCode: (_) =>
                              "An error occurred while scanning the QR code. Please try again!"
                                  .i18n,
                          insufficientFunds: (_) =>
                              "Insufficient Funds in TrustedPay wallet!".i18n,
                          insufficientPermissions: (_) =>
                              "Insufficient permission to perform action!".i18n,
                          paymentWithMomoFailed: (_) =>
                              "Payment with MOMO account failed! Please try again!"
                                  .i18n,
                          quickPaymentFailed: (_) =>
                              "Payment could not be sent!".i18n,
                          timeOutOfSync: (_) =>
                              "The operation was cancelled because your local time is out-of-sync with the server time"
                                  .i18n,
                          unexpected: (_) =>
                              "An unexpected error occurred!".i18n,
                          failedToCashQuickPayment: (_) =>
                              "Failed to cash quick Payment Received 🤔".i18n,
                          youCantPayYourSelf: (_) =>
                              "Sorry you can't pay youself🙄".i18n,
                        )).show(context), (_) {
                  // if (ExtendedNavigator.of(context).routerName ==
                  //     'Router') {
                  //   // Navigator.of(context).pop();
                  //   Navigator.of(context).pop();
                  // }

                  FlushbarHelper.createSuccess(
                          message: "The Payment was successful 😁".i18n)
                      .show(context);
                }));

        if (context.bloc<QuickPaymentBloc>().state.shouldValidatePayment) {
          _confirmPayment(context, user);

          Future.delayed(const Duration(seconds: 5), () {
            context
                .bloc<LockScreenBloc>()
                .add(const LockScreenEvent.shouldPaused(false));
          });
        }
      },
      child: Container(
        height: size.height * 0.78,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuickPaymentOverView(
              controller: scrollController,
            ),
            // if (!requestPay.value)
            Align(
              alignment: Alignment.bottomCenter,
              child: FadeTransition(
                opacity: hideFabAnimController,
                child: ScaleTransition(
                  scale: hideFabAnimController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Button(
                        // mini: false,
                        width: size.width * 0.8,
                        description: 'Request a payment'.i18n,
                        onPressed: () {
                          ExtendedNavigator.of(context)
                              .pushRequestPaymentScreen(user: user);
                          // requestPay.value = true;
                        },
                      ),
                      SizedBox(width: size.width * 0.5, child: const Divider()),
                      Button(
                        description: 'Scan to Pay'.i18n,
                        width: size.width * 0.8,
                        onPressed: () {
                          // requestPay.value = false;
                          context
                              .bloc<LockScreenBloc>()
                              .add(const LockScreenEvent.shouldPaused(true));
                          scan(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future scan(BuildContext context) async {
    try {
      final ScanResult barcode =
          await BarcodeScanner.scan(options: const ScanOptions());
      debugPrint('''
          
Raw token  is :: ${barcode.rawContent}          


          ''');
      context
          .bloc<QuickPaymentBloc>()
          .add(QuickPaymentEvent.tokenScanned(barcode.rawContent));
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        FlushbarHelper.createError(
                message: 'The user did not grant the camera permission!'.i18n)
            .show(context);
        // barcodeState.value = 'The user did not grant the camera permission!';
      } else {
        FlushbarHelper.createError(message: 'Unknown error: $e').show(context);
        // barcodeState.value = 'Unknown error: $e';
      }
    } on FormatException {
      FlushbarHelper.createError(
              message:
                  'null (User returned using the "back"-button before scanning anything. Result)')
          .show(context);
      // barcodeState.value =
      //     'null (User returned using the "back"-button before scanning anything. Result)';
    } catch (e) {
      FlushbarHelper.createError(message: 'Unknown error: $e').show(context);
    }
  }
}

_confirmPayment(BuildContext context, User user) {
  return Alert(
    // style: kQuickPayAlertStyle(context),
    context: context,
    // image: Avatar(
    // photoUrl:
    // context.bloc<QuickPaymentBloc>().state.token.requesterPhotoUrl),
    type: AlertType.none,
    title: "Confirm Payment!!".i18n,
    // content: Avatar(
    //     photoUrl:
    //         context.bloc<QuickPaymentBloc>().state.token.requesterPhotoUrl),
    desc:
        "Confirm you want to make a payment of XAF %s to %s with phone number %s !"
            .i18n
            .fill([
      context.bloc<QuickPaymentBloc>().state.payment.amount.getOrCrash(),
      context.bloc<QuickPaymentBloc>().state.token.requesterName.getOrCrash(),
      context.bloc<QuickPaymentBloc>().state.token.requesterNumber.getOrCrash()
    ]),
    buttons: [
      DialogButton(
        onPressed: () {
          context
              .bloc<QuickPaymentBloc>()
              .add(QuickPaymentEvent.initialize(user));

          Navigator.of(context, rootNavigator: true).pop();
        },
        color: Colors.red[400],
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            "Cancel".i18n,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),

        // Color.fromRGBO(0, 179, 134, 1.0),
      ),
      DialogButton(
        width: 200,
        onPressed: () {
          context
              .bloc<QuickPaymentBloc>()
              .add(QuickPaymentEvent.validatePayment(user));
          Navigator.of(context, rootNavigator: true).pop();

          Future.delayed(const Duration(seconds: 1), () {
            FlushbarHelper.createLoading(
                    duration: const Duration(seconds: 5),
                    message: "Processing Payment".i18n,
                    linearProgressIndicator: const LinearProgressIndicator())
                .show(context);
          });
        },
        gradient: const LinearGradient(colors: [
          Color.fromRGBO(116, 116, 191, 1.0),
          Color.fromRGBO(52, 138, 199, 1.0)
        ]),
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            "Confirm".i18n,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      )
    ],
  ).show();
}
