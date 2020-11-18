import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/collection.dart';
import 'package:tenflrpay/application/payment/transaction_list_bloc/transaction_list_bloc.dart';
import 'package:tenflrpay/domain/core/settings.dart';
import 'package:tenflrpay/domain/payment/payment.dart';
import 'package:tenflrpay/presentation/screens/main_views/trustedpay/widgets/trusted_payment_tile.dart';
import '../../../../../injection.dart';
import '../../../../core/translations/translations.i18n.dart';

import '../trusted_payment_initial_screen.dart';

class TrustedPaymentList extends StatefulWidget {
  final ScrollController controller;

  const TrustedPaymentList({Key key, this.controller}) : super(key: key);

  @override
  _TrustedPaymentListState createState() => _TrustedPaymentListState();
}

class _TrustedPaymentListState extends State<TrustedPaymentList> {
  TransactionListBloc transactionListBloc;
  @override
  void initState() {
    super.initState();
    transactionListBloc = context.bloc<TransactionListBloc>()
      ..add(const TransactionListEvent.watchAll());
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocBuilder<TransactionListBloc, TransactionListState>(
        buildWhen: (p, c) {
          final int pSize = p.maybeMap(
              orElse: () => null,
              loadComplete: (e) {
                return e.payments.size;
              });
          final int cSize = c.maybeMap(
              orElse: () => null,
              loadComplete: (e) {
                return e.payments.size;
              });
          return pSize != cSize;
        },
        builder: (context, state) {
          return state.map(
            initial: (e) => const Center(child: CircularProgressIndicator()),
            loading: (e) => const Center(child: CircularProgressIndicator()),
            loadComplete: (e) {
              final KtList<Payment> payments = e.payments;
              if (payments.isNotEmpty()) {
                return ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  controller: widget.controller,
                  itemBuilder: (BuildContext context, int index) {
                    final Payment payment = payments[index];
                    final bool dispayPayerInfo = payment.payerId.getOrCrash() ==
                            getIt<MySettings>().getUserId
                        ? true
                        : false;

                    return Slidable(
                      actionPane: const SlidableDrawerActionPane(),
                      actionExtentRatio: 0.25,
                      actions: <Widget>[
                        IconSlideAction(
                          caption: 'Chat'.i18n,
                          color: Colors.blue,
                          icon: Icons.chat,
                          onTap: () {},
                        ),
                        IconSlideAction(
                          caption: 'Hide'.i18n,
                          color: Colors.indigo,
                          icon: Icons.archive,
                          onTap: () {
                            BotToast.showSimpleNotification(
                                title:
                                    "Your transaction %s, has been sent to archive"
                                        .i18n
                                        .fill([
                                  payment.id.getOrCrash().substring(0, 6)
                                ]),
                                duration: const Duration(seconds: 5));
                            payments.minus(KtList.of(payment));
                          },
                        ),
                      ],
                      secondaryActions: <Widget>[
                        IconSlideAction(
                          caption: 'More'.i18n,
                          color: Colors.black45,
                          icon: Icons.more_horiz,
                          onTap: () {},
                        ),
                        IconSlideAction(
                          caption: 'Unlock'.i18n,
                          color: Colors.redAccent,
                          iconWidget: Icon(
                            FontAwesomeIcons.unlock,
                            color: Colors.white,
                          ),
                          onTap: () {
                            setState(() {
                              payments.minus(KtList.of(payment));
                            });
                          },
                        ),
                      ],
                      key: ObjectKey(payment),
                      child: TrustedPaymentTile(
                        payment: payment,
                        index: index,
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: size.height * 0.005,
                  ),
                  itemCount: payments.size,
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
