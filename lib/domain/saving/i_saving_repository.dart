import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../core/valid_objects.dart';
import '../logs/logs.dart';
import 'savings.dart';
import 'savings_failure.dart';

abstract class ISavingsRepository {
  // watch savings
  Stream<Either<SavingsFailure, KtList<Savings>>> watchAll();

  // create savings
  Future<Either<SavingsFailure, Unit>> createSavings(Savings savings, Logs log);

  // update savings
  Future<Either<SavingsFailure, Unit>> updateSavings(
      Savings savings, MoneyAmount addAmount, Logs log);

  // hide savings
  Future<Either<SavingsFailure, Unit>> hideSavings(Savings savings);

  // freeze savings * Savings will remain block irrespective of the time to unlock *

  Future<Either<SavingsFailure, Unit>> freezeSavings(Savings savings);

  // force unlock savings
  Future<Either<SavingsFailure, Unit>> forceUnlockSavings(Savings savings, Logs log);

  // unlock savings after unlockDate
  Future<Either<SavingsFailure, Unit>> unlockSavings(Savings savings, Logs log);

  // delete unlocked savings
  Future<Either<SavingsFailure, Unit>> deleteUnlockedSaving(Savings savings);

   // write logs about all budgets created
  // Future<void> writeSavingsCreatedLogs(Savings saving);

  // Write logs to indicated that Trusted pay was recharged by MoMo Account
  // Future<void> writeTrustedPayFundsRechargeLogs(Savings saving,
      // {@required bool cashOut});
}
