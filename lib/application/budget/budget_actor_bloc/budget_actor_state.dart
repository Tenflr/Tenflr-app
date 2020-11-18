part of 'budget_actor_bloc.dart';

@freezed
abstract class BudgetActorState implements _$BudgetActorState {
  const BudgetActorState._();
  factory BudgetActorState({
    @required bool isSaving,
    @required Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption,
  }) = _BudgetActorState;
  factory BudgetActorState.initial() => BudgetActorState(
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
