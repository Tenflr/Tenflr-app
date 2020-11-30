import '../core/valid_objects.dart';
import '../logs/logs.dart';
import 'payment.dart';
import 'payment_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import '../user/user.dart';

abstract class IPaymentRepository {
  // watch payments
  Stream<Either<PaymentFailure, KtList<Payment>>> watchAll();

  // watch sent payment
  Stream<Either<PaymentFailure, KtList<Payment>>> watchSent();

  // watch received payment
  Stream<Either<PaymentFailure, KtList<Payment>>> watchReceived();

  // watch trustedPay funds
  Stream<Either<PaymentFailure, MoneyAmount>> watchTrustedPay();

  // make payment
  Future<Either<PaymentFailure, bool>> sendPayment(Payment payment, Logs log);

  //Check for enough funds in TrustedPay account
  Future<bool> hasEnoughTrustedFunds(MoneyAmount requiredAmount);

  // Search user
  Future<Either<PaymentFailure, User>> searchUser(String userQuery);

  //Use to deduct funds from current user Trusted pay account
  // to be sent to someone or for a purchase.
  Future<bool> deductOrCreditTrustedFunds(MoneyAmount amount,
      {@required bool deduct});

  // Writes logs history to firestore and weekly logs to feed app
  Future<void> writeTransactionsLogs(Logs log);

  // Write logs to indicated that Trusted pay was recharged by MoMo Account
  Future<void> writeTrustedPayFundsRechargeLogs(String paymentId, Logs log,
      {@required bool cashIn});

  //  unlock sent payment
  Future<Either<PaymentFailure, bool>> unlockSentPayment(Payment payment);

  // block sent payment
  Future<Either<PaymentFailure, bool>> freezeSentPayment(Payment payment);

  // auto cash payment after unlock date
  Future<Either<PaymentFailure, bool>> autoCashPayment(Payment payment);

  // request sender to unlock payment
  Future<Either<PaymentFailure, bool>> requestUnlockOfReceivedPayment(
      Payment payment);

  // return un-wanted payment
  Future<Either<PaymentFailure, bool>> returnPayment(Payment payment);

  // Rate a user to influence h/er reputation
  Future<Either<PaymentFailure, bool>> rateUser(Payment payment, bool isUp);

  // delete payment
  Future<Either<PaymentFailure, bool>> deleteCashedPayment(Payment payment);

  // hide payment
  Future<Either<PaymentFailure, bool>> hidePayment(Payment payment);

  // get trusted trustedPayBalance
  Future<Either<PaymentFailure, bool>> creditTenflrWithMTN(
      Payment payment, Logs log);
  // get trusted trustedPayBalance
  Future<Either<PaymentFailure, bool>> creditTenflrWithOrange(
      Payment payment, Logs log);

  // get trusted trustedPayBalance
  Future<Either<PaymentFailure, bool>> withdrawTenflrToMTN(
      Payment payment, Logs log,
      {bool transfer = false});
  // get trusted trustedPayBalance
  Future<Either<PaymentFailure, bool>> withdrawTenflrToOrange(
      Payment payment, Logs log);

// amount to be deducted before unlock
  Future<bool> deductBusinessGain(MoneyAmount amount,
      {@required String sourceId, @required String type});

  // write business gain logs
  Future<void> writeBusinessGainLogs(MoneyAmount amount,
      {@required String sourceId, @required String type});
}
