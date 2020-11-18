import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:tenflrpay/application/main_views_bloc/main_views_bloc.dart';
import 'package:tenflrpay/application/saving/savings_actor_bloc/savings_actor_bloc.dart';
import 'package:tenflrpay/application/saving/savings_list_bloc/savingslist_bloc.dart';
import 'package:tenflrpay/presentation/core/hooks/scrol_controller_for_animation.dart';
import 'package:tenflrpay/presentation/screens/main_views/savings/widgets/savings_list.dart';
import 'package:tenflrpay/presentation/widgets/button.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../../routes/router.gr.dart';
import '../../../../injection.dart';

class SavingsScreen extends StatelessWidget {
  const SavingsScreen();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SavingsListBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SavingsActorBloc>(),
        ),
      ],
      child: const SavingsForm(),
    );
  }
}

class SavingsForm extends HookWidget {
  const SavingsForm();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final hideFabAnimController = useAnimationController(
        duration: kThemeAnimationDuration, initialValue: 1);
    final scrollController =
        useScrollControllerForAnimation(hideFabAnimController);
    return Container(
      // padding: const EdgeInsets.only(right: 16, left: 16),
      // color: AppColors.primaryBackground,
      height: size.height * 0.78,
      child: BlocListener<SavingsActorBloc, SavingsActorState>(
        listenWhen: (p, c) => p.isSaving != c.isSaving,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                  (failure) => FlushbarHelper.createError(
                          message: failure.maybeMap(
                        orElse: () => null,
                        unableToHideSaving: (_) =>
                            "Unable to hide Savings! Please contact Support."
                                .i18n,
                        unableTofreezeSaving: (_) =>
                            "Unable to freeze Savings! Please contact Support."
                                .i18n,
                        unableToUnlockSaving: (_) =>
                            "Unable to unlock Savings! Please contact Support."
                                .i18n,
                        unalbeToForceUnlockSaving: (_) =>
                            "Unable to force unlock Savings! Please contact Support."
                                .i18n,
                        unableToDeleteSaving: (_) =>
                            "Unable to delete Savings! Please contact Support."
                                .i18n,
                      )).show(context),
                  (_) {}));
        },
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SavingsList(
              controller: scrollController,
              isMini: false,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              // mainAxisAlignment: MainAxisAlignment.end,
              child: FadeTransition(
                opacity: hideFabAnimController,
                child: ScaleTransition(
                  scale: hideFabAnimController,
                  child: Button(
                    description: 'Create a Saving account'.i18n,
                    onPressed: () =>
                        ExtendedNavigator.of(context).pushCreateSavingsScreen(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
