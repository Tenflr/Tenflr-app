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
import 'withdraw_with_mtn_card.dart';
import 'withdraw_with_orange_card.dart';

class WithdrawScren extends StatelessWidget {
  final User user;
  const WithdrawScren({@required this.user});
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return BlocProvider(
        create: (context) => getIt<TrustedPayInputCollectorBloc>()
          ..add(TrustedPayInputCollectorEvent.initialized(user)),
        child: const WithdrawForm());
  }
}

class WithdrawForm extends StatelessWidget {
  const WithdrawForm();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocConsumer<TrustedPayInputCollectorBloc,
        TrustedPayInputCollectorState>(
      listener: (context, state) {
        if (state.isSaving) {
          FlushbarHelper.createLoading(
                  message: "Withdrawal in progress...".i18n,
                  linearProgressIndicator: const LinearProgressIndicator())
              .show(context);
        }
        state.saveFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                    (failure) => FlushbarHelper.createError(
                        message: failure.maybeMap(
                            orElse: () => null,
                            withdrawalIntoMOMOFailed: (_) =>
                                "Withdrawal into your MOMO account failed. Please try again!"
                                    .i18n,
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
                                "You have successfully withdrawn money into your MOMO account 😃"
                                    .i18n)
                        .show(context);
                  });
                }));
      },
      buildWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      builder: (context, state) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: size.height * 1.13,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TfAppBar(
                    leading: IconButton(
                      icon: const Icon(TfIcons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    description: Text('Withdraw'.i18n,
                        style:
                            SavingsScreenTextStyle.addSavingsDescription(size)),
                    trailing: const Opacity(
                        opacity: 0,
                        child: IconButton(
                          icon: Icon(TfIcons.arrow_back),
                          onPressed: null,
                        ))),
                const WithdrawWithMTNCard(),
                const WithdrawWithOrangeCard(),
                Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: size.height * 0.3,
                    decoration: DefaultDecoration.all,
                    child: InkWell(
                        onTap: () {
                          //todo;
                        },
                        child: SvgPicture.asset(TfSvg.add_bank))),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
