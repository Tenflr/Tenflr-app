import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:tenflrpay/presentation/core/money_controller/m_controller.dart';

import '../../../../application/main_views_bloc/main_views_bloc.dart';
import '../../../../application/saving/savings_input_collector/savingsinputcollector_bloc.dart';
import '../../../../domain/core/valid_objects.dart';
import '../../../../domain/saving/savings.dart';
import '../../../../injection.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/button.dart';
import '../../../widgets/default_primary_money_input.dart';
import '../../../widgets/infoDisplayTile.dart';
import '../../../widgets/progess_overlay_screen.dart';

class SavingsDetailScreen extends StatelessWidget {
  final Savings saving;
  const SavingsDetailScreen({@required this.saving, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SavingsInputCollectorBloc>()
        ..add(SavingsInputCollectorEvent.initilized(saving)),
      child: SavingsDetailForm(
        saving: saving,
      ),
    );
  }
}

class SavingsDetailForm extends HookWidget {
  final Savings saving;

  const SavingsDetailForm({Key key, this.saving}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // final MoneyMaskedTextController moneyController = getIt<MoneyController>().controller;
    return BlocListener<SavingsInputCollectorBloc, SavingsInputCollectorState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                (failure) => FlushbarHelper.createError(
                    title: "An Error occured".i18n,
                    duration: const Duration(seconds: 5),
                    message: failure.maybeMap(
                      orElse: () => null,
                      unexpected: (_) => "An unexpected error occurred".i18n,
                      insufficientPermissions: (_) =>
                          "Insufficient Permission. Contact support!".i18n,
                      unableToCreate: (_) => "Unable to create saving!".i18n,
                      unableToUpdate: (_) => "Unable to update saving!".i18n,
                      insufficientFundsInTrustedFunds: (_) =>
                          "Insufficient Funds in TrustedPay wallet!".i18n,
                      paymentWithMomoFailed: (_) =>
                          "Payment with MOMO account failed! Please try again!"
                              .i18n,
                    )).show(context),
                (r) => {
                      FlushbarHelper.createInformation(
                          message:
                              "You have successfully added money to your Savings Account 😃"
                                  .i18n)
                        ..show(context),
                      Future.delayed(const Duration(microseconds: 1)),
                      context
                          .bloc<MainViewsBloc>()
                          .add(MainViewsEvent.savingsDetailPage(
                            savings: state.saving,
                            duration:
                                state.saving.timeLeft.getOrCrash().inSeconds,
                          ))
                    }));
        if (state.isSaving) {
          FlushbarHelper.createLoading(
            message: 'Adding money in savings...'.i18n,
            linearProgressIndicator: const LinearProgressIndicator(),
          ).show(context);
        }
      },
      child: Container(
        height: size.height * 0.78,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
                      child: Row(
                        children: [
                          Text('Enter an amount to save'.i18n,
                              style:
                                  SavingsScreenTextStyle.addSavingsDescription(
                                      size)),
                        ],
                      ),
                    ),
                    DefaultPrimaryMoneyInput(
                      svgPath: null,
                      width: size.width,
                      // moneyMaskEditingController: moneyController,
                      onChanged: (value) {
                        debugPrint(value);
                        context.bloc<SavingsInputCollectorBloc>().add(
                            SavingsInputCollectorEvent.addAmountChanged(
                                addedAmount: MoneyAmount(double.parse(value.replaceAll(',','')))));
                      },
                      onEditingComplete: () {
                        FocusScope.of(context).unfocus();
                      },
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 20),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 5),
                        child: Button(
                          onPressed: () {
                            // textController.text = '0';
                            context.bloc<SavingsInputCollectorBloc>().add(
                                SavingsInputCollectorEvent.addMoneyToSavings(
                                    savings: context
                                        .bloc<SavingsInputCollectorBloc>()
                                        .state
                                        .saving));
                          },
                          description: 'Add Money to Account'.i18n,
                          width: size.width,
                        )),
                    InfoDisplayTile(
                      leading: Text('Account name'.i18n,
                          style: TrustedPayScreenTextStyles.key(size)),
                      trailing: Text(saving.savingsName.getOrCrash(),
                          style: TrustedPayScreenTextStyles.value(size)),
                    ),
                    InfoDisplayTile(
                      leading: Text('Current amount'.i18n,
                          style: TrustedPayScreenTextStyles.key(size)),
                      trailing: Text(
                          saving.amount.getOrCrash().toStringAsFixed(0),
                          style: TrustedPayScreenTextStyles.value(size)),
                    ),
                    InfoDisplayTile(
                      leading: Text('Unlock date'.i18n,
                          style: TrustedPayScreenTextStyles.key(size)),
                      trailing: Text(
                          saving.withdrawalDate
                              .getOrCrash()
                              .toString()
                              .substring(0, 11),
                          style: TrustedPayScreenTextStyles.value(size)),
                    ),
                  ],
                ),
              ],
            ),
            ProgressOverlayIndicator(
              isSaving:
                  context.bloc<SavingsInputCollectorBloc>().state.isSaving,
            ),
          ],
        ),
      ),
    );
  }
}
