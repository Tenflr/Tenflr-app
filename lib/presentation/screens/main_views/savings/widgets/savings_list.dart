import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/kt.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:tenflrpay/application/main_views_bloc/main_views_bloc.dart';
import 'package:tenflrpay/application/saving/savings_actor_bloc/savings_actor_bloc.dart';
import 'package:tenflrpay/application/saving/savings_list_bloc/savingslist_bloc.dart';
import 'package:tenflrpay/domain/core/constant_list.dart';
import 'package:tenflrpay/domain/saving/savings.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';
import 'package:tenflrpay/presentation/screens/main_views/savings/widgets/savingsTile.dart';
import '../../../../core/translations/translations.i18n.dart';

class SavingsList extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final ScrollController controller;
  final bool isMini;
  const SavingsList(
      {this.padding, this.isMini = true, this.controller, this.margin});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    context.bloc<SavingsListBloc>().add(const SavingsListEvent.watchAll());
    final Widget _list = Container(
        height: size.height * 0.7,
        child: Stack(
          children: [
            BlocBuilder<SavingsListBloc, SavingsListState>(buildWhen: (p, c) {
              final int pSize = p.maybeMap(
                  orElse: () => null,
                  loadComplete: (e) {
                    return e.savings.size;
                  });
              final int cSize = c.maybeMap(
                  orElse: () => null,
                  loadComplete: (e) {
                    return e.savings.size;
                  });
              return pSize != cSize;
            }, builder: (context, state) {
              return state.map(
                initial: (e) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loading: (e) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadComplete: (e) {
                  final KtList<Savings> savings = e.savings;
                  if (savings.isNotEmpty()) {
                    return Container(
                      height: size.height * 0.8,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),

                        // controller: widget.controller,
                        itemBuilder: (BuildContext context, int index) {
                          final saving = e.savings[index];
                          if (saving.failureOption.isNone()) {
                            return Slidable(
                              actionPane: const SlidableDrawerActionPane(),
                              actionExtentRatio: 0.25,

                              secondaryActions: <Widget>[
                                IconSlideAction(
                                  caption: 'Freeze'.i18n,
                                  color: Colors.blue,
                                  icon: Icons.archive,
                                  onTap: () {
                                    context
                                        .bloc<SavingsActorBloc>()
                                        .add(SavingsActorEvent.freeze(saving));
                                    BotToast.showText(
                                        text: "Your saving %s, has been frozen!"
                                            .i18n
                                            .fill([
                                          saving.savingsName.getOrCrash()
                                        ]),
                                        duration: const Duration(seconds: 5));
                                  },
                                ),
                                IconSlideAction(
                                  caption: 'Hide'.i18n,
                                  color: Colors.indigo,
                                  icon: Icons.visibility_off,
                                  onTap: () {
                                    context
                                        .bloc<SavingsActorBloc>()
                                        .add(SavingsActorEvent.hide(saving));
                                    BotToast.showText(
                                        text: "Your saving %s, has been hidden!"
                                            .i18n
                                            .fill([
                                          saving.savingsName.getOrCrash()
                                        ]),
                                        duration: const Duration(seconds: 5));
                                  },
                                ),
                              ],
                              actions: <Widget>[
                                IconSlideAction(
                                  caption: "Delete".i18n,
                                  color: Colors.black45,
                                  icon: Icons.delete_sweep,
                                  onTap: saving.timeLeft
                                              .getOrCrash()
                                              .inSeconds >
                                          0
                                      ? null
                                      : () {
                                          context.bloc<SavingsActorBloc>().add(
                                              SavingsActorEvent.deleteUnlocked(
                                                  saving));
                                          BotToast.showText(
                                              text:
                                                  "Your old saving %s, has been deleted!"
                                                      .i18n
                                                      .fill([
                                                saving.savingsName.getOrCrash()
                                              ]),
                                              duration:
                                                  const Duration(seconds: 5));
                                        },
                                ),
                                IconSlideAction(
                                    caption: 'Force Unlock'.i18n,
                                    color: Colors.red[200],
                                    iconWidget: const Icon(
                                      FontAwesomeIcons.unlockAlt,
                                      color: Colors.white,
                                    ),
                                    onTap: () => _confirmForceSavingsUnlock(
                                          context,
                                          context.bloc<SavingsActorBloc>(),
                                          saving,
                                        )),
                              ],

                              child: SavingsTile(
                                savings: saving,
                                // index: index,
                              ),
                              // key: ObjectKey(saving),
                            );
                          } else {
                            return Center(
                                child: Text("Error Card should be here!".i18n));
                            //Todo Return error card
                          }
                        },
                        // separatorBuilder: (BuildContext context, int index) =>
                        //     SizedBox(
                        //   height: size.height * 0.011,
                        // ),
                        itemCount: e.savings.size,
                      ),
                    );
                  } else if (savings == null || savings.isEmpty()) {
                    context
                        .bloc<MainViewsBloc>()
                        .add(const MainViewsEvent.savingsInitPage());
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loadFailure: (e) => Center(
                  child: Text('Critical failure'.i18n),
                ), //TODO: [STUR-21] CriticalFailureDisplay(failure: e.noteFailure),
              );
            }),
            if (isMini)
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    color: TfColors.secondary, child: Text('Savings'.i18n)),
              ),
          ],
        ));
    return isMini
        ? Container(
            decoration: DefaultDecoration.all,
            margin: margin ??
                EdgeInsets.symmetric(
                    horizontal: size.width * 0.04, vertical: 10),
            padding: padding ??
                const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: _list,
          )
        : _list;
  }
}

_confirmForceSavingsUnlock(
    BuildContext context, SavingsActorBloc bloc, Savings saving) {
  final Size size = MediaQuery.of(context).size;
  return Alert(
    // style: kInternetAlertStyle(context),
    context: context,
    type: AlertType.warning,
    title: "Force Unlock".i18n,
    desc:
        "Are you sure you want to force unlock this account?  This will result in a lost of %s% of the funds in the account!!!"
            .i18n
            .fill([(FORCE_UNLOCK_LOST_PERCENTAGE * 100).toStringAsFixed(0)]),
    buttons: [
      DialogButton(
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop();
        },
        color: Colors.red[400],
        child: Text(
          "Cancel".i18n,
          style: TextStyle(color: Colors.white, fontSize: size.width * 0.034),
        ),

        // Color.fromRGBO(0, 179, 134, 1.0),
      ),
      DialogButton(
        width: 200,
        onPressed: () {
          bloc.add(SavingsActorEvent.forceUnlockSavings(saving));
          Navigator.of(context, rootNavigator: true).pop();
        },
        gradient: const LinearGradient(colors: [
          Color.fromRGBO(116, 116, 191, 1.0),
          Color.fromRGBO(52, 138, 199, 1.0)
        ]),
        child: Text(
          "Confirm".i18n,
          style: TextStyle(color: Colors.white, fontSize: size.width * 0.034),
        ),
      )
    ],
  ).show();
}
