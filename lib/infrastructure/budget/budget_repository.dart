import 'package:chopper/chopper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tenflrpay/domain/auth/i_auth_facade.dart';
import 'package:tenflrpay/domain/budget/budgets.dart';
import 'package:tenflrpay/domain/budget/budget_failure.dart';
import 'package:tenflrpay/domain/budget/i_budget_repository.dart';
import 'package:tenflrpay/domain/core/constant_list.dart';
import 'package:tenflrpay/domain/core/errors.dart';
import 'package:tenflrpay/domain/core/settings.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/budget/i_budget_repository.dart';
import 'package:tenflrpay/domain/logs/logs.dart';
import 'package:tenflrpay/domain/payment/i_payment_repository.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/infrastructure/budget/budget_dtos.dart';
import 'package:tenflrpay/infrastructure/core/error_code_message.dart';
import 'package:tenflrpay/infrastructure/repositories/api_path.dart';
import 'package:tenflrpay/infrastructure/repositories/momo_api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:tenflrpay/infrastructure/core/firestore_helpers.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/kt.dart';
import 'package:ntp/ntp.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tenflrpay/infrastructure/user/user_dtos.dart';

@LazySingleton(as: IBudgetRepository)
class BudgetRepository implements IBudgetRepository {
  final Firestore _firestore;
  final MySettings _mySettings;
  final MomoApiService _momoApiService;
  final IPaymentRepository _paymentRepo;
  final IAuthFacade _authFacade;

  BudgetRepository(this._firestore, this._mySettings, this._momoApiService,
      this._paymentRepo, this._authFacade);

  Future<Either<BudgetFailure, Unit>> _isTimeSync() async {
    final int timeOfSet =
        await NTP.getNtpOffset(lookUpAddress: primaryLockupAddress);
    if (timeOfSet > maxTimeOffset) {
      return left(const BudgetFailure.timeOutOfSync());
    }
    return right(unit);
  }

