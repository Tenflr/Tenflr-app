import 'package:tenflrpay/domain/core/transaction_stats_failure.dart';
import 'package:tenflrpay/domain/transaction_statistics/day.dart';
import 'package:tenflrpay/domain/transaction_statistics/transaction_stats.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class ITransactionStatisticRepository {
  Stream<Either<PaymentStatsFailure, KtList<Day>>>
      watchTransactionStatistic();
}
