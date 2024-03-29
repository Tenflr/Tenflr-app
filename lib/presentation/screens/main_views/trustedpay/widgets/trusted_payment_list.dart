import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';

import '../../../../../application/payment/transaction_list_bloc/transaction_list_bloc.dart';
import '../../../../../domain/core/settings.dart';
import '../../../../../domain/payment/payment.dart';
import '../../../../../domain/user/user.dart';
import '../../../../../injection.dart';
import '../../../../../routes/router.gr.dart';
import '../../../../core/hooks/scrol_controller_for_animation.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';
import '../trusted_payment_initial_screen.dart';
import 'trusted_payment_tile.dart';

class TrustedPaymentList extends HookWidget {
  final ScrollController controller;

  const TrustedPaymentList({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final User user = Provider.of(context, listen: false);

    context.bloc<TransactionListBloc>()
      ..add(const TransactionListEvent.watchAll());
    final hideFabAnimController = useAnimationController(
        duration: kThemeAnimationDuration, initialValue: 1);
    final scrollController =
        useScrollControllerForAnimation(hideFabAnimController);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocBuilder<TransactionListBloc, TransactionListState>(
        // buildWhen: (p, c) {
        //   final int pSize = p.maybeMap(
        //       orElse: () => null,
        //       loadComplete: (e) {
        //         return e.payments.size;
        //       });
        //   final int cSize = c.maybeMap(
        //       orElse: () => null,
        //       loadComplete: (e) {
        //         return e.payments.size;
        //       });
        //   return pSize != cSize;
        // },
        builder: (context, state) {
          return state.map(
            initial: (e) => const Center(child: CircularProgressIndicator()),
            loading: (e) => const Center(child: CircularProgressIndicator()),
            loadComplete: (e) {
              final KtList<Payment> payments = e.payments;
              if (payments.isNotEmpty()) {
                return Stack(
                  children: [
                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: controller,
                      itemBuilder: (BuildContext context, int index) {
                        final Payment payment = payments[index];
                        final bool dispayPayerInfo =
                            payment.payerId.getOrCrash() ==
                                    getIt<MySettings>().getUserId
                                ? true
                                : false;

                        return Slidable(
                          actionPane: const SlidableDrawerActionPane(),
                              actionExtentRatio: 0.4,

                              secondaryActions: <Widget>[
                                Container(
                                  decoration: DefaultDecoration.slidable,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: InkWell(
                                    onTap: () 
                                    {},
                                    // =>
                                    //  _confirmForceSavingsUnlock(
                                    //   context,
                                    //   context.bloc<SavingsActorBloc>(),
                                    //   saving,
                                    // ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Icon(Icons.lock_open_outlined),
                                        Text(
                                          'Force Unlock'.i18n,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                          key: ObjectKey(payment),
                          child: TrustedPaymentTile(
                            payment: payment,
                            index: index,
                          ),
                        );
                      },
                     
                      itemCount: payments.size,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FadeTransition(
                        opacity: hideFabAnimController,
                        child: ScaleTransition(
                          scale: hideFabAnimController,
                          child: Button(
                            onPressed: () {
                              ExtendedNavigator.of(context)
                                  .pushSendTrustedPaymentScreen(user: user);
                            },
                            description: "Make a Trusted Payment".i18n,
                            width: size.width * 0.8,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else if (payments == null || payments.isEmpty()) {
                return const TrustedPaymentInitialScreen();
              }
              return const Center(child: CircularProgressIndicator());
            },
            loadFailure: (e) => Center(
              child: Text('Critical failure'.i18n),
            ), //TODO: [STUR-24] CriticalFailureDisplay(failure: e.noteFailure),
          );
        },
      ),
    ); // floatingActionButton: ComposeButton(messages: messages),
  }
}
