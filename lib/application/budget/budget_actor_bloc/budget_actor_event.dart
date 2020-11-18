part of 'budget_actor_bloc.dart';

@freezed
abstract class BudgetActorEvent with _$BudgetActorEvent {
  const factory BudgetActorEvent.manualCash(Budget budget, String type) = _ManualCash;
  const factory BudgetActorEvent.hide(Budget budget, String type) = _Hide;
  const factory BudgetActorEvent.deleteComplete(Budget budget, String type,) = _DeleteComplete;
  const factory BudgetActorEvent.forceUnlockPersonal(Budget budget, String type) = _ForceUnlockPersonal;
  const factory BudgetActorEvent.autoUnlockPeriodically(Budget budget, String type) = _autoUnlockPersonal;
}