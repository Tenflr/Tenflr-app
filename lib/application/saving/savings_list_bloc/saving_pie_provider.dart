import 'package:rxdart/subjects.dart';

import '../../../domain/saving/savings.dart';

class SavingsPieProvider {
  final BehaviorSubject _savingsSubject = BehaviorSubject<List<Savings>>();
  Sink get getSavings => _savingsSubject.sink;

  Future<Map<String, double>> savingsPie() async =>
       _savingsSubject.last.then((value) {
        final Map<String, double> dataMap = {};
        value.forEach((element) {
          dataMap.putIfAbsent(element.managerName.toString(), () => element.amount as double);
        });
        return Future.value(dataMap);
      });

  void dispose() {
    _savingsSubject.close();
  }
}
