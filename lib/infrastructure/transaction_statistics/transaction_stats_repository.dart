import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/core/transaction_stats_failure.dart';
import '../../domain/transaction_statistics/day.dart';
import '../../domain/transaction_statistics/i_transaction_stats_repository.dart';
import '../core/firestore_helpers.dart';
import 'day_dtos.dart';

@LazySingleton(as: ITransactionStatisticRepository)
class TransactionStatsRepository implements ITransactionStatisticRepository {
  final Firestore _firestore;

  TransactionStatsRepository(this._firestore);
  @override
  Stream<Either<PaymentStatsFailure, KtList<Day>>>
      watchTransactionStatistic() async* {
    final CollectionReference statisticsRef =
        await _firestore.transactionsWeeklyLogsCollection();

    yield* statisticsRef
        .orderBy('index')
        .snapshots()
        .map((QuerySnapshot snapshot) {
      return right<PaymentStatsFailure, KtList<Day>>(snapshot.documents
          .map((doc) => DayDto.fromFirestore(doc).toDomain())
          .toImmutableList());
    });
  }
}
