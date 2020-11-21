import '../core/transaction_stats_failure.dart';
import 'day.dart';
import 'transaction_stats.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class ITransactionStatisticRepository {
  Stream<Either<PaymentStatsFailure, KtList<Day>>>
      watchTransactionStatistic();
}
