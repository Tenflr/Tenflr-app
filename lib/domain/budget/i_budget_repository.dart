import 'package:tenflrpay/domain/budget/budget_failure.dart';
import 'package:tenflrpay/domain/budget/budgets.dart';
import 'package:tenflrpay/domain/logs/logs.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:tenflrpay/domain/user/user.dart';

abstract class IBudgetRepository {
  // watch Personal Manager
  Stream<Either<BudgetFailure, KtList<Budget>>> watchPersonal();

  //watch gift sent manager
  Stream<Either<BudgetFailure, KtList<Budget>>> watchGitfSent();

  // watch gift received manager
  Stream<Either<BudgetFailure, KtList<Budget>>> watchGitfReceived();

  // watch all  manager
  Stream<Either<BudgetFailure, KtList<Budget>>> watchAll();

  // create manager
  Future<Either<BudgetFailure, Unit>> createBudget(Budget budget, Logs log);

  // force unlock manager

  Future<Either<BudgetFailure, Unit>> forceUnlock(Budget budget, String type);

  //Hide a budget unlock it's next unlock
  Future<Either<BudgetFailure, Unit>> hideBudgetUntilUnlock(Budget budget, String type);

  //delete Complete budget
  Future<Either<BudgetFailure, Unit>> deleteFinishedBudget(Budget budget, String type);

  // Cash unlock amount to Trusted pay

  // Future<Either<BudgetFailure, Unit>> cashUnlocked(Budget budget, String type);

  // auto unlock budget periodically
  Future<Either<BudgetFailure, Unit>> autoUnlockBudgetPeriodically(Budget budget, String type );

  // Writes logs history to firestore and weekly logs to feed app
  // Future<void> writeBudgetTransactionsLogs(Budget budget);

// write logs about all budgets created
  // Future<void> writeBudgetCreatedLogs(Budget budget);

  // Write logs to indicated that Trusted pay was recharged by MoMo Account
  // Future<void> writeTrustedPayFundsRechargeLogs(Budget budget,
      // {@required bool cashOut});

/// We will compute valid Payout amount given the payout Mode , duration and total amount in budget
/// if the PayMode is daily then, the Payout amount >= XFA 200
/// if the PayMode is weekly then, the Payout amount >= XFA 1,000 
/// if the PayMode is monthly then, the Payout amount >= XFA 5,000
/// if the PayMode is yearly then, the Payout amount >= XFA 50,000

  Future<Either<BudgetFailure, Budget>> computeBudget(Budget budget);
  Future<Either<BudgetFailure, User>> searchUser(String userQuery);
}
