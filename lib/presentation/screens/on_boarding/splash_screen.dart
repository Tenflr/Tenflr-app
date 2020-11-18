import 'package:auto_route/auto_route.dart';
import 'package:tenflrpay/application/auth/auth_bloc/authentication_bloc.dart';
import 'package:tenflrpay/application/connectivity_and_time_bloc/connectivity_and_time_bloc.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/assets/images.dart';
import 'package:tenflrpay/presentation/core/icons/TfIcons_icons.dart';
import '../../core/translations/translations.i18n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tenflrpay/routes/router.gr.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with AutomaticKeepAliveClientMixin {
  Image logo;
  @override
  void initState() {
    super.initState();
    logo = Image.asset(TfImages.tp_logo);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(logo.image, context);
  }

  @override
  @mustCallSuper
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return MultiBlocListener(
      listeners: [
        BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              firstTimeUser: (_) {
                ExtendedNavigator.of(context)
                    .popUntil((route) => route.isFirst);
                return ExtendedNavigator.of(context).pushGetStarted();
              },
              moreInfoPhone: (state) {
                ExtendedNavigator.of(context)
                    .popUntil((route) => route.isFirst);
                return ExtendedNavigator.of(context)
                    .pushGetMoreUserInfoAfterPhoneSignUp(user: state.user);
              },
              moreInfoGoogle: (state) {
                ExtendedNavigator.of(context)
                    .popUntil((route) => route.isFirst);
                return ExtendedNavigator.of(context)
                    .pushGetMoreUserInfoAfterGoogleSignUp(user: state.user);
              },
              authenticated: (state) {
                ExtendedNavigator.of(context)
                    .popUntil((route) => route.isFirst);
                return ExtendedNavigator.of(context).pushHomeScreen(
                  user: state.user,
                  // deviceId: state.deviceId,
                  // userSettings: state.userSettings
                );
              },
              unauthenticated: (_) {
                ExtendedNavigator.of(context)
                    .popUntil((route) => route.isFirst);
                return ExtendedNavigator.of(context).pushWelcomeLoginScreen();
              },
            );
          },
        ),
        BlocListener<ConnectivityAndTimeBloc, ConnectivityAndTimeState>(
          listenWhen: (p, c) => !c.isConnected || !c.isSyncedTime,
          listener: (context, state) {
            if (!state.isConnected) {
              _alertNoInternetDetected(context);
            }
            if (!state.isSyncedTime) {
              _alertTimeNotSyncedDetected(context);
            }
          },
        ),
      ],
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          color: TfColors.primary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: size.height * 0.15,
                  bottom: size.height * 0.15,
                ),
                height: size.width * 0.3,
                width: size.width * 0.3,
                child: Icon(TfIcons.tenfl_logo,
                    color: TfColors.secondary, size: size.width * 0.2),
              ),
              // Text(
              //   'Tenflr'.i18n,
              //   textAlign: TextAlign.center,
              //   style: const TextStyle(
              //     fontWeight: FontWeight.w400,
              //     color: TfColors.secondary,
              //     fontSize: 25.0,
              //   ),
              // ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(
                  top: size.height * 0.05,
                  bottom: size.height * 0.05,
                ),
                child: const FlareActor(
                  'assets/flare/loading.flr',
                  alignment: Alignment.topCenter,
                  fit: BoxFit.contain,
                  animation: 'Untitled',
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

// Advanced using of alerts
_alertNoInternetDetected(BuildContext context) {
  // Alert dialog using custom alert style
  Alert(
    closeFunction: () {},
    context: context,
    // style: kInternetAlertStyle(context),
    type: AlertType.info,
    title: "NO INTERNET!".i18n,
    desc: "Please connect to the internet to continue.".i18n,
    buttons: [
      DialogButton(
        onPressed: () {
          if (context.bloc<ConnectivityAndTimeBloc>().state.isConnected) {
            Navigator.of(context, rootNavigator: true).pop();
          }
        },
        // color: NeumorphicTheme.isUsingDark(context)
        //     ? AppColors.kCardColor300
        //     : AppColors.lightPrimaryLightColor300,
        radius: BorderRadius.circular(10.0),
        child: BlocListener<ConnectivityAndTimeBloc, ConnectivityAndTimeState>(
          listenWhen: (p, c) => p.isConnected != c.isConnected,
          listener: (context, state) {
            if (state.isConnected) {
              Navigator.of(context, rootNavigator: true).pop();
            }
          },
          child: Text(
            "RETRY".i18n,
            style: TextStyle(
                // color: NeumorphicTheme.isUsingDark(context)
                //     ? Colors.white
                //     : AppColors.primaryElement,
                fontSize: 20),
          ),
        ),
      ),
    ],
  )?.show();
}

// WillPopScope( onWillPop: () async => false, child: _alertNoInternetDetected(context),);
// Advanced using of alerts
_alertTimeNotSyncedDetected(BuildContext context) {
  // Alert dialog using custom alert style
//  WillPopScope(child: AlertDialog());
  Alert(
    context: context,
    // style: kInternetAlertStyle(context),
    type: AlertType.info,
    title: "PHONE TIME INCORRECT!".i18n,
    desc: "Please switch to automatic time update.".i18n,
    buttons: [
      DialogButton(
        onPressed: () {
          if (context.bloc<ConnectivityAndTimeBloc>().state.isSyncedTime) {
            Navigator.of(context, rootNavigator: true).pop();
          }
        },
        // color: NeumorphicTheme.isUsingDark(context)
        //     ? AppColors.primaryDarkColor500
        //     : AppColors.lightPrimaryColor,
        radius: BorderRadius.circular(10.0),
        child: BlocListener<ConnectivityAndTimeBloc, ConnectivityAndTimeState>(
          listenWhen: (p, c) => p.isConnected != c.isConnected,
          listener: (context, state) {
            if (state.isConnected) {
              Navigator.of(context, rootNavigator: true).pop();
            }
          },
          child: Text(
            "RE-CHECK TIME".i18n,
            style: TextStyle(
                // color: NeumorphicTheme.isUsingDark(context)
                //     ? Colors.white
                //     : AppColors.primaryElement,
                fontSize: 20),
          ),
        ),
      ),
    ],
  )?.show();
}
