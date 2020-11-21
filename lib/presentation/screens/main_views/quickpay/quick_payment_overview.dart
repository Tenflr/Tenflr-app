import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'quick_payment_list.dart';

import '../../../../application/quick_payment/quick_payment_watcher_bloc/quick_payment_watcher_bloc.dart';
import '../../../core/translations/translations.i18n.dart';
class QuickPaymentOverView extends HookWidget {
  final ScrollController controller;
  const QuickPaymentOverView({this.controller, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocConsumer<QuickPaymentWatcherBloc, QuickPaymentWatcherState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.map(
          initial: (e) => Center(child: Text("Make Quick Payment".i18n)),
          loadInProgress: (e) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (e) => QuickPaymentList(
              controller: controller, quickPaymants: e.quickPayment),
          loadFailure: (e) => Center(
              child: Text("An Error Occurred while loading Payment 🤔".i18n)),
        );
      },
    );
  }
}
