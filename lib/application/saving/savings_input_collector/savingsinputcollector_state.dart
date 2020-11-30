part of 'savingsinputcollector_bloc.dart';

@freezed
@immutable
abstract class SavingsInputCollectorState with _$SavingsInputCollectorState {
  const factory SavingsInputCollectorState({
    @required Savings saving,
    @required bool showErrorMessage,
    @required bool isSaving,
    @required bool isEditing,
    @required MoneyAmount addedAmount,
    @required MoneyAmount amount,
    @required ValidDate withDrawalDate,
    @required AccountName accountName,
    MoneyAmount amountToAdd,
    @required Option<Either<SavingsFailure, Unit>> saveFailureOrSuccessOption,
  }) = _SavingsInputCollectorState;

  factory SavingsInputCollectorState.empty() => SavingsInputCollectorState(
        showErrorMessage: false,
        saving: Savings.empty().copyWith(
          amount: MoneyAmount(10000.0),
          withdrawalDate: ValidDate(DateTime(DateTime.now().year + 3)),
        ),
        isSaving: false,
        isEditing: false,
        amount: MoneyAmount(10000),
        addedAmount: MoneyAmount(0.0),
        withDrawalDate: ValidDate(DateTime.now()),
        accountName: AccountName(''),
        saveFailureOrSuccessOption: none(),
        amountToAdd: MoneyAmount(0),
      );
}
