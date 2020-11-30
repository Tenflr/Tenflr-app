import 'package:chopper/chopper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/constant_list.dart';
import '../../domain/core/errors.dart';
import '../../domain/core/settings.dart';
import '../../domain/logs/logs.dart';
import '../../domain/payment/i_payment_repository.dart';
import '../../domain/quick_payment/i_quick_payment.dart';
import '../core/error_code_message.dart';
import 'quick_payment_dtos.dart';
import '../repositories/momo_api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import '../../domain/quick_payment/quick_payment_failure.dart';
import '../../domain/quick_payment/quick_payment.dart';
import 'package:injectable/injectable.dart';
import 'package:ntp/ntp.dart';
import 'package:rxdart/rxdart.dart';
import '../core/firestore_helpers.dart';

@LazySingleton(as: IQuickPaymentRepository)
class QuickPaymentRepository implements IQuickPaymentRepository {
  final Firestore _firestore;
  final MySettings _mySettings;
  final MomoApiService _momoApiService;
  final IPaymentRepository _paymentRepo;
  final IAuthFacade _authFacade;

  QuickPaymentRepository(this._firestore, this._paymentRepo, this._mySettings,
      this._momoApiService, this._authFacade);

  Future<Either<QuickPaymentFailure, Unit>> _isTimeSync() async {
    final int timeOfSet =
        await NTP.getNtpOffset(lookUpAddress: primaryLockupAddress);
    if (timeOfSet > maxTimeOffset) {
      return left(const QuickPaymentFailure.timeOutOfSync());
    }
    return right(unit);
  }

