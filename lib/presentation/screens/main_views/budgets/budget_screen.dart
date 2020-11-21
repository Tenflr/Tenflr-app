import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../application/budget/budget_actor_bloc/budget_actor_bloc.dart';
import '../../../../application/budget/budget_list_bloc/budgetlist_bloc.dart';
import '../../../../application/main_views_bloc/main_views_bloc.dart';
import '../../../core/hooks/scrol_controller_for_animation.dart';
import 'widgets/budget_list.dart';
import '../../../widgets/button.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../../injection.dart';

class BudgetManagerScreen extends StatelessWidget {
  const BudgetManagerScreen();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<BudgetListBloc>()..add(const BudgetListEvent.watchAll()),
        ),
        BlocProvider(
          create: (context) => getIt<BudgetActorBloc>(),
        ),
      ],
      child: const BudgetManagerForm(),
    );
  }
}

class BudgetManagerForm extends HookWidget {
  const BudgetManagerForm();
  @override
  Widget build(BuildContext context) {
    final hideFabAnimController = useAnimationController(
        duration: kThemeAnimationDuration, initialValue: 1);
    final scrollController =
        useScrollControllerForAnimation(hideFabAnimController);
    return BlocListener<BudgetActorBloc, BudgetActorState>(
      listenWhen: (p, c) => p.isSaving != c.isSaving,
      listener: (context, state) {
        state.saveFailureOrSuccessOption
            .fold(
                () {},
                (either) => either.fold(
                    (failure) => FlushbarHelper.createError(
                            message: failure.maybeMap(
                          orElse: () => null,
                          unableToHideBudgetUntilUnlock: (_) =>
                              "Unable to hide Budget. Please Contact support!"
                                  .i18n,
                          unableToDeleteCompleteBudget: (_) =>
                              "Unable to Delete Budget. Please Contact support!"
                                  .i18n,
                          unableToForceUnlock: (_) =>
                              "Unable to Force unlock Budget. Please Contact support!"
                                  .i18n,
                          unableToCashUnlock: (_) =>
                              "Unable to cash unlocked Budget. Please Contact support!"
                                  .i18n,
                        )),
                    (_) {}))
            .show(context);
      },
      child: BudgetList(controller: scrollController),
    );
  }
}
