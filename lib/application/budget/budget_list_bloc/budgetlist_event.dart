part of 'budgetlist_bloc.dart';

@freezed

@immutable
abstract class BudgetListEvent with _$BudgetListEvent{
  const factory BudgetListEvent.watchAll() = _WatchAll;
  const factory BudgetListEvent.watchPersonal() = _InitList;
  const factory BudgetListEvent.watchSent() = _InitSentList;
  const factory BudgetListEvent.watchReceived() = _InitReceiverList;
  const factory BudgetListEvent.listCompleted({ @required Either<BudgetFailure ,KtList<Budget>> failureOrbudgets}) = _ListCompleted;
}

