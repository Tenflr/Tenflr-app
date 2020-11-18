part of 'budgetlist_bloc.dart';

@freezed
@immutable
abstract class BudgetListState with _$BudgetListState{
  const factory BudgetListState.initial() = _Initial;
  const factory BudgetListState.loading() = _Loading;
  const factory BudgetListState.listLoaded({@required KtList<Budget> budgets}) = _ListLoaded;
  const factory BudgetListState.loadFailure({@required BudgetFailure failure}) = _LoadFailure;
}
