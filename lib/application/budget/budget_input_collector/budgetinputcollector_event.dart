part of 'budgetinputcollector_bloc.dart';

@freezed
abstract class BudgetInputCollectorEvent with _$BudgetInputCollectorEvent {
  const factory BudgetInputCollectorEvent.initialized(User user) = _Initialized;
  const factory BudgetInputCollectorEvent.submitted() = _Submitted;
  const factory BudgetInputCollectorEvent.amountToManageChanged(
      {@required MoneyAmount amount}) = _AmountToManageChanged;
  const factory BudgetInputCollectorEvent.lockPeriodChanged(
      {@required ValidDate unlockDate}) = _LockPeriodChanged;

  const factory BudgetInputCollectorEvent.payoutModeChanged(
      {@required PayoutModeObject payoutMode}) = _PayoutModeChanged;
  const factory BudgetInputCollectorEvent.receiverInfoChanged(
      {@required String searchTerm}) = _ReceiverInfoChanged;
  const factory BudgetInputCollectorEvent.receiverChanged(
      {@required User receiver}) = _ReceiverChanged;
  const factory BudgetInputCollectorEvent.managerAccountNameChanged(
      {@required AccountName accountName}) = _ManagerAccountNameChanged;
}