  Stream<Either<BudgetFailure, KtList<Budget>>> _watch(
      CollectionReference collectionToWatch) async* {
    yield* collectionToWatch
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (QuerySnapshot snapshot) => right<BudgetFailure, KtList<Budget>>(
            snapshot.documents
                .map((doc) => BudgetDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains("PERMISSION_DENIED")) {
        return left(const BudgetFailure.insufficientPermissions());
      } else {
        return left(const BudgetFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<BudgetFailure, KtList<Budget>>> watchGitfSent() async* {
    final CollectionReference giftSentCollection =
        await _firestore.budgetSentCollection();
    yield* _watch(giftSentCollection);
  }

  @override
  Stream<Either<BudgetFailure, KtList<Budget>>> watchPersonal() async* {
    final CollectionReference personalBudgetCollection =
        await _firestore.budgetPersonalCollection();
    yield* _watch(personalBudgetCollection);
  }

  @override
  Stream<Either<BudgetFailure, KtList<Budget>>> watchGitfReceived() async* {
    final CollectionReference giftReceivedCollection =
        await _firestore.budgetReceivedCollection();
    yield* _watch(giftReceivedCollection);
  }

  @override
  Stream<Either<BudgetFailure, KtList<Budget>>> watchAll() async* {
    yield* Rx.combineLatest3(
      watchPersonal(),
      watchGitfReceived(),
      watchGitfSent(),
      (Either<BudgetFailure, KtList<Budget>> personal,
              Either<BudgetFailure, KtList<Budget>> received,
              Either<BudgetFailure, KtList<Budget>> sent) =>
          personal.fold(
        (failure) => left(failure),
        (personalSuccess) => received.fold(
          (l) => left(l),
          (receivedSuccess) => sent.fold(
            (l) => left(l),
            (sentSuccess) =>
                right(sentSuccess + receivedSuccess + personalSuccess),
          ),
        ),
      ),
    );
  }

  int _getNumberDaysBeforeNextUnlockFromPayoutMode(
      PayoutModeObject payoutModeObject) {
    switch (payoutModeObject.getOrCrash()) {
      case 'day':
        return 1;
        break;
      case 'week':
        return 7;
        break;
      case 'month':
        return 30;
        break;
      case 'year':
        return 365;
        break;
      default:
        return null;
    }
  }

  @override
  Future<Either<BudgetFailure, Unit>> autoUnlockBudgetPeriodically(
      Budget budget, String type) async {
    // check if app time is in sync
    final Either<BudgetFailure, Unit> timeIs = await _isTimeSync();
    if (timeIs.isLeft()) return left(const BudgetFailure.timeOutOfSync());
    final batch = _firestore.batch();
    final DateTime _dateTimeNow = DateTime.now();
    // get new number of day before next unlock
    final int numberOfDaysBeforeNextUnlock =
        _getNumberDaysBeforeNextUnlockFromPayoutMode(budget.payoutMode);
    if (type == 'sent') {
      return left(const BudgetFailure.unableToUnlockBudgetPeriodically());
    } else if (type == 'personal') {
      final DocumentReference userBudgetRef =
          await _firestore.budgetDocumentRef(budget.id.getOrCrash(), type);
      final DocumentSnapshot userBudgetDoc = await userBudgetRef.get();
      final DateTime budgetNextUnlock =
          DateTime.parse(userBudgetDoc.data['nextUnlockDate'].toString());
      final int offset = budgetNextUnlock.difference(_dateTimeNow).inSeconds;
      final bool moreFunds = (userBudgetDoc.data['amountCashed'] as double) <
          (userBudgetDoc.data['totalAmount'] as double);

      if (userBudgetDoc.exists && moreFunds && offset <= 0) {
        final bool result = await _paymentRepo
            .deductOrCreditTrustedFunds(budget.payoutAmount, deduct: false);
        if (result) {
          final transactionResult =
              await _firestore.runTransaction((transaction) async {
            final DocumentSnapshot userBudgetDoc =
                await transaction.get(userBudgetRef);
            if (!userBudgetDoc.exists) {
              throw Exception("Budget doesn't exist!");
              // return false;
            }

            // new amount cashed
            final double newAmountCashed =
                (userBudgetDoc.data['amountCashed'] as double) +
                    budget.payoutAmount.getOrCrash();
            // new amount locked
            final double newAmountLocked =
                (userBudgetDoc.data['amountLocked'] as double) -
                    budget.payoutAmount.getOrCrash();
            // next unlock date
            final DateTime newNextUnlockDate = DateTime(
                _dateTimeNow.year,
                _dateTimeNow.month,
                _dateTimeNow.day + numberOfDaysBeforeNextUnlock);

            transaction.update(userBudgetRef, {
              'amountCashed': newAmountCashed,
              'amountLocked': newAmountLocked,
              'nextUnlockDate': newNextUnlockDate.toString()
            });
            // return true;
          });
          return result
              ? right(unit)
              : left(const BudgetFailure.unableToCashUnlock());
        }
      }
    } else if (type == 'received') {
      final DocumentReference rBudgetRef =
          await _firestore.budgetDocumentRef(budget.id.getOrCrash(), type);
      final DocumentSnapshot rBudgetDoc = await rBudgetRef.get();
      final DocumentReference sBudgetRef = await _firestore.budgetDocumentRef(
          budget.id.getOrCrash(), type,
          sent: true, senderId: budget.senderId.getOrCrash());
      final DateTime budgetNextUnlock =
          DateTime.parse(rBudgetDoc.data['nextUnlockDate'].toString());
      final int offset = budgetNextUnlock.difference(_dateTimeNow).inSeconds;
      final bool moreFunds = (rBudgetDoc.data['amountCashed'] as double) <
          (rBudgetDoc.data['totalAmount'] as double);

      if (rBudgetDoc.exists && moreFunds && offset <= 0) {
        final bool result = await _paymentRepo
            .deductOrCreditTrustedFunds(budget.payoutAmount, deduct: false);
        if (result) {
          final rTransactionResult =
              await _firestore.runTransaction((transaction) async {
            final DocumentSnapshot userBudgetDoc =
                await transaction.get(sBudgetRef);
            if (!userBudgetDoc.exists) {
              throw Exception("Budget doesn't exist!");
              // return false;
            }

            // new amount cashed
            final double newAmountCashed =
                (userBudgetDoc.data['amountCashed'] as double) +
                    budget.payoutAmount.getOrCrash();
            // new amount locked
            final double newAmountLocked =
                (userBudgetDoc.data['amountLocked'] as double) -
                    budget.payoutAmount.getOrCrash();
            // next unlock date
            final DateTime newNextUnlockDate = DateTime(
                _dateTimeNow.year,
                _dateTimeNow.month,
                _dateTimeNow.day + numberOfDaysBeforeNextUnlock);

            transaction.update(rBudgetRef, {
              'amountCashed': newAmountCashed,
              'amountLocked': newAmountLocked,
              'nextUnlockDate': newNextUnlockDate.toString()
            });
            // return true;
          });

          final sTransactionResult =
              await _firestore.runTransaction((transaction) async {
            final DocumentSnapshot userBudgetDoc =
                await transaction.get(rBudgetRef);
            if (!userBudgetDoc.exists) {
              return false;
            }

            // new amount cashed
            final double newAmountCashed =
                (userBudgetDoc.data['amountCashed'] as double) +
                    budget.payoutAmount.getOrCrash();
            // new amount locked
            final double newAmountLocked =
                (userBudgetDoc.data['amountLocked'] as double) -
                    budget.payoutAmount.getOrCrash();
            // next unlock date
            final DateTime newNextUnlockDate = DateTime(
                _dateTimeNow.year,
                _dateTimeNow.month,
                _dateTimeNow.day + numberOfDaysBeforeNextUnlock);

            transaction.update(rBudgetRef, {
              'amountCashed': newAmountCashed,
              'amountLocked': newAmountLocked,
              'nextUnlockDate': newNextUnlockDate.toString()
            });
            // return true;
          });
          return result
              ? right(unit)
              : left(const BudgetFailure.unableToCashUnlock());
        }
      }
    }
    return left(const BudgetFailure.unableToCashUnlock());
  }

  @override
  Future<Either<BudgetFailure, Unit>> createBudget(
      Budget budget, Logs log) async {
    final batchOp = _firestore.batch();
    // check for  Perform
    final bool availableFunds =
        await _paymentRepo.hasEnoughTrustedFunds(budget.totalAmount);

    // payment response holders
    Response response;
    bool result = false;
    try {
      if (budget.isGift) {
        final DocumentReference senderBudgetRef = await _firestore.document(
            APIPath.budgetSent(
                budget.senderId.getOrCrash(), budget.id.getOrCrash()));
        final DocumentReference receiverBudgetRef = await _firestore.document(
            APIPath.budgetReceived(
                budget.receiverId.getOrCrash(), budget.id.getOrCrash()));

        // data to write
        final Map<String, dynamic> data = BudgetDto.fromDomain(budget).toJson();
        batchOp.setData(senderBudgetRef, data);
        batchOp.setData(receiverBudgetRef, data);

        /// Handle trusted payment of momo here before committing

        // smart payment with try to pay with trustedPay if not available then MOMO account
        if (availableFunds && _mySettings.isSmartFundsActive) {
          result = await _paymentRepo
              .deductOrCreditTrustedFunds(budget.totalAmount, deduct: true);
          if (!result) {
            response = await _momoApiService.requestToPay(
              amount: budget.totalAmount.getOrCrash().toString(),
              currency: "EUR",
              number: budget.sPhoneNumber.getOrCrash(),
              externalId: budget.id.getOrCrash(),
            );
          }
        }

        // withdrawal set to momo account only
        else if (_mySettings.withdrawalWithMomo) {
          response = await _momoApiService.requestToPay(
            amount: budget.totalAmount.getOrCrash().toString(),
            currency: "EUR",
            number: budget.sPhoneNumber.getOrCrash(),
            externalId: budget.id.getOrCrash(),
          );
        }

        // withrawal set to trusted funds only
        else if (!_mySettings.withdrawalWithMomo) {
          if (availableFunds) {
            result = await _paymentRepo
                .deductOrCreditTrustedFunds(budget.totalAmount, deduct: true);
          } else {
            return left(const BudgetFailure.insufficientFundsInTrustedFunds());
          }
        }
        if (!result && response.body == 'Error requesting to pay') {
          return left(const BudgetFailure.paymentWithMomoFailed());
        }
        if (result ||
            response.body['transaction_info']['status'] == "SUCCESSFUL") {
          batchOp.commit();
          // write logs
          if (!result) {
            await _paymentRepo.writeTrustedPayFundsRechargeLogs(
                budget.id.getOrCrash(), log,
                cashIn: true);
          }
          await _paymentRepo.writeTransactionsLogs(log);
          return right(unit);
        }
        return left(const BudgetFailure.unableToCreateBudget());
      } else {
        final DocumentReference budgetRef = await _firestore.document(
            APIPath.budgetPersonal(
                budget.senderId.getOrCrash(), budget.id.getOrCrash()));

        batchOp.setData(budgetRef, BudgetDto.fromDomain(budget).toJson());

        // smart payment with try to pay with trustedPay if not available then MOMO account
        if (availableFunds && _mySettings.isSmartFundsActive) {
          result = await _paymentRepo
              .deductOrCreditTrustedFunds(budget.totalAmount, deduct: true);
          if (!result) {
            response = await _momoApiService.requestToPay(
              amount: budget.totalAmount.getOrCrash().toString(),
              currency: "EUR",
              number: budget.sPhoneNumber.getOrCrash(),
              externalId: budget.id.getOrCrash(),
            );
          }
        }

        // withdrawal set to momo account only
        else if (_mySettings.withdrawalWithMomo) {
          response = await _momoApiService.requestToPay(
            amount: budget.totalAmount.getOrCrash().toString(),
            currency: "EUR",
            number: budget.sPhoneNumber.getOrCrash(),
            externalId: budget.id.getOrCrash(),
          );
        }

        // withrawal set to trusted funds only
        else if (!_mySettings.withdrawalWithMomo) {
          if (availableFunds) {
            result = await _paymentRepo
                .deductOrCreditTrustedFunds(budget.totalAmount, deduct: true);
          } else {
            return left(const BudgetFailure.insufficientFundsInTrustedFunds());
          }
        }
        if (!result && response.body == 'Error requesting to pay') {
          return left(const BudgetFailure.paymentWithMomoFailed());
        }
        if (result ||
            response.body['transaction_info']['status'] == "SUCCESSFUL") {
          batchOp.commit();
          // write logs
          if (!result) {
            await _paymentRepo.writeTrustedPayFundsRechargeLogs(
                budget.id.getOrCrash(), log,
                cashIn: true);
          }
          await _paymentRepo.writeTransactionsLogs(log);
          return right(unit);
        }
        return left(const BudgetFailure.unableToCreateBudget());
      }
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const BudgetFailure.insufficientPermissions());
      }
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
      return left(const BudgetFailure.unexpected());
    }
  }

  @override
  Future<Either<BudgetFailure, Unit>> forceUnlock(
      Budget budget, String type) async {
    if (type == 'sent') {
      return left(const BudgetFailure.unableToForceUnlock());
    }

    // check if app time is in sync
    final Either<BudgetFailure, Unit> timeIs = await _isTimeSync();
    if (timeIs.isLeft()) return left(const BudgetFailure.timeOutOfSync());

    final DocumentReference budgetRef =
        await _firestore.budgetDocumentRef(budget.id.getOrCrash(), type);

    final DocumentReference budgetDoneRef =
        await _firestore.budgetDoneDocument(budget.id.getOrCrash());

    final DocumentSnapshot budgetDoc = await budgetRef.get();
    final WriteBatch batchOpt = _firestore.batch();

    if (!(budgetDoc.data['isDeleted'] as bool) &&
        budgetDoc.data['budgetStatus'] != budgetStatusList[3]) {
      batchOpt.setData(
          budgetDoneRef,
          BudgetDto.fromDomain(budget.copyWith(
                  isDeleted: true,
                  budgetStatus: BudgetStatus(budgetStatusList[3])))
              .toJson());
      final MoneyAmount gainAmount = MoneyAmount(
          budget.amountLocked.getOrCrash() * FORCE_UNLOCK_LOST_PERCENTAGE);

      final collegePlanGain = await _paymentRepo.deductBusinessGain(gainAmount,
          sourceId: budget.id.getOrCrash(), type: 'budget');

      final isCredited = await _paymentRepo.deductOrCreditTrustedFunds(
          MoneyAmount(budget.amountLocked.getOrCrash() *
              FORCE_UNLOCK_RETAINED_PERCENTAGE),
          deduct: false);
      if (isCredited && collegePlanGain) {
        batchOpt.delete(budgetRef);
        batchOpt.commit();
        await _paymentRepo.writeBusinessGainLogs(gainAmount,
            sourceId: budget.id.getOrCrash(), type: 'budget');
        return right(unit);
      }
      return left(const BudgetFailure.unableToForceUnlock());
    } else {
      return left(const BudgetFailure.unableToForceUnlock());
    }
  }

  @override
  Future<Either<BudgetFailure, Budget>> computeBudget(Budget budget) async {
    const String daily = "day";
    const String weekly = "week";
    const String monthly = "month";
    const String yearly = "year";
    final Duration duration =
        budget.unlockDate.getOrCrash().difference(DateTime.now());
    switch (budget.payoutMode.getOrCrash()) {
      case daily:
        if (duration.inDays <= 1) {
          return left(const BudgetFailure.invalidNoDaysForDailyPayRate());
        }
        final payoutRate = budget.totalAmount.getOrCrash() / duration.inDays;
        if (payoutRate >= MIN_DAILY_PR) {
          final _budget = budget.copyWith(
            amountLocked: budget.totalAmount,
            nextUnlockDate: ValidDate(DateTime(DateTime.now().day + 1)),
            payoutAmount: MoneyAmount(payoutRate),
          );
          return right(_budget);
        } else {
          return left(const BudgetFailure.invalidDailyPayRate());
        }
        break;
      case weekly:
        if (duration.inDays <= 7) {
          return left(const BudgetFailure.invalidNoDaysForWeeklyPayRate());
        }
        final payoutRate =
            budget.totalAmount.getOrCrash() / (duration.inDays ~/ 7);
        if (payoutRate >= MIN_WEEKLY_PR) {
          final _budget = budget.copyWith(
            amountLocked: budget.totalAmount,
            nextUnlockDate: ValidDate(DateTime(DateTime.now().day + 7)),
            payoutAmount: MoneyAmount(payoutRate),
          );
          return right(_budget);
        } else {
          return left(const BudgetFailure.invalidWeeklyPayRate());
        }

        break;
      case monthly:
        if (duration.inDays <= 30) {
          return left(const BudgetFailure.invalidNoDaysForMonthlyPayRate());
        }
        final payoutRate =
            budget.totalAmount.getOrCrash() / (duration.inDays ~/ 30);
        if (payoutRate >= MIN_MONTHLY_PR) {
          final _budget = budget.copyWith(
            nextUnlockDate: ValidDate(DateTime(DateTime.now().day + 30)),
            amountLocked: budget.totalAmount,
            payoutAmount: MoneyAmount(payoutRate),
          );
          return right(_budget);
        } else {
          return left(const BudgetFailure.invalidMonthlyPayRate());
        }
        break;
      case yearly:
        if (duration.inDays <= 365) {
          return left(const BudgetFailure.invalidNoDaysForYearlyPayRate());
        }
        final payoutRate =
            budget.totalAmount.getOrCrash() / (duration.inDays ~/ 365);
        if (payoutRate >= MIN_YEARLY_PR) {
          final _budget = budget.copyWith(
            amountLocked: budget.totalAmount,
            nextUnlockDate: ValidDate(DateTime(DateTime.now().day + 365)),
            payoutAmount: MoneyAmount(payoutRate),
          );
          return right(_budget);
        } else {
          return left(const BudgetFailure.invalidYearlyPayRate());
        }
        break;

      default:
        return left(const BudgetFailure.unexpectedFieldInBudget());
    }
  }

  @override
  Future<Either<BudgetFailure, Unit>> deleteFinishedBudget(
      Budget budget, String type) async {
    try {
      final Map<String, dynamic> updatedBudgetData =
          BudgetDto.fromDomain(budget.copyWith(
        isDeleted: true,
      )).toJson();
      final userOption = await _authFacade.getSignedInUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());

      if (type == 'sent') {
        final batch = _firestore.batch();
        final DocumentReference budgetDoneRef =
            await _firestore.budgetDoneDocument(budget.id.getOrCrash());
        final DocumentReference budgetRef =
            await _firestore.budgetDocumentRef(budget.id.getOrCrash(), type);

        batch.setData(budgetDoneRef, updatedBudgetData);
        batch.delete(budgetRef);
        batch.commit();

        return right(unit);
      }

      final batch = _firestore.batch();
      final DocumentReference budgetDoneRef =
          await _firestore.budgetDoneDocument(budget.id.getOrCrash());
      final DocumentReference budgetRef =
          await _firestore.budgetDocumentRef(budget.id.getOrCrash(), type);

      if (budget.amountCashed.getOrCrash() == budget.totalAmount.getOrCrash() &&
          budget.amountLocked.getOrCrash() == 0.0) {
        batch.setData(budgetDoneRef, updatedBudgetData);
        batch.delete(budgetRef);
        batch.commit();
        return right(unit);
      }
      return left(const BudgetFailure.unableToDeleteCompleteBudget());
    } catch (e) {
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");

      return left(const BudgetFailure.unableToDeleteCompleteBudget());
    }
  }

  @override
  Future<Either<BudgetFailure, Unit>> hideBudgetUntilUnlock(
      Budget budget, String type) {
    final Map<String, dynamic> updatedBudgetData =
        BudgetDto.fromDomain(budget.copyWith(
      isHidden: true,
    )).toJson();

    return _actionOnBudgetForPayer(updatedBudgetData, budget, type: type);
  }

  Future<Either<BudgetFailure, Unit>> _actionOnBudgetForPayer(
      Map<String, dynamic> updatePaymentData, Budget budget,
      {String type}) async {
    try {
      // final userOption = await _authFacade.getSignedInUser();
      // final user = userOption.getOrElse(() => throw NotAuthenticatedError());
      final DocumentReference budgetRef =
          await _firestore.budgetDocumentRef(budget.id.getOrCrash(), type);

      final opBatch = _firestore.batch();

      opBatch.updateData(budgetRef, updatePaymentData);

      opBatch.commit();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == PERMISSION_DENIED) {
        return left(const BudgetFailure.insufficientPermissions());
      }
      debugPrint("Error occured: code: ${e.code} , message: ${e.message}");
      return left(const BudgetFailure.unexpected());
    }
  }

  @override
  Future<Either<BudgetFailure, User>> searchUser(String userQuery) async {
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
        return left(const BudgetFailure.userNotFound());
      } catch (e) {
        return left(const BudgetFailure.unexpected());
      }
    } else if ((user.email.getOrCrash() == userQuery && isEmailPk) ||
        (user.phoneNumber.getOrCrash() == userQuery && !isEmailPk)) {
      return right(user);
    }
    return left(const BudgetFailure.unexpected());
  }
}
