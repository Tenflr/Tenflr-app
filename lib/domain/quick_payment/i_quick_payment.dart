import 'package:tenflrpay/domain/logs/logs.dart';
import 'package:tenflrpay/domain/quick_payment/quick_payment.dart';
import 'package:tenflrpay/domain/quick_payment/quick_payment_failure.dart';
import 'package:tenflrpay/infrastructure/quick_payment_token/quick_payment_token_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class IQuickPaymentRepository {
  Stream<Either<QuickPaymentFailure, KtList<QuickPayment>>> watchAll();

// Quick payment
  Future<Either<QuickPaymentFailure, Unit>> quickPayment(
      QuickPayment payment, Logs log, );

      // cash payment
  Future<Either<QuickPaymentFailure, Unit>> autoCashPayment(
      QuickPayment payment,);
}
