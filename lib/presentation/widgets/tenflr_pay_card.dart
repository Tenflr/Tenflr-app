import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:tenflrpay/domain/core/settings.dart';

import '../../application/trusted_funds_bloc/trusted_funds_bloc.dart';
import '../../domain/user/user.dart';
import '../../injection.dart';
import '../../routes/router.gr.dart';
import '../core/assets/colors.dart';
import '../core/assets/svg.dart';
import '../core/icons/TfIcons_icons.dart';
import '../core/styles/decorations.dart';
import '../core/styles/text_styles.dart';
import '../core/translations/translations.i18n.dart';

class TenflrPayCard extends StatelessWidget {
  const TenflrPayCard();
  String get currency => "XAF";

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context, listen: false);
    final MySettings _settings = getIt<MySettings>();
    context.bloc<TrustedFundsBloc>().add(const TrustedFundsEvent.watchFunds());
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: DefaultDecoration.all,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Icon(TfIcons.trustedpaylogo)
              Row(
                children: [
                  SizedBox(
                    height: 25,
                    width: 25,
                    child: SvgPicture.asset(TfSvg.tp_logo),
                  ),
                  // Image.asset(TfImages.tp_logo),
                  const SizedBox(width: 5),
                  Text(
                    "TenflrPay",
                    style: TenflrPayCardTextStyle.title(size),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(user.phoneNumber.getOrCrash(),
                      style: TenflrPayCardTextStyle.number(size)),
                  Text(user.email.getOrCrash() ?? '',
                      style: TenflrPayCardTextStyle.email(size)),
                ],
              )
            ],
          ),
          Padding(
            padding: size.height > 812
                ? const EdgeInsets.symmetric(vertical: 20)
                : const EdgeInsets.symmetric(vertical: 5),
            child: BlocConsumer<TrustedFundsBloc, TrustedFundsState>(
              listenWhen: (p, c) {
                final pAmount = p.maybeMap(
                    orElse: () => null, loadSuccess: (e) => e.amount);
                final cAmount = c.maybeMap(
                    orElse: () => null, loadSuccess: (e) => e.amount);
                return pAmount != cAmount;
              },
              listener: (context, state) {
                state.maybeMap(
                  orElse: () => null,
                  loadFailure: (_) => FlushbarHelper.createError(
                          message:
                              'An Error occured getting your TrustedPay balance. Please contact support!!'
                                  .i18n)
                      .show(context),
                );
              },
              buildWhen: (p, c) {
                final pAmount = p.maybeMap(
                    orElse: () => null, loadSuccess: (e) => e.amount);
                final cAmount = c.maybeMap(
                    orElse: () => null, loadSuccess: (e) => e.amount);
                return pAmount != cAmount;
              },
              builder: (context, state) => state.maybeMap(
                initial: (s) => Text(
                  "$currency 0.0",
                  textAlign: TextAlign.center,
                  style: TenflrPayCardTextStyle.amount(size),
                ),
                loadSuccess: (s) {
                  _settings.setTenflrBalance(s.amount);
                  return FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "$currency ${s.amount.getOrCrash().toStringAsFixed(1)}",
                      textAlign: TextAlign.center,
                      style: TenflrPayCardTextStyle.amount(size),
                    ),
                  );
                },
                loadFailure: (s) => Text(
                  "$currency 0.0}",
                  textAlign: TextAlign.center,
                  style: TenflrPayCardTextStyle.amount(size),
                ),
                orElse: () => null,
              ),
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              InkWell(
                onTap: () {
                  BotToast.showText(text: "Coming soon".i18n);
                },
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "View all transaction history".i18n,
                    style: TenflrPayCardTextStyle.history(size),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: RaisedButton(
                    onPressed: () {
                      ExtendedNavigator.of(context)
                          .pushDepositScreen(user: user);
                    },
                    color: TfColors.secondary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Transform.translate(
                            offset: const Offset(-15, 0),
                            child: const Icon(
                              TfIcons.round_lock,
                              size: 18,
                              color: TfColors.primary,
                            )),
                        // const SizedBox(width: 5),
                        Text(
                          "Deposit".i18n,
                          style: TenflrPayCardTextStyle.deposit(size),
                        ),
                        Transform.translate(
                            offset: const Offset(15, 0),
                            child: const Icon(
                              TfIcons.green_arrow_down,
                              size: 18,
                              color: TfColors.green,
                            )),
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
