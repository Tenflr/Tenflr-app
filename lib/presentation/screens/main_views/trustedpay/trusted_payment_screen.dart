import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tenflrpay/application/payment/payment_actor_bloc/payment_actor_bloc.dart';
import 'package:tenflrpay/application/payment/transaction_list_bloc/transaction_list_bloc.dart';
import 'package:tenflrpay/presentation/core/hooks/scrol_controller_for_animation.dart';
import 'package:tenflrpay/presentation/screens/main_views/trustedpay/widgets/trusted_payment_list.dart';
import 'package:tenflrpay/presentation/widgets/transaction_list.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../../injection.dart';

class TrustedPaymentScreen extends StatelessWidget {
  const TrustedPaymentScreen();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TransactionListBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<PaymentActorBloc>(),
        ),
      ],
      child: const TrustedPaymentFrom(),
    );
  }
}

class TrustedPaymentFrom extends HookWidget {
  const TrustedPaymentFrom();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final hideFabAnimController = useAnimationController(
        duration: kThemeAnimationDuration, initialValue: 1);
    final scrollController =
        useScrollControllerForAnimation(hideFabAnimController);
    return Container(
        height: size.height * 0.78,
        child: BlocListener<PaymentActorBloc, PaymentActorState>(
          listenWhen: (p, c) => p.isSaving != c.isSaving,
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                    (failure) => FlushbarHelper.createError(
                            message: failure.maybeMap(
                          orElse: () => null,
                          unableToCashPayment: (_) =>
                              "Unable to cash Payment. Please contact support!"
                                  .i18n,
                          unableToHidePayment: (_) =>
                              "Unable to Hide Payment. Please contact support!"
                                  .i18n,
                          unableToUnlockSentPayment: (_) =>
                              "Unable to unlock Payment. Please contact support!"
                                  .i18n,
                          unableToFreezeSentPayment: (_) =>
                              "Unable to freeze Payment. Please contact support!"
                                  .i18n,
                          unableToDeleteReceivedPayment: (_) =>
                              "Unable to delete Payment. Please contact support!"
                                  .i18n,
                          unableToReturnPayment: (_) =>
                              "Unable to return Payment. Please contact support!"
                                  .i18n,
                          unableToRateUser: (_) => "Unable to rate User".i18n,
                        )).show(context),
                    (_) {}));
          },
          child: TrustedPaymentList(controller: scrollController),
        ));
  }
}
