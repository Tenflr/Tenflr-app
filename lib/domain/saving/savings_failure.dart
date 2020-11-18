import 'package:freezed_annotation/freezed_annotation.dart';
part 'savings_failure.freezed.dart';

@freezed
abstract class SavingsFailure with _$SavingsFailure {
  const factory SavingsFailure.unexpected() = _Unexpected;
  const factory SavingsFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory SavingsFailure.unableToCreate() = _UnableToCreateSavings;
  const factory SavingsFailure.unableToUpdate() = _UnableToUpdate;
  const factory SavingsFailure.insufficientFundsInTrustedFunds() =
      _InsufficientFundsInTrustedFunds;
  const factory SavingsFailure.paymentWithMomoFailed() = _PaymentWithMomoFailed;

  // actor failures

  const factory SavingsFailure.unableToHideSaving() = _UnableToHide;
  const factory SavingsFailure.unableTofreezeSaving() = _UnableToFreeze;
  const factory SavingsFailure.unableToUnlockSaving() = _UnableToUnlocSaving;
  const factory SavingsFailure.unalbeToForceUnlockSaving() =
      _UnableToForceUnlockSaving;
  const factory SavingsFailure.unableToDeleteSaving() = _UnableToDeleteSaving;
  const factory SavingsFailure.timeOutOfSync() = _TimeOutOfSync;
}
