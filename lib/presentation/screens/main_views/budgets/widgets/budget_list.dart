import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import '../../../../../application/budget/budget_actor_bloc/budget_actor_bloc.dart';
import '../../../../../application/budget/budget_list_bloc/budgetlist_bloc.dart';
import '../../../../../domain/budget/budgets.dart';
import '../../../../../domain/core/settings.dart';
import '../../../../../domain/user/user.dart';
import '../../../../../injection.dart';
import '../../../../../routes/router.gr.dart';
import '../../../../core/assets/colors.dart';
import '../../../../core/hooks/scrol_controller_for_animation.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';
import '../budget_manager_initial_screen.dart';
import 'budget_tile.dart';

class BudgetList extends HookWidget {
  final ScrollController controller;
  final bool isMini;
  const BudgetList({this.controller, this.isMini = false, Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final MySettings _settings = getIt<MySettings>();
    final User user = Provider.of(context, listen: false);
    final hideFabAnimController = useAnimationController(
        duration: kThemeAnimationDuration, initialValue: 1);
    final scrollController =
        useScrollControllerForAnimation(hideFabAnimController);
    return Stack(
      children: [
        BlocBuilder<BudgetListBloc, BudgetListState>(builder: (context, state) {
          return state.map(
            initial: (e) => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: (e) => const Center(
              child: CircularProgressIndicator(),
            ),
            listLoaded: (e) {
              final KtList<Budget> budgets = e.budgets;
              if (budgets.isNotEmpty()) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: size.height * 0.78,
                  child: Stack(
                    children: [
                      ListView.builder(
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
                                            BudgetActorEvent
                                                .autoUnlockPeriodically(
                                                    budget,
                                                    budget.isGift
                                                        ? "received"
                                                        : "personal"),
                                          );
                                    } else {
                                      BotToast.showText(
                                          text: "Please wait for next unlock"
                                              .i18n);
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
                        // separatorBuilder: (BuildContext context, int index) =>
                        //     SizedBox(
                        //   height: size.height * 0.005,
                        // ),
                        itemCount: budgets.size,
                      ),
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
                                    onPressed: () {
                                      ExtendedNavigator.of(context)
                                          .pushBudgetCreateScreen(
                                              isGift: true, user: user);
                                    },
                                    description: "Gift Budget Manager".i18n,
                                    width: size.width * 0.85,
                                    isSecondaryButton: true,
                                  ),
                                  SizedBox(
                                      width: size.width * 0.3,
                                      child: const Divider(
                                        thickness: 1,
                                        color: TfColors.primary,
                                      )),
                                  Button(
                                    onPressed: () {
                                      ExtendedNavigator.of(context)
                                          .pushBudgetCreateScreen(
                                              isGift: false, user: user);
                                    },
                                    description: "New Budget Manager".i18n,
                                    width: size.width * 0.85,
                                  ),
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
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
        if (isMini)
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                color: TfColors.secondary, child: Text('Budget Managers'.i18n)),
          ),
      ],
    );
  }
}
