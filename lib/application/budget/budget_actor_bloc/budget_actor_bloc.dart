import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/budget/budget_failure.dart';
import '../../../domain/budget/budgets.dart';
import '../../../domain/budget/i_budget_repository.dart';

part 'budget_actor_bloc.freezed.dart';
part 'budget_actor_event.dart';
part 'budget_actor_state.dart';

@injectable
class BudgetActorBloc extends Bloc<BudgetActorEvent, BudgetActorState> {
  BudgetActorBloc(this._budgetRepo) : super(BudgetActorState.initial());
  final IBudgetRepository _budgetRepo;

  @override
  Stream<BudgetActorState> mapEventToState(BudgetActorEvent gEvent) async* {
    yield* gEvent.map(
      autoUnlockPeriodically: (e)async* {
         yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<BudgetFailure, Unit> failureOrSuccess =
            await _budgetRepo.autoUnlockBudgetPeriodically(e.budget, e.type);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      manualCash: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<BudgetFailure, Unit> failureOrSuccess =
            await _budgetRepo.autoUnlockBudgetPeriodically(e.budget, e.type);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      hide: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<BudgetFailure, Unit> failureOrSuccess =
            await _budgetRepo.hideBudgetUntilUnlock(e.budget, e.type);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      deleteComplete: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<BudgetFailure, Unit> failureOrSuccess =
            await _budgetRepo.deleteFinishedBudget(e.budget, e.type);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      forceUnlockPersonal: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<BudgetFailure, Unit> failureOrSuccess =
            await _budgetRepo.forceUnlock(e.budget, e.type);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}
