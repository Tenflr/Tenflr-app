part of 'savingsinputcollector_bloc.dart';

@freezed
@immutable
abstract class SavingsInputCollectorEvent with _$SavingsInputCollectorEvent {
  const factory SavingsInputCollectorEvent.initilized(Savings saving) =
      _Initialized;
  const factory SavingsInputCollectorEvent.amountChanged(
      {@required MoneyAmount amount}) = _AmountChanged;
  const factory SavingsInputCollectorEvent.withdrawalDataChanged(
      {@required ValidDate date}) = _WithDrawalDateChanged;
  const factory SavingsInputCollectorEvent.accountNameChanged(
      {@required AccountName name}) = _AccountNameChanged;
  const factory SavingsInputCollectorEvent.addMoneyToSavings(
      {@required Savings savings}) = _AddMoneyToSavingsE;
  const factory SavingsInputCollectorEvent.submitted() = _Submitted;
  const factory SavingsInputCollectorEvent.addAmountChanged(
      {@required MoneyAmount addedAmount}) = _AddAmountChanged;
}
