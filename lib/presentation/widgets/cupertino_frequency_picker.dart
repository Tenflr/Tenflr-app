import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';

import '../../application/budget/budget_input_collector/budgetinputcollector_bloc.dart';
import '../../domain/core/constant_list.dart';
import '../../domain/core/valid_objects.dart';
import '../core/assets/colors.dart';
import '../core/styles/decorations.dart';
import '../core/translations/translations.i18n.dart';

class CupertinoFrequencyPicker extends HookWidget {
  const CupertinoFrequencyPicker();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Align(
      // alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('What is the frequency of the payment you need?'.i18n),
          const SizedBox(height: 10),
          Container(
            decoration: DefaultDecoration.all,
            width: size.width * 0.5,
            height: size.height * 0.1,
            child: CupertinoPicker(
              // scrollController:  scrollController,

              backgroundColor: TfColors.secondary,
              itemExtent: 40,
              onSelectedItemChanged: (int i) {
                setPayoutMode(context, i);
              },
              children: [
                Center(child: Text('daily'.i18n, style: DefaultTextStyles.cupertinoScroll,)),
                Center(child: Text('weekly'.i18n,  style: DefaultTextStyles.cupertinoScroll,)),
                Center(child: Text('monthly'.i18n,  style: DefaultTextStyles.cupertinoScroll,)),
                Center(child: Text('yearly'.i18n,  style: DefaultTextStyles.cupertinoScroll,)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void setPayoutMode(BuildContext context, int i) {
    switch (i) {
      case 0:
        context.bloc<BudgetInputCollectorBloc>().add(
            BudgetInputCollectorEvent.payoutModeChanged(
                payoutMode:
                    PayoutModeObject(kPayoutMode.values[i].val)));
        break;
      case 1:
        context.bloc<BudgetInputCollectorBloc>().add(
            BudgetInputCollectorEvent.payoutModeChanged(
                payoutMode:
                    PayoutModeObject(kPayoutMode.values[i].val)));
        break;
      case 2:
        context.bloc<BudgetInputCollectorBloc>().add(
            BudgetInputCollectorEvent.payoutModeChanged(
                payoutMode:
                    PayoutModeObject(kPayoutMode.values[i].val)));
        break;
      case 3:
        context.bloc<BudgetInputCollectorBloc>().add(
            BudgetInputCollectorEvent.payoutModeChanged(
                payoutMode:
                    PayoutModeObject(kPayoutMode.values[i].val)));
        break;
      default:
    }
  }
}
