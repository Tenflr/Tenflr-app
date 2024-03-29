import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/kt.dart';
import 'package:ntp/ntp.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/constant_list.dart';
import '../../domain/core/errors.dart';
import '../../domain/core/settings.dart';
import '../../domain/core/valid_objects.dart';
import '../../domain/logs/logs.dart';
import '../../domain/payment/i_payment_repository.dart';
import '../../domain/payment/payment.dart';
import '../../domain/payment/payment_failure.dart';
import '../../domain/user/user.dart';
import '../core/error_code_message.dart';
import '../core/firestore_helpers.dart';
import '../logs/logs_dtos.dart';
import '../repositories/api_path.dart';
import '../repositories/momo_api_service.dart';
import '../user/user_dtos.dart';
import 'payment_dtos.dart';

@LazySingleton(as: IPaymentRepository)
class PaymentRepository implements IPaymentRepository {
  final Firestore _firestore;
  final MySettings _mySettings;
  final MomoApiService _momoApiService;
  final IAuthFacade _authFacade;

  PaymentRepository(this._firestore, this._momoApiService, this._mySettings,
      this._authFacade);
  Future<Either<PaymentFailure, bool>> _isTimeSync() async {
    final int timeOfSet =
        await NTP.getNtpOffset(lookUpAddress: primaryLockupAddress);
    if (timeOfSet > maxTimeOffset) {
      return left(const PaymentFailure.timeOutOfSync());
    }
    return right(true);
  }

  @override
  Stream<Either<PaymentFailure, KtList<Payment>>> watchAll() async* {
    yield* Rx.combineLatest2(
        watchReceived(),
        watchSent(),
        (Either<PaymentFailure, KtList<Payment>> a,
                Either<PaymentFailure, KtList<Payment>> b) =>
            a.fold(
                (failure) => left(failure),
                (aList) => b.fold((failure) => left(failure),
                    (bList) => right(bList.plus(aList)))));
  }

  @override
  Stream<Either<PaymentFailure, KtList<Payment>>> watchReceived() async* {
    final CollectionReference paymentRef =
        await _firestore.paymentReceivedCollection();
    yield* _watch(paymentRef);
  }

  @override
  Stream<Either<PaymentFailure, KtList<Payment>>> watchSent() async* {
    final CollectionReference paymentRef =
        await _firestore.paymentSentCollection();

    yield* paymentRef
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((QuerySnapshot snapshot) => right<PaymentFailure, KtList<Payment>>(
              snapshot.documents
                  .map((doc) => PaymentDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains("PERMISSION_DENIED")) {
        debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
        return left(const PaymentFailure.insufficientPermissions());
      } else {
        debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
        return left(const PaymentFailure.unexpected());
      }
    });
  }

  Future<Either<PaymentFailure, DocumentSnapshot>> _getUserSnapshotById(
      String id) async {
    final DocumentSnapshot userSnap =
        await _firestore.collection(APIPath.users).document(id).get();
    if (!userSnap.exists) {
      return left(const PaymentFailure.userWithIdNotFound());
    }
    return right(userSnap);
  }

  Stream<Either<PaymentFailure, KtList<Payment>>> _watch(
      CollectionReference collectionReference) async* {
    yield* collectionReference
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((QuerySnapshot snapshot) => right<PaymentFailure, KtList<Payment>>(
              snapshot.documents
                  .map((doc) => PaymentDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains("PERMISSION_DENIED")) {
        return left(const PaymentFailure.insufficientPermissions());
      } else {
        debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
        return left(const PaymentFailure.unexpected());
      }
    });
  }

