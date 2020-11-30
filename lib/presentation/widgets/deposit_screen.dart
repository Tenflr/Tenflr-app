import 'package:bot_toast/bot_toast.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../application/payment/trusted_pay_input_collector/trustedpayinputcollector_bloc.dart';
import '../../domain/user/user.dart';
import '../../injection.dart';
import '../core/assets/svg.dart';
import '../core/icons/TfIcons_icons.dart';
import '../core/styles/decorations.dart';
import '../core/styles/text_styles.dart';
import '../core/translations/translations.i18n.dart';
import 'app_bar.dart';
import 'deposit_with_mtn_card.dart';
import 'deposit_with_orange_card.dart';

class DepositScreen extends StatelessWidget {
  final User user;
  const DepositScreen({@required this.user});
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return BlocProvider(
        create: (context) => getIt<TrustedPayInputCollectorBloc>()
          ..add(TrustedPayInputCollectorEvent.initialized(user)),
        child: const DepositForm());
  }
}

class DepositForm extends StatelessWidget {
  const DepositForm();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocConsumer<TrustedPayInputCollectorBloc,
        TrustedPayInputCollectorState>(
      listener: (context, state) {
        if (state.isSaving) {
          FlushbarHelper.createLoading(
                  message: "Crediting your TrustedPay...".i18n,
                  linearProgressIndicator: const LinearProgressIndicator())
              .show(context);
        }
        state.saveFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                    (failure) => FlushbarHelper.createError(
                        message: failure.maybeMap(
                            orElse: () => null,
                            insufficientPermissions: (_) =>
                                "Insufficient permission. Please contact support"
                                    .i18n,
                            unexpected: (_) =>
                                "Failed to credit account! Try again and make sure you validate the MOMO transaction!"
                                    .i18n))
                      ..show(context), (r) {
                  // Navigator.of(context).pop();
                  Future.delayed(const Duration(seconds: 2), () {
                    FlushbarHelper.createSuccess(
                            // duration: const Duration(seconds: 3),
                            message:
                                "You have successfully credited your Tenflr Account 😃"
                                    .i18n)
                        .show(context);
                  });
                }));
      },
      buildWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      builder: (context, state) => Scaffold(
        body: Container(
          // height: size.height * 1.1,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TfAppBar(
                    leading: IconButton(
                      icon: const Icon(TfIcons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    description: Text('Deposit'.i18n,
                        style:
                            SavingsScreenTextStyle.addSavingsDescription(size)),
                    trailing: const Opacity(
                        opacity: 0,
                        child: IconButton(
                          icon: Icon(TfIcons.arrow_back),
                          onPressed: null,
                        ))),
                const DepositWithMTNCard(),
                const SizedBox(height: 10),
                const DepositWithOrangeCard(),
                Container(
                  // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  height: size.height * 0.45,

                  child: Column(
                    // crossAxisCount: 2,
                    // crossAxisSpacing: 0,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              BotToast.showText(text: "Coming Soon".i18n);
                            },
                            child: Container(
                              height: 100,
                              width: size.width * 0.4,
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              decoration: DefaultDecoration.all,
                              // child: Image.asset(TfImages.creditcard),
                              child: SvgPicture.asset(TfSvg.creditcard),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              BotToast.showText(text: "Coming Soon".i18n);
                            },
                            child: Container(
                              height: 100,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              width: size.width * 0.4,
                              decoration: DefaultDecoration.all,
                              child: SvgPicture.asset(TfSvg.applePay),
                              // child: Image.asset(TfImages.applePay),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              BotToast.showText(text: "Coming Soon".i18n);
                            },
                            child: Container(
                              height: 100,
                              width: size.width * 0.4,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              decoration: DefaultDecoration.all,
                              // child: Image.asset(TfImages.paypal),
                              child: SvgPicture.asset(TfSvg.paypal),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              BotToast.showText(text: "Coming Soon".i18n);
                            },
                            child: Container(
                              height: 100,
                              width: size.width * 0.4,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              decoration: DefaultDecoration.all,
                              // child: Image.asset(TfImages.bitcoin),
                              child: SvgPicture.asset(TfSvg.bitcoin),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
// const DepositWithOrangeCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
