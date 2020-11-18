import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quick_payment_failure.freezed.dart';

@freezed
@immutable
abstract class QuickPaymentFailure with _$QuickPaymentFailure {
  const factory QuickPaymentFailure.tokenExpired() = _TokenExpired;
  const factory QuickPaymentFailure.errorScanningQRCode() = _ErrorScanning;
  const factory QuickPaymentFailure.errorGeneratingQRCode() = _ErrorGenerating;
  const factory QuickPaymentFailure.insufficientPermissions() = _InsufficientPermissions;
  const factory QuickPaymentFailure.unexpected() = _UnexpectedError;
  const factory QuickPaymentFailure.insufficientFunds() = _InsufficientFunds;
  const factory QuickPaymentFailure.quickPaymentFailed() = _PaymentFailed;
  const factory QuickPaymentFailure.timeOutOfSync() = _TimeOutOfSync;
  const factory QuickPaymentFailure.paymentWithMomoFailed() = _PaymentWithMomoFailed;
  const factory QuickPaymentFailure.failedToCashQuickPayment() = _FailedToCashQuickPayment;
  const factory QuickPaymentFailure.youCantPayYourSelf() = _YouCantPayYourSelf;
}
