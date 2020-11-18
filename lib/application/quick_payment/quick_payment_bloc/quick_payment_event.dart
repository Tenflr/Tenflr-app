part of 'quick_payment_bloc.dart';

@freezed
@immutable
abstract class QuickPaymentEvent with _$QuickPaymentEvent {
  const factory QuickPaymentEvent.initialize(User requester) = _InitializeToken;
  const factory QuickPaymentEvent.tokenScanned(String scannedToken) = _TokenScanned;
  const factory QuickPaymentEvent.requestPayment(MoneyAmount amount) = _RequestPayment;
  const factory QuickPaymentEvent.validatePayment(User requester) = _ValidatePayment;
  const factory QuickPaymentEvent.resetToken() = _ResetToken;
  const factory QuickPaymentEvent.autoCash(QuickPayment payment) = _AutoCash;
  // const factory QuickPaymentEvent.validatePayment() = _;
  // const factory QuickPaymentEvent.validatePayment() = _ValidatePayment;
}
