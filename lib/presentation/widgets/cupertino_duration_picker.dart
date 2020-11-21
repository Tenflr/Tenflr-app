import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../application/budget/budget_input_collector/budgetinputcollector_bloc.dart';
import '../../domain/core/valid_objects.dart';
import '../core/assets/colors.dart';
import '../core/styles/decorations.dart';
import '../core/translations/translations.i18n.dart';

class CupertinoDurationPicker extends HookWidget {
  const CupertinoDurationPicker();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final duration = useState(0);
    final number = useState(0);
    final time = useState(1);
    final today = DateTime.now();

    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Select the duration...'.i18n),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: DefaultDecoration.left,
                width: size.width * 0.2,
                height: size.height * 0.1,
                child: CupertinoPicker(
                  // scrollController:  scrollController,

                  backgroundColor: TfColors.secondary,
                  itemExtent: 40,
                  onSelectedItemChanged: (int i) {
                    setTime(number, time, duration, i + 1);
                    context.bloc<BudgetInputCollectorBloc>().add(
                        BudgetInputCollectorEvent.lockPeriodChanged(
                            unlockDate: ValidDate(DateTime(today.year,
                                today.month, today.day + time.value))));
                  },
                  children:
                      List<Text>.generate(30, (index) => Text("${index + 1}")),
                ),
              ),
              Container(
                decoration: DefaultDecoration.right,
                width: size.width * 0.3,
                height: size.height * 0.1,
                child: CupertinoPicker(
                  // scrollController:  scrollController,

                  backgroundColor: TfColors.secondary,
                  itemExtent: 40,
                  onSelectedItemChanged: (_) {},
                  children: [
                    Text('days'.i18n),
                    Text('weeks'.i18n),
                    Text('months'.i18n),
                    Text('years'.i18n),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void setTime(
    ValueNotifier<int> number,
    ValueNotifier<int> time,
    ValueNotifier<int> duration,
    int numb,
  ) {
    switch (duration.value) {
      case 0:
        number.value = numb;
        duration.value = 0;
        time.value = number.value;

        break;
      case 1:
        duration.value = 1;
        number.value = numb;
        time.value = 7 * number.value;

        break;
      case 2:
        duration.value = 2;
        number.value = numb;
        time.value = 30 * number.value;

        break;
      case 3:
        duration.value = 3;
        number.value = numb;
        time.value = 365 * number.value;

        break;
      default:
    }
  }
}
