import 'package:chopper/chopper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
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
import '../../domain/saving/i_saving_repository.dart';
import '../../domain/saving/savings.dart';
import '../../domain/saving/savings_failure.dart';
import '../core/error_code_message.dart';
import '../core/firestore_helpers.dart';
import '../repositories/momo_api_service.dart';
import 'savings_dtos.dart';

@LazySingleton(as: ISavingsRepository)
class SavingsRepository implements ISavingsRepository {
  final Firestore _firestore;
  final MySettings _mySettings;
  final MomoApiService _momoClient;
  final IAuthFacade _authFacade;
  final IPaymentRepository _paymentRepo;

  SavingsRepository(this._firestore, this._mySettings, this._momoClient,
      this._paymentRepo, this._authFacade);

  Future<Either<SavingsFailure, Unit>> _isTimeSync() async {
    final int timeOfSet =
        await NTP.getNtpOffset(lookUpAddress: primaryLockupAddress);
    if (timeOfSet > maxTimeOffset) {
      return left(const SavingsFailure.timeOutOfSync());
    }
    return right(unit);
  }

  @override
  Stream<Either<SavingsFailure, KtList<Savings>>> watchAll() async* {
    final CollectionReference savingsDocRef = await _firestore.savingsCollection();
    yield* savingsDocRef
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (QuerySnapshot snapshot) => right<SavingsFailure, KtList<Savings>>(
            snapshot.documents
                .map((doc) => SavingsDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains("PERMISSION_DENIED")) {
        return left(const SavingsFailure.insufficientPermissions());
      } else {
        debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
        return left(const SavingsFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<SavingsFailure, Unit>> createSavings(
      Savings savings, Logs log) async {
    // check if app time is in sync
    final Either<SavingsFailure, Unit> timeIs = await _isTimeSync();
    if (timeIs.isLeft()) return left(const SavingsFailure.timeOutOfSync());

    //function start

    final WriteBatch savingsBatch = await _firestore.collectionBatch;
    final DocumentReference savingsDocumentRef =
        await _firestore.savingsDocument(savings.id.getOrCrash());
    // payment response holders
    Response response;
    bool result = false;
    try {
      final userOption = await _authFacade.getSignedInUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());

      savingsBatch.setData(
          savingsDocumentRef, SavingsDto.fromDomain(savings).toJson());

      // handle Momo payment before commiting the batch to firestore.
      final bool availableFunds =
          await _paymentRepo.hasEnoughTrustedFunds(savings.amount);

      /// Handle trusted payment of momo here before committing

      // smart payment with try to pay with trustedPay if not available then MOMO account
      if (availableFunds && _mySettings.isSmartFundsActive) {
        result = await _paymentRepo.deductOrCreditTrustedFunds(savings.amount,
            deduct: true);
        if (!result) {
          response = await _momoClient.creditTenflrWithMTN(
              amount: savings.amount.getOrCrash().toString(),
              number: user.phoneNumber.getOrCrash(),
              externalId: savings.id.getOrCrash(),
              currency: 'EUR');
        }
      }

      // withdrawal setData to momo account only
      else if (_mySettings.withdrawalWithMomo) {
        response = await _momoClient.creditTenflrWithMTN(
            amount: savings.amount.getOrCrash().toString(),
            number: user.phoneNumber.getOrCrash(),
            externalId: savings.id.getOrCrash(),
            currency: 'EUR');
      }

      // withrawal setData to trusted funds only
      else if (!_mySettings.withdrawalWithMomo) {
        if (availableFunds) {
          result = await _paymentRepo.deductOrCreditTrustedFunds(savings.amount,
              deduct: true);
        } else {
          return left(const SavingsFailure.insufficientFundsInTrustedFunds());
        }
      }
      if (!result && response.body == 'Error requesting to pay') {
        return left(const SavingsFailure.paymentWithMomoFailed());
      }

      if (result ||
          response.body['transaction_info']['status'] == "SUCCESSFUL") {
        savingsBatch.commit();
        // write logs
        if (!result) {
          await _paymentRepo.writeTrustedPayFundsRechargeLogs(
              savings.id.getOrCrash(), log,
              cashIn: true);
        }
        await _paymentRepo.writeTransactionsLogs(log);
        return right(unit);
      }
      return left(const SavingsFailure.unableToCreate());
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const SavingsFailure.insufficientPermissions());
      }
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
      return left(const SavingsFailure.unexpected());
    }
  }

  @override
  Future<Either<SavingsFailure, Unit>> updateSavings(
      Savings savings, MoneyAmount addAmount, Logs log) async {
    // check if app time is in sync
    final Either<SavingsFailure, Unit> timeIs = await _isTimeSync();
    if (timeIs.isLeft()) return left(const SavingsFailure.timeOutOfSync());

    // payment response holders
    Response response;
    bool result = false;

    //function start

    final userOption = await _authFacade.getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    // handle Momo payment before commiting the batch to firestore.
    final bool availableFunds =
        await _paymentRepo.hasEnoughTrustedFunds(savings.amount);

    final WriteBatch savingsBatch = await _firestore.collectionBatch;
    final double newAmount =
        savings.amount.getOrCrash() + addAmount.getOrCrash();
    final Map<String, dynamic> newSavingMap =
        SavingsDto.fromDomain(savings.copyWith(amount: MoneyAmount(newAmount)))
            .toJson();
    final DocumentReference savingsDocRef =
        await _firestore.savingsDocument(savings.id.getOrCrash());
    savingsBatch.updateData(
      savingsDocRef,
      newSavingMap,
    );

    /// Handle trusted payment of momo here before committing

    // smart payment with try to pay with trustedPay if not available then MOMO account
    if (availableFunds && _mySettings.isSmartFundsActive) {
      result = await _paymentRepo.deductOrCreditTrustedFunds(savings.amount,
          deduct: true);
      if (!result) {
        response = await _momoClient.creditTenflrWithMTN(
            amount: savings.amount.getOrCrash().toString(),
            number: user.phoneNumber.getOrCrash(),
            externalId: savings.id.getOrCrash(),
            currency: 'EUR');
      }
    }

    // withdrawal setData to momo account only
    else if (_mySettings.withdrawalWithMomo) {
      response = await _momoClient.creditTenflrWithMTN(
          amount: savings.amount.getOrCrash().toString(),
          number: user.phoneNumber.getOrCrash(),
          externalId: savings.id.getOrCrash(),
          currency: 'EUR');
    }

    // withrawal setData to trusted funds only
    else if (!_mySettings.withdrawalWithMomo) {
      if (availableFunds) {
        result = await _paymentRepo.deductOrCreditTrustedFunds(savings.amount,
            deduct: true);
      } else {
        return left(const SavingsFailure.insufficientFundsInTrustedFunds());
      }
    }
    if (!result && response.body == 'Error requesting to pay') {
      return left(const SavingsFailure.paymentWithMomoFailed());
    }

    if (result || response.body['transaction_info']['status'] == "SUCCESSFUL") {
      savingsBatch.commit();
      // return right(unit);
      // write logs
      if (!result) {
        await _paymentRepo.writeTrustedPayFundsRechargeLogs(
            savings.id.getOrCrash(), log,
            cashIn: true);
      }
      await _paymentRepo.writeTransactionsLogs(log);
      return right(unit);
    }
    return left(const SavingsFailure.unableToCreate());

    // handle Momo payment before commiting the batch to firestore.

    // final jsonResponse = await _momoClient.requestToPay(
    //     amount: addAmount.getOrCrash().toString(),
    //     number: user.phoneNumber.getOrCrash(),
    //     externalId: savings.id.getOrCrash(),
    //     currency: 'EUR');
    // if (jsonResponse.body == 'Error requesting to pay') {
    //   return left(const SavingsFailure.paymentWithMomoFailed());
    // }
    // if (jsonResponse.body['transaction_info']['status'] == "SUCCESSFUL") {
    //   savingsBatch.commit();
    //   return right(unit);
    // }
    // return left(const SavingsFailure.unableToCreate());
  }

  @override
  Future<Either<SavingsFailure, Unit>> forceUnlockSavings(
      Savings savings, Logs log) async {
    // check if app time is in sync
    final Either<SavingsFailure, Unit> timeIs = await _isTimeSync();
    if (timeIs.isLeft()) return left(const SavingsFailure.timeOutOfSync());

    final DocumentReference savingRef =
        await _firestore.savingsDocument(savings.id.getOrCrash());

    final DocumentReference savingDoneRef =
        await _firestore.savingsDoneDocument(savings.id.getOrCrash());

    final DocumentSnapshot savingDoc = await savingRef.get();
    final WriteBatch batchOpt = _firestore.batch();

    if (!(savingDoc.data['isDeleted'] as bool)) {
      batchOpt.setData(
          savingDoneRef,
          SavingsDto.fromDomain(savings.copyWith(
                  isDeleted: true,
                  savingStatus: SavingStatus(kSavingStatus.cashed.val)))
              .toJson());
      final MoneyAmount gainAmount = MoneyAmount(
          savings.amount.getOrCrash() * FORCE_UNLOCK_LOST_PERCENTAGE);

      final collegePlanGain = await _paymentRepo.deductBusinessGain(gainAmount,
          sourceId: savings.id.getOrCrash(), type: 'savings');

      final MoneyAmount retainedAmount = MoneyAmount(
          savings.amount.getOrCrash() * FORCE_UNLOCK_RETAINED_PERCENTAGE);

      final isCredited = await _paymentRepo
          .deductOrCreditTrustedFunds(retainedAmount, deduct: false);
      if (isCredited) {
        batchOpt.delete(savingRef);
        batchOpt.commit();
        await _paymentRepo.writeBusinessGainLogs(gainAmount,
            sourceId: savings.id.getOrCrash(), type: 'saving');
        await _paymentRepo
            .writeTransactionsLogs(log.copyWith(amount: retainedAmount));

        return right(unit);
      }
      return left(const SavingsFailure.unableToUnlockSaving());
    } else {
      return left(const SavingsFailure.unableToUnlockSaving());
    }
  }

  @override
  Future<Either<SavingsFailure, Unit>> freezeSavings(Savings savings) async {
    // check if app time is in sync
    final Either<SavingsFailure, Unit> timeIs = await _isTimeSync();
    if (timeIs.isLeft()) return left(const SavingsFailure.timeOutOfSync());

    //function start
    final DocumentReference savingRef =
        await _firestore.savingsDocument(savings.id.getOrCrash());
    final DocumentSnapshot savingDoc = await savingRef.get();
    if (!savingDoc.exists) {
      return left(const SavingsFailure.unableToHideSaving());
    }

    savingRef.updateData({'isFrozen': true});
    return right(unit);
  }

  @override
  Future<Either<SavingsFailure, Unit>> hideSavings(Savings savings) async {
    // check if app time is in sync
    final Either<SavingsFailure, Unit> timeIs = await _isTimeSync();
    if (timeIs.isLeft()) return left(const SavingsFailure.timeOutOfSync());

    //function start

    final DocumentReference savingRef =
        await _firestore.savingsDocument(savings.id.getOrCrash());
    final DocumentSnapshot savingDoc = await savingRef.get();
    if (!savingDoc.exists) {
      return left(const SavingsFailure.unableToHideSaving());
    }

    savingRef.updateData({'isHidden': true});
    return right(unit);
  }


  @override
  Future<Either<SavingsFailure, Unit>> deleteUnlockedSaving(
      Savings savings) async {
    // check if app time is in sync
    final Either<SavingsFailure, Unit> timeIs = await _isTimeSync();
    if (timeIs.isLeft()) return left(const SavingsFailure.timeOutOfSync());

    //function start

    final DocumentReference savingRef =
        await _firestore.savingsDocument(savings.id.getOrCrash());

    final DocumentReference savingDoneRef =
        await _firestore.savingsDoneDocument(savings.id.getOrCrash());

    final DocumentSnapshot savingDoc = await savingRef.get();
    final WriteBatch batchOpt = _firestore.batch();

    final DateTime savingUnlockDate =
        DateTime.parse(savingDoc.data['withdrawalDate'].toString());

    // final String savingStatus = savingDoc.data()['savingStatus'].toString();
    final int offset = savingUnlockDate.difference(DateTime.now()).inSeconds;
    if (offset <= 0 &&
        !(savingDoc.data['isDeleted'] as bool) &&
        !(savingDoc.data['isFrozen'] as bool)) {
      batchOpt.setData(
          savingDoneRef,
          SavingsDto.fromDomain(savings.copyWith(
                  isDeleted: true,
                  savingStatus: SavingStatus(kSavingStatus.cashed.val)))
              .toJson());
      batchOpt.delete(savingRef);
      final isCredited = await _paymentRepo
          .deductOrCreditTrustedFunds(savings.amount, deduct: false);
      if (isCredited) {
        batchOpt.commit();
        return right(unit);
      }
      return left(const SavingsFailure.unableToUnlockSaving());
    } else {
      return left(const SavingsFailure.unableToUnlockSaving());
    }
  }

  @override
  Future<Either<SavingsFailure, Unit>> unlockSavings(
      Savings savings, Logs log) async {
    // check if app time is in sync
    final Either<SavingsFailure, Unit> timeIs = await _isTimeSync();
    if (timeIs.isLeft()) return left(const SavingsFailure.timeOutOfSync());

    //function start

    final DocumentReference savingRef =
        await _firestore.savingsDocument(savings.id.getOrCrash());

    final DocumentReference savingDoneRef =
        await _firestore.savingsDoneDocument(savings.id.getOrCrash());

    final DocumentSnapshot savingDoc = await savingRef.get();
    final WriteBatch batchOpt = _firestore.batch();

    final DateTime savingUnlockDate =
        DateTime.parse(savingDoc.data['withdrawalDate'].toString());

    // final String savingStatus = savingDoc.data()['savingStatus'].toString();
    final int offset = savingUnlockDate.difference(DateTime.now()).inSeconds;
    if (offset <= 0 &&
        !(savingDoc.data['isDeleted'] as bool) &&
        !(savingDoc.data['isFrozen'] as bool)) {
      batchOpt.setData(
          savingDoneRef,
          SavingsDto.fromDomain(savings.copyWith(
                  isDeleted: true,
                  savingStatus: SavingStatus(kSavingStatus.cashed.val)))
              .toJson());
      batchOpt.delete(savingRef);
      final isCredited = await _paymentRepo
          .deductOrCreditTrustedFunds(savings.amount, deduct: false);
      if (isCredited) {
        batchOpt.commit();
        await _paymentRepo.writeTransactionsLogs(log);

        return right(unit);
      }
      return left(const SavingsFailure.unableToUnlockSaving());
    } else {
      return left(const SavingsFailure.unableToUnlockSaving());
    }
  }
}
