import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_failure.freezed.dart';
@freezed
abstract class PaymentFailure with _$PaymentFailure {
  const factory PaymentFailure.unexpected() = _Unexpected;
  const factory PaymentFailure.insufficientPermissions() = _InsufficientPermissions;
  const factory PaymentFailure.unableToSendPayment() = _UnableToSendPayment;
  const factory PaymentFailure.insufficientFundsInTrustedFunds() = _InsufficientFundsInTrustedFunds;
  const factory PaymentFailure.userWithIdNotFound() = _UserWithIdNotFound;
  const factory PaymentFailure.paymentWithMomoFailed() = _PaymentWithMomoFailed;


  // payment actor failure
  const factory PaymentFailure.unableToCashPayment() = _UnableToCash;
  const factory PaymentFailure.unableToHidePayment() = _UnableToHide;
  const factory PaymentFailure.unableToUnlockSentPayment() = _UnableToUnlockSentPayment;
  const factory PaymentFailure.unableToFreezeSentPayment() = _UnableToFreezeSentPayment;
  const factory PaymentFailure.unableToDeleteReceivedPayment() = _UnableToDeleteReceivedPayment;
  const factory PaymentFailure.unableToReturnPayment() = _UnableToReturnPayment;
  const factory PaymentFailure.unableToRateUser() = _UnableToRateUser;
  const factory PaymentFailure.timeOutOfSync() = _TimeOutOfSync;
  const factory PaymentFailure.requestUnlockFailed() = _RequestUnlockFailed;
}