  @override
  Future<void> writeTransactionsLogs(Logs log) async {
    // get day of the week
    final String day = DateFormat('EEEE').format(DateTime.now());

    // logs ref
    final CollectionReference payerLogsRef =
        await _firestore.transactionLogsCollection();

// weekly logs ref
    final DocumentReference payerWeeklyLogsRef =
        await _firestore.transactionsWeeklyLogsDocument(day);

// batch writer
    final WriteBatch batchOp = _firestore.batch();

// today's date
    final String todayDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
    final LogsDto logsDto = LogsDto.fromDomain(log);

// write to general logs first (for payer and receiver)
    batchOp.setData(
        payerLogsRef.document(log.payer.getOrCrash()), logsDto.toJson());

    // write to weekly logs second (for payer and receiver)
    final payerResult = await _firestore.runTransaction((transaction) {
      return transaction.get(payerWeeklyLogsRef).then((doc) {
        if (!doc.exists) {
          transaction.set(
            payerWeeklyLogsRef,
            logsDto.generateDayLog(false).toJson(),
          );
        } else {
          final double newExpenditure =
              (doc.data['expenditure'] as double) + log.amount.getOrCrash();
          final String date = doc.data['todayDate'] as String;
          if (date != todayDate) {
            transaction.set(
                payerWeeklyLogsRef, logsDto.generateDayLog(false).toJson());
          } else {
            transaction.update(
                payerWeeklyLogsRef,
                logsDto
                    .generateDayLog(false)
                    .copyWith(expenditure: newExpenditure)
                    .toJson());
          }
        }
      });
    });

    if (log.receiver.getOrCrash() != "me") {
// weekly logs ref
      final DocumentReference receiverWeeklyLogsRef =
          await _firestore.transactionsWeeklyLogsDocument(day,
              receiverId: log.receiver.getOrCrash());

      // logs ref
      final CollectionReference receiverLogsRef = await _firestore
          .transactionLogsCollection(receiverId: log.receiver.getOrCrash());

// write to general logs first (for payer and receiver)
      batchOp.setData(receiverLogsRef.document(log.receiver.getOrCrash()),
          logsDto.copyWith(operation: '+').toJson());

      final receiverResult = await _firestore.runTransaction((transaction) {
        return transaction.get(receiverWeeklyLogsRef).then((doc) {
          if (!doc.exists) {
            // transaction.setData(payerWeeklyLogsRef, weeklyData);
            transaction.set(
                receiverWeeklyLogsRef, logsDto.generateDayLog(true).toJson());
          } else {
            final double newIncome =
                (doc.data['income'] as double) + log.amount.getOrCrash();
            final String date = doc.data['todayDate'] as String;
            if (date != todayDate) {
              transaction.set(
                  receiverWeeklyLogsRef, logsDto.generateDayLog(true).toJson());
            } else {
              transaction.update(
                  receiverWeeklyLogsRef,
                  logsDto
                      .generateDayLog(false)
                      .copyWith(income: newIncome)
                      .toJson());
            }
          }
        });
      });
    }
    batchOp.commit();
  }

  @override
  Future<void> writeTrustedPayFundsRechargeLogs(String paymentId, Logs log,
      {@required bool cashIn}) async {
    // get day of the week
    final String day = DateFormat('EEEE').format(DateTime.now());

    // logs ref
    final CollectionReference payerLogsRef =
        await _firestore.transactionLogsCollection();

// weekly logs ref
    final DocumentReference payerWeeklyLogsRef =
        await _firestore.transactionsWeeklyLogsDocument(day);

// batch writer
    final WriteBatch batchOp = _firestore.batch();

// today's date
    final String todayDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
    final LogsDto logsDto = LogsDto.fromDomain(log);

// write to general logs first (for payer and receiver)
    batchOp.setData(payerLogsRef.document('momo-$paymentId'),
        logsDto.copyWith(operation: cashIn ? '+' : '-').toJson());

    batchOp.commit();

    final senderResult = await _firestore.runTransaction((transaction) {
      return transaction.get(payerWeeklyLogsRef).then((doc) {
        if (!doc.exists) {
          transaction.set(
              payerWeeklyLogsRef, logsDto.generateDayLog(cashIn).toJson());
        } else {
          double newExpenditure;
          double newIncome;
          if (cashIn) {
            newIncome =
                (doc.data['income'] as double) + log.amount.getOrCrash();
          } else {
            newExpenditure =
                (doc.data['expenditure'] as double) + log.amount.getOrCrash();
          }
          final String date = doc.data['todayDate'] as String;
          if (date != todayDate) {
            transaction.set(
                payerWeeklyLogsRef, logsDto.generateDayLog(cashIn).toJson());
          } else {
            transaction.update(
              payerWeeklyLogsRef,
              cashIn
                  ? logsDto
                      .generateDayLog(cashIn)
                      .copyWith(income: newIncome)
                      .toJson()
                  : logsDto
                      .generateDayLog(cashIn)
                      .copyWith(expenditure: newExpenditure)
                      .toJson(),
            );
          }
        }
      });
    });
  }

