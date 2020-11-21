import 'package:rxdart/subjects.dart';

import '../../../domain/budget/budgets.dart';



class BudgetStatProvider {
  static BehaviorSubject _budgetsSubject = BehaviorSubject<List<Budget>>();
  Sink get getBudgets => _budgetsSubject.sink;
  BehaviorSubject<double> budgetAmountStream = _budgetsSubject.stream as BehaviorSubject<double>;

  Future<void> budgetStatCard() async =>
      await _budgetsSubject.last.then((value) {
        value.forEach((element) {
          budgetAmountStream.add(budgetAmountStream.value + 1);
        });
       
      });

  @override
  void dispose() {
    _budgetsSubject.close();
    budgetAmountStream.close();
  }
}
