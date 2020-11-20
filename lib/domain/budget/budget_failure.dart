import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_failure.freezed.dart';
@freezed
abstract class BudgetFailure with _$BudgetFailure {
  const factory BudgetFailure.unexpected() = _Unexpected;
  const factory BudgetFailure.insufficientPermissions() = _InsufficientPermissions;
  const factory BudgetFailure.unableToCreateBudget() = _UnableToCreate;
  const factory BudgetFailure.unableToSendBudget() = _UnableToSendBudget;
  const factory BudgetFailure.insufficientFundsInTrustedFunds() = _UnsufficientFundsInTrustedFunds;
  const factory BudgetFailure.paymentWithMomoFailed() = _PaymentWithMomoFailed;
  const factory BudgetFailure.invalidDailyPayRate() = _InvalidDailyPayRate;
  const factory BudgetFailure.invalidWeeklyPayRate() = _InvalidWeeklyPayRate;
  const factory BudgetFailure.invalidMonthlyPayRate() = _InvalidMonthlyPayRate;
  const factory BudgetFailure.invalidYearlyPayRate() = _InvalidYearlyPayRate;
  const factory BudgetFailure.unexpectedFieldInBudget() = _UnexpectedFieldInBudget;
  const factory BudgetFailure.invalidNoDaysForYearlyPayRate() = _InvalidNoDaysForYearlyPayRate;
  const factory BudgetFailure.invalidNoDaysForWeeklyPayRate() = _InvalidNoDaysForWeeklyPayRate;
  const factory BudgetFailure.invalidNoDaysForMonthlyPayRate() = _InvalidNoDaysForMonthlyPayRate;
  const factory BudgetFailure.invalidNoDaysForDailyPayRate() = _InvalidNoDaysForDailyPayRate;
  const factory BudgetFailure.userNotFound() = _UserNotForm;

  // Budget actor failures
  const factory BudgetFailure.unableToHideBudgetUntilUnlock() = _UnableToHideBudgetUntilUnlock;
  const factory BudgetFailure.unableToDeleteCompleteBudget() = _UnableToDeleteCompleteBudget;
  const factory BudgetFailure.unableToForceUnlock() = _UnableToForceUnlock;
  const factory BudgetFailure.unableToCashUnlock() = _UnableToCashUnlock;
  const factory BudgetFailure.timeOutOfSync() = _TimeOutOfSync;
  const factory BudgetFailure.unableToUnlockBudgetPeriodically() = _UnableToUnlockPeriodically;
}