  @override
  Future<Either<QuickPaymentFailure, Unit>> quickPayment(
      QuickPayment payment, Logs log) async {
    final DocumentReference payerRefDoc =
        await _firestore.quickPaymentRefDoc(payment.id.getOrCrash());
    final DocumentReference requesterRefDoc =
        await _firestore.quickPaymentRefDoc(payment.id.getOrCrash(),
            requesterId: payment.requesterId.getOrCrash(), forRequester: true);

    final WriteBatch writeBatch = _firestore.batch();
    final bool availableFunds =
        await _paymentRepo.hasEnoughTrustedFunds(payment.amount);

    try {
      final Map<String, dynamic> quickPaymentMap =
          QuickPaymentDto.fromDomain(payment).toJson();
      writeBatch.setData(payerRefDoc, quickPaymentMap);
      writeBatch.setData(requesterRefDoc, quickPaymentMap);

      // Handle trusted payment of mono here before committing
      // final availableFunds = await hasEnoughTrustedFunds(payment.amount);
      bool withdrawn = false;

      Response response;
      final userOption = await _authFacade.getSignedInUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());

      /// Handle trusted payment of momo here before committing

      // smart payment with try to pay with trustedPay if not available then MOMO account

      if (availableFunds && _mySettings.isSmartFundsActive) {
        withdrawn = await _paymentRepo
            .deductOrCreditTrustedFunds(payment.amount, deduct: true);

        if (!withdrawn) {
          response = await _momoApiService.creditTenflrWithMTN(
            amount: payment.amount.getOrCrash().toString(),
            currency: "EUR",
            number: user.phoneNumber.getOrCrash(),
            externalId: payment.id.getOrCrash(),
          );
        }
      }
      // withdrawal.setData to momo account only

      else if (_mySettings.withdrawalWithMomo) {
        response = await _momoApiService.creditTenflrWithMTN(
          amount: payment.amount.getOrCrash().toString(),
          currency: "EUR",
          number: user.phoneNumber.getOrCrash(),
          externalId: payment.id.getOrCrash(),
        );
      }

      // withrawal.setData to trusted funds only
      else if (!_mySettings.withdrawalWithMomo) {
        if (availableFunds) {
          withdrawn = await _paymentRepo
              .deductOrCreditTrustedFunds(payment.amount, deduct: true);
        } else {
          return left(const QuickPaymentFailure.insufficientFunds());
        }
      }
      if (!withdrawn && response.body == 'Error requesting to pay') {
        return left(const QuickPaymentFailure.paymentWithMomoFailed());
      }

      if (withdrawn ||
          response.body['transaction_info']['status'] == "SUCCESSFUL") {
        writeBatch.commit();
        if (!withdrawn) {
          // indicate that money was send from MoMo account
          await _paymentRepo.writeTrustedPayFundsRechargeLogs(
              payment.id.getOrCrash(), log,
              cashIn: true);
        }
        await _paymentRepo.writeTransactionsLogs(log);
        return right(unit);
      }
      return left(const QuickPaymentFailure.quickPaymentFailed());
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const QuickPaymentFailure.insufficientPermissions());
      }
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
      return left(const QuickPaymentFailure.unexpected());
    }
  }

  Stream<Either<QuickPaymentFailure, KtList<QuickPayment>>>
      _watchSent() async* {
    final CollectionReference quickPaymentSentCollection =
        await _firestore.quickPaymentsSentCollection();

    yield* _watch(quickPaymentSentCollection);
  }

  Stream<Either<QuickPaymentFailure, KtList<QuickPayment>>>
      _watchReceived() async* {
    final CollectionReference quickPaymentReceivedCollection =
        await _firestore.quickPaymentsReceivedCollection();

    yield* _watch(quickPaymentReceivedCollection);
  }

  Stream<Either<QuickPaymentFailure, KtList<QuickPayment>>> _watch(
      CollectionReference collectionReference) async* {
    yield* collectionReference
        .orderBy('serverTimeStamp', descending: true)
        // .limit(30)
        .snapshots()
        .map((QuerySnapshot snapshot) =>
            right<QuickPaymentFailure, KtList<QuickPayment>>(
              snapshot.documents
                  .map((doc) => QuickPaymentDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains("PERMISSION_DENIED")) {
        debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
        return left(const QuickPaymentFailure.insufficientPermissions());
      } else {
        debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
        return left(const QuickPaymentFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<QuickPaymentFailure, KtList<QuickPayment>>> watchAll() async* {
    yield* Rx.combineLatest2(
      _watchSent(),
      _watchReceived(),
      (Either<QuickPaymentFailure, KtList<QuickPayment>> sent,
              Either<QuickPaymentFailure, KtList<QuickPayment>> received) =>
          sent.fold(
        (failure) => left(failure),
        (sentSuccess) => received.fold(
          (failure) => left(failure),
          (receivedSuccess) => right(sentSuccess + receivedSuccess),
        ),
      ),
    );
  }

  @override
  Future<Either<QuickPaymentFailure, Unit>> autoCashPayment(
      QuickPayment payment) async {
    final userOption = await _authFacade.getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    final DocumentReference quickPayRef = await _firestore.quickPaymentRefDoc(
        payment.id.getOrCrash(),
        forRequester: true,
        requesterId: user.id.getOrCrash());

    final WriteBatch batch = _firestore.batch();
    bool cashed = false;

    if (payment.requesterId.getOrCrash() == user.id.getOrCrash() && !payment.cashed) {
      final DocumentSnapshot remotePaymentSnap = await quickPayRef.get();
      QuickPaymentDto remotePaymentDto;
      if (!remotePaymentSnap.exists) {
        return left(const QuickPaymentFailure.failedToCashQuickPayment());
      }
        remotePaymentDto = QuickPaymentDto.fromFirestore(remotePaymentSnap);
      if (!remotePaymentDto.cashed) {
        batch.updateData(
            quickPayRef, remotePaymentDto.copyWith(cashed: true).toJson());

        cashed = await _paymentRepo.deductOrCreditTrustedFunds(payment.amount,
            deduct: false);
      }
    }

    if (cashed) {
      batch.commit();
      return right(unit);
    }
    return left(const QuickPaymentFailure.failedToCashQuickPayment());
  }
}