  @override
  Future<bool> hasEnoughTrustedFunds(MoneyAmount requiredAmount) async {
    final DocumentReference tpRef =
        await _firestore.trustedPayBalanceDocument();
    final DocumentSnapshot snapshot = await tpRef.get();
    if (!snapshot.exists) {
      return false;
    }
    if (double.parse(snapshot.data["amount"].toString()) >=
        requiredAmount.getOrCrash()) {
      return true;
    }
    return false;
  }

  @override
  Future<bool> deductOrCreditTrustedFunds(MoneyAmount amount,
      {bool deduct}) async {
    if (deduct && await hasEnoughTrustedFunds(amount) == false) {
      return false;
    }

    final DocumentReference tpRef =
        await _firestore.trustedPayBalanceDocument();
    // final DocumentSnapshot snapshot = await tpRef.get();

    final result = await _firestore.runTransaction((transaction) {
      return transaction.get(tpRef).then((value) {
        if (!value.exists) {
          if (deduct) {
            return false;
          } else {
            transaction.set(tpRef, {'amount': amount.getOrCrash()});
          }
        }

        final double newAmount = deduct
            ? double.parse(value.data["amount"].toString()) -
                amount.getOrCrash()
            : double.parse(value.data["amount"].toString()) +
                amount.getOrCrash();
        transaction.update(tpRef, {'amount': newAmount});
      });
    }).catchError((e) {
      debugPrint("Error occured: code: ${e.code} , message: ${e.message}");
      return e;
    });
    return true;
  }

  @override
  Future<Either<PaymentFailure, bool>> unlockSentPayment(
      Payment payment) async {
    final userOption = await _authFacade.getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    if (payment.payerId.getOrCrash() != user.id.getOrCrash()) {
      return left(const PaymentFailure.unableToUnlockSentPayment());
    }
    final Map<String, dynamic> updatePaymentData =
        PaymentDto.fromDomain(payment.copyWith(
      paymentStatus: PaymentStatus(kPaymentStatus.unlocked.val),
      unlockDate: ValidDate(DateTime.now()),
      cashed: true,
    )).toJson();

    return _actionOnPaymentForBothParties(updatePaymentData, payment);
  }

