part of 'budgetinputcollector_bloc.dart';

@freezed
abstract class BudgetInputCollectorState with _$BudgetInputCollectorState {
  const factory BudgetInputCollectorState({
    @required bool showErrorMessage,
    @required bool isSaving,
    @required bool isEditing,
    @required Budget budget,
    @required String searchTerm,
    @required Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption,
  }) = _BudgetInputCollectorState;
  factory BudgetInputCollectorState.empty() => BudgetInputCollectorState(
        saveFailureOrSuccessOption: none(),
        showErrorMessage: false,
        isEditing: false,
        isSaving: false,
        budget: Budget.empty(),
        searchTerm: '',
      );
}
