import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/kt.dart';
import 'package:tenflrpay/application/budget/budget_actor_bloc/budget_actor_bloc.dart';
import 'package:tenflrpay/application/budget/budget_list_bloc/budgetlist_bloc.dart';
import 'package:tenflrpay/domain/budget/budgets.dart';
import 'package:tenflrpay/domain/core/settings.dart';
import 'package:tenflrpay/presentation/core/assets/colors.dart';
import 'package:tenflrpay/presentation/core/styles/decorations.dart';
import '../../../../../injection.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../budget_manager_initial_screen.dart';
import 'budget_tile.dart';

class BudgetList extends StatelessWidget {
  final ScrollController controller;
  final bool isMini;
  const BudgetList({this.controller, this.isMini = false, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final MySettings _settings = getIt<MySettings>();

    return Stack(
      children: [
        BlocBuilder<BudgetListBloc, BudgetListState>(
            builder: (context, state) {
          return state.map(
            initial: (e) => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: (e) => const Center(
              child: CircularProgressIndicator(),
            ),
            listLoaded: (e) {
              final KtList<Budget> budgets =
                  e.budgets.filter((budget) => !budget.isGift);
              if (budgets.isNotEmpty()) {
                return ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  controller: controller,
                  itemBuilder: (BuildContext context, int index) {
                    final Budget budget = budgets.get(index);

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
                                      "Your transactor %s, has been sent to archive"
                                          .i18n
                                          .fill([
                                    budget.accountName.getOrCrash()
                                  ]),
                                  duration: const Duration(seconds: 5));
                              budgets.minusElement(budget);
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
                              if (budget.nextUnlockDate
                                          .getOrCrash()
                                          .difference(DateTime.now())
                                          .inSeconds <=
                                      0 &&
                                  _settings.getUserId !=
                                      budget.senderId.getOrCrash() &&
                                  budget.amountLocked.getOrCrash() > 0) {
                                context.bloc<BudgetActorBloc>().add(
                                      BudgetActorEvent.autoUnlockPeriodically(
                                          budget,
                                          budget.isGift
                                              ? "received"
                                              : "personal"),
                                    );
                              } else {
                                BotToast.showText(
                                    text: "Please wait for next unlock".i18n);
                              }
                            },
                          ),
                        ],
                        child: BudgetTile(
                          index: index,
                          budget: budget,
                        )
                        // key: ObjectKey(saving),
                        );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: size.height * 0.005,
                  ),
                  itemCount: budgets.size,
                );
              } else if (budgets.isEmpty()) {
                return const BudgetManagerInitialScreen();
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loadFailure: (e) => Center(
              child: Text('Critical failure'.i18n),
            ), //TODO: [STUR-16] CriticalFailureDisplay(failure: e.noteFailure),
          );
        }),
       if(isMini) Align(
          alignment: Alignment.topLeft,
          child: Container(
              color: TfColors.secondary, child: Text('Budget Managers'.i18n)),
        ),
      ],
    );
  }
}
