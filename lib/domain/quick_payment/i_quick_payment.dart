import '../logs/logs.dart';
import 'quick_payment.dart';
import 'quick_payment_failure.dart';
import '../../infrastructure/quick_payment_token/quick_payment_token_dtos.dart';
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