  Future<Either<PaymentFailure, bool>> _actionOnPaymentForBothParties(
      Map<String, dynamic> updatePaymentData, Payment payment) async {
    try {
      final DocumentReference payerPaymentRef = await _firestore
          .paymentDocumentRef(payment.id.getOrCrash(), received: false);
      final DocumentReference receiverPaymentRef =
          await _firestore.paymentDocumentRef(payment.id.getOrCrash(),
              receiverId: payment.receiverId.getOrCrash(), received: true);

      final opBatch = _firestore.batch();

      opBatch.updateData(payerPaymentRef, updatePaymentData);
      opBatch.updateData(receiverPaymentRef, updatePaymentData);

      opBatch.commit();

      return right(true);
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const PaymentFailure.insufficientPermissions());
      }
      debugPrint("Error occured: code: ${e.code} , message: ${e.message}");
      return left(const PaymentFailure.unexpected());
    }
  }

  Future<Either<PaymentFailure, bool>> _actionOnPaymentForPayer(
      Map<String, dynamic> updatePaymentData, Payment payment) async {
    try {
      final DocumentReference payerPaymentRef = await _firestore
          .paymentDocumentRef(payment.id.getOrCrash(), received: false);
      // final DocumentReference receiverPaymentRef =
      //     await _firestore.paymentDocumentRef(payment.id.getOrCrash(),
      //         receiverId: payment.receiverId.getOrCrash(), received: true);

      final opBatch = _firestore.batch();

      opBatch.updateData(payerPaymentRef, updatePaymentData);
      // opBatch.update(receiverPaymentRef, updatePaymentData);

      opBatch.commit();

      return right(true);
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const PaymentFailure.insufficientPermissions());
      }
      debugPrint("Error occured: code: ${e.code} , message: ${e.message}");
      return left(const PaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<PaymentFailure, bool>> freezeSentPayment(
      Payment payment) async {
    final userOption = await _authFacade.getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    if (payment.payerId.getOrCrash() != user.id.getOrCrash()) {
      return left(const PaymentFailure.unableToUnlockSentPayment());
    }
    final Map<String, dynamic> updatePaymentData =
        PaymentDto.fromDomain(payment.copyWith(
      paymentStatus: PaymentStatus(kPaymentStatus.blocked.val),
    )).toJson();

    return _actionOnPaymentForBothParties(updatePaymentData, payment);
  }

  @override
  Future<Either<PaymentFailure, bool>> deleteCashedPayment(
      Payment payment) async {
    final userOption = await _authFacade.getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    try {
      if (!payment.cashed &&
          payment.paymentStatus.getOrCrash() !=
              kPaymentStatus.credit.val) {
        return left(const PaymentFailure.unableToDeleteReceivedPayment());
      }
      final Map<String, dynamic> updatePaymentData =
          PaymentDto.fromDomain(payment.copyWith(
        isDeleted: true,
      )).toJson();
      final bool choice =
          user.id.getOrCrash() == payment.payerId.getOrCrash() ? false : true;
      final DocumentReference paymentDoneRef =
          await _firestore.trustedPayDoneDocument(payment.id.getOrCrash());
      final DocumentReference paymentRef = await _firestore
          .paymentDocumentRef(payment.id.getOrCrash(), received: choice);

      final batch = _firestore.batch();

      batch.setData(paymentDoneRef, updatePaymentData);
      batch.delete(paymentRef);
      batch.commit();
      return right(true);
    } catch (e) {
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");

      return left(const PaymentFailure.unableToDeleteReceivedPayment());
    }

    // return _actionOnPaymentForPayer(updatePaymentData, payment);
  }

  @override
  Future<Either<PaymentFailure, bool>> hidePayment(Payment payment) async {
    // final userOption = await _authFacade.getSignedInUser();
    // final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    // if (payment.payerId.getOrCrash() != user.id.getOrCrash()) {
    //   return left(const PaymentFailure.unableToHidePayment());
    // }
    final Map<String, dynamic> updatePaymentData =
        PaymentDto.fromDomain(payment.copyWith(
      isHidden: true,
    )).toJson();

    return _actionOnPaymentForPayer(updatePaymentData, payment);
  }

  @override
  Future<Either<PaymentFailure, bool>> sendPayment(
      Payment payment, Logs log) async {
    final WriteBatch paymentBatch = _firestore.batch();

    try {
      final DocumentReference payerRef = _firestore.document(
          APIPath.trustedPaymentSent(
              payment.payerId.getOrCrash(), payment.id.getOrCrash()));
      final DocumentReference receiverRef = await _firestore.paymentDocumentRef(
          payment.id.getOrCrash(),
          receiverId: payment.receiverId.getOrCrash(),
          received: true);
      final data = PaymentDto.fromDomain(payment).toJson();
      paymentBatch.setData(payerRef, data);
      paymentBatch.setData(receiverRef, data);

      // Handle trusted payment of mono here before committing
      final availableFunds = await hasEnoughTrustedFunds(payment.amount);
      bool result = false;

      Response response;

      /// Handle trusted payment of momo here before committing

      // smart payment with try to pay with trustedPay if not available then MOMO account

      if (availableFunds && _mySettings.isSmartFundsActive) {
        result = await deductOrCreditTrustedFunds(payment.amount, deduct: true);
        if (!result) {
          response = await _momoApiService.creditTenflrWithMTN(
            amount: payment.amount.getOrCrash().toString(),
            currency: "EUR",
            number: payment.pPhoneNumber.getOrCrash(),
            externalId: payment.id.getOrCrash(),
          );
        }
      }
      // withdrawal.setData to momo account only

      else if (_mySettings.withdrawalWithMomo) {
        response = await _momoApiService.creditTenflrWithMTN(
          amount: payment.amount.getOrCrash().toString(),
          currency: "EUR",
          number: payment.pPhoneNumber.getOrCrash(),
          externalId: payment.id.getOrCrash(),
        );
      }

      // withrawal.setData to trusted funds only
      else if (!_mySettings.withdrawalWithMomo) {
        if (availableFunds) {
          result =
              await deductOrCreditTrustedFunds(payment.amount, deduct: true);
        } else {
          return left(const PaymentFailure.insufficientFundsInTrustedFunds());
        }
      }
      if (!result && response.body == 'Error requesting to pay') {
        return left(const PaymentFailure.creditingWithMomoFailed());
      }

      if (result ||
          response.body['transaction_info']['status'] == "SUCCESSFUL") {
        paymentBatch.commit();
        if (!result) {
          // indicate that money was send from MoMo account
          await writeTrustedPayFundsRechargeLogs(payment.id.getOrCrash(), log,
              cashIn: true);
        }
        await writeTransactionsLogs(log);
        return right(true);
      }
      return left(const PaymentFailure.unableToSendPayment());
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const PaymentFailure.insufficientPermissions());
      }
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
      return left(const PaymentFailure.unexpected());
    }
  }

  @override
  Stream<Either<PaymentFailure, MoneyAmount>> watchTrustedPay() async* {
    final DocumentReference trustedPayFundsRef =
        await _firestore.trustedPayBalanceDocument();
    yield* trustedPayFundsRef
        .snapshots()
        .map((DocumentSnapshot snapshot) => right<PaymentFailure, MoneyAmount>(
            MoneyAmount(snapshot.data['amount'] as double)))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains("PERMISSION_DENIED")) {
        debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
        return left(const PaymentFailure.insufficientPermissions());
      } else {
        debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
        return left(const PaymentFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<PaymentFailure, bool>> creditTenflrWithMTN(
      Payment payment, Logs log) async {
    Response response;
    try {
      response = await _momoApiService.creditTenflrWithMTN(
        amount: payment.amount.getOrCrash().toString(),
        currency: "EUR",
        number: payment.pPhoneNumber.getOrCrash(),
        externalId: payment.id.getOrCrash(),
      );
      if (response.body == 'Error requesting to pay') {
        return left(const PaymentFailure.creditingWithMomoFailed());
      }

      if (response.body['transaction_info']['status'] == "SUCCESSFUL") {
        final DocumentReference trustedPayRef =
            await _firestore.trustedPayBalanceDocument();

        final creditResult = _firestore.runTransaction((transaction) {
          return transaction.get(trustedPayRef).then((doc) {
            if (!doc.exists) {
              transaction
                  .set(trustedPayRef, {'amount': payment.amount.getOrCrash()});
            } else {
              final double newAmount =
                  (doc.data['amount'] as double) + payment.amount.getOrCrash();
              transaction.update(trustedPayRef, {'amount': newAmount});
            }
          });
        });

        await writeTrustedPayFundsRechargeLogs(payment.id.getOrCrash(), log,
            cashIn: true);
        return right(true);
      }
      return left(const PaymentFailure.creditingWithMomoFailed());
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const PaymentFailure.insufficientPermissions());
      }
      debugPrint("Error occured: code: ${e.code} , message: ${e.message}");
      return left(const PaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<PaymentFailure, bool>> autoCashPayment(Payment payment) async {
    // check if app time is in sync
    final Either<PaymentFailure, bool> timeIs = await _isTimeSync();
    if (timeIs.isLeft()) return left(const PaymentFailure.timeOutOfSync());

    final DocumentReference payerPaymentRef = await _firestore
        .paymentDocumentRef(payment.id.getOrCrash(), received: false);

    final DocumentReference receiverPaymentRef = await _firestore
        .paymentDocumentRef(payment.id.getOrCrash(), received: true);

    final DocumentSnapshot payerDoc = await payerPaymentRef.get();
    final DocumentSnapshot receiverDoc = await receiverPaymentRef.get();

    final DateTime pUnlockDate =
        DateTime.parse(payerDoc.data['unlockDate'].toString());
    final DateTime rUnlockDate =
        DateTime.parse(receiverDoc.data['unlockDate'].toString());

    final String pPaymentS = payerDoc.data['paymentStatus'] as String;
    final String rPaymentS = receiverDoc.data['paymentStatus'] as String;

    final int offset = rUnlockDate.difference(DateTime.now()).inSeconds;
    final WriteBatch writeBatch = _firestore.batch();
    final updatedPayment = PaymentDto.fromDomain(payment.copyWith(
      paymentStatus: PaymentStatus(kPaymentStatus.cashed.val),
      cashed: true,
    )).toJson();
    if (!(receiverDoc.data['cashed'] as bool) &&
        (pUnlockDate == rUnlockDate && offset <= 0 ||
            pPaymentS == rPaymentS &&
                rPaymentS == kPaymentStatus.unlocked.val)) {
      writeBatch.setData(payerPaymentRef, updatedPayment);
      writeBatch.setData(receiverPaymentRef, updatedPayment);
      final isCredited =
          await deductOrCreditTrustedFunds(payment.amount, deduct: false);

      if (isCredited) {
        writeBatch.commit();
        return right(true);
      }
    }
    return left(const PaymentFailure.unableToCashPayment());
  }

  @override
  Future<Either<PaymentFailure, bool>> rateUser(
      Payment payment, bool isUp) async {
    // Todo: implement Code
    return left(const PaymentFailure.unableToRateUser());
  }

  @override
  Future<Either<PaymentFailure, bool>> requestUnlockOfReceivedPayment(
      Payment payment) async {
    // Todo: implement Code
    return left(const PaymentFailure.requestUnlockFailed());
  }

  @override
  Future<Either<PaymentFailure, bool>> returnPayment(Payment payment) async {
    // Todo: implement Code
    return left(const PaymentFailure.unableToReturnPayment());
  }

  @override
  Future<bool> deductBusinessGain(MoneyAmount amount,
      {@required String sourceId, @required String type}) async {
    final DocumentReference businessGainRef =
        await _firestore.businessGainDoc();

    // final DocumentSnapshot snapshot = await tpRef.get();

    final result = await _firestore.runTransaction(
      (transaction) async {
        final DocumentSnapshot value = await transaction.get(businessGainRef);

        if (!value.exists) {
          transaction.set(
            businessGainRef,
            {'amount': amount.getOrCrash()},
          );
        } else {
          final double newAmount =
              double.parse(value.data["amount"].toString()) +
                  amount.getOrCrash();
          transaction.update(
            businessGainRef,
            {'amount': newAmount},
          );
        }
        // return true;
      },
    )
        // .whenComplete(() {})
        .catchError((e) {
      debugPrint("Error occured: code: ${e.code} , message: ${e.message}");
      // return false;
    });
    // if (result == false) {
    //   return false;
    // }

    await writeBusinessGainLogs(amount, sourceId: sourceId, type: type);
    return true;
  }

  @override
  Future<void> writeBusinessGainLogs(MoneyAmount amount,
      {String sourceId, String type}) async {
    final DocumentReference businessGainLog =
        await _firestore.businessGainLog(sourceId);

    businessGainLog.setData({
      "amount": amount.getOrCrash(),
      'type': type,
      "serverTime": FieldValue.serverTimestamp()
    });
  }

  @override
  Future<Either<PaymentFailure, User>> searchUser(String userQuery) async {
    User user;

    // usercol.
    final bool isEmailPk = userQuery.contains("@");

    QuerySnapshot snapshot;

    if (user == null ||
        (user.email.getOrCrash() != userQuery && isEmailPk) &&
            (user.phoneNumber.getOrCrash() != userQuery && !isEmailPk)) {
      try {
        // we are search for an email
        if (isEmailPk) {
          snapshot = await _firestore
              .collection('users')
              .where("email", isEqualTo: userQuery)
              .getDocuments();
        } else {
          snapshot = await _firestore
              .collection(APIPath.users)
              .where("phoneNumber", isEqualTo: userQuery)
              .getDocuments();
        }
        for (int i = 0; i < snapshot.documents.length; i++) {
          final User _tempUser =
              UserDto.fromJson(snapshot.documents[i].data).toDomain();
          if (isEmailPk && _tempUser.providerId == "google" ||
              !isEmailPk && _tempUser.providerId == "phone") {
            user = _tempUser;
            return right(_tempUser);
          }
        }
        return left(const PaymentFailure.userNotFound());
      } catch (e) {
        return left(const PaymentFailure.unexpected());
      }
    } else if ((user.email.getOrCrash() == userQuery && isEmailPk) ||
        (user.phoneNumber.getOrCrash() == userQuery && !isEmailPk)) {
      return right(user);
    }
    return left(const PaymentFailure.unexpected());
  }

  @override
  Future<Either<PaymentFailure, bool>> creditTenflrWithOrange(
      Payment payment, Logs log) async {
    // Todo: Replace with orange money functions.
    Response response;
    try {
      response = await _momoApiService.creditTenflrWithMTN(
        amount: payment.amount.getOrCrash().toString(),
        currency: "EUR",
        number: payment.pPhoneNumber.getOrCrash(),
        externalId: payment.id.getOrCrash(),
      );
      if (response.body == 'Error requesting to pay') {
        return left(const PaymentFailure.creditingWithMomoFailed());
      }

      if (response.body['transaction_info']['status'] == "SUCCESSFUL") {
        final DocumentReference trustedPayRef =
            await _firestore.trustedPayBalanceDocument();

        final creditResult = _firestore.runTransaction((transaction) {
          return transaction.get(trustedPayRef).then((doc) {
            if (!doc.exists) {
              transaction
                  .set(trustedPayRef, {'amount': payment.amount.getOrCrash()});
            } else {
              final double newAmount =
                  (doc.data['amount'] as double) + payment.amount.getOrCrash();
              transaction.update(trustedPayRef, {'amount': newAmount});
            }
          });
        });

        await writeTrustedPayFundsRechargeLogs(payment.id.getOrCrash(), log,
            cashIn: true);
        return right(true);
      }
      return left(const PaymentFailure.creditingWithMomoFailed());
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const PaymentFailure.insufficientPermissions());
      }
      debugPrint("Error occured: code: ${e.code} , message: ${e.message}");
      return left(const PaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<PaymentFailure, bool>> withdrawTenflrToMTN(
      Payment payment, Logs log,
      {bool transfer = false}) async {
    final hasEnoughFunds = await hasEnoughTrustedFunds(payment.amount);
    if (hasEnoughFunds) {
      final hasDeducted =
          await deductOrCreditTrustedFunds(payment.amount, deduct: true);

      if (hasDeducted) {
        Response response;
        try {
          response = await _momoApiService.withdrawToMTN(
            amount: payment.amount.getOrCrash().toString(),
            currency: "EUR",
            number: transfer
                ? payment.rPhoneNumber.getOrCrash()
                : payment.pPhoneNumber.getOrCrash(),
            externalId: payment.id.getOrCrash(),
          );

          if (response.body['transaction_info']['status'] == "SUCCESSFUL") {
            await writeTrustedPayFundsRechargeLogs(payment.id.getOrCrash(), log,
                cashIn: false);
            return right(true);
          } else {
            await deductOrCreditTrustedFunds(payment.amount, deduct: false);
            return left(const PaymentFailure.withdrawalIntoMOMOFailed());
          }
        } on PlatformException catch (e) {
          if (e.code == PERMISSION_DENIED) {
            return left(const PaymentFailure.insufficientPermissions());
          }
          debugPrint("Error occured: code: ${e.code} , message: ${e.message}");
          return left(const PaymentFailure.unexpected());
        }
      }
      return left(const PaymentFailure.withdrawalIntoMOMOFailed());
    } else {
      return left(const PaymentFailure.insufficientFundsInTrustedFunds());
    }
  }

  @override
  Future<Either<PaymentFailure, bool>> withdrawTenflrToOrange(
      Payment payment, Logs log) {
    // TODO: implement withdrawTenflrToOrange
    throw UnimplementedError();
  }
}
