part of 'transaction_stats_bloc.dart';

@freezed 
@immutable
abstract class TransactionStatsEvent with _$TransactionStatsEvent{
  const factory TransactionStatsEvent.watchTransactionStatistics() = _WatchTransactionStatistics;
  const factory TransactionStatsEvent.loadCompleted({@required Either<PaymentStatsFailure, KtList<Day>> failureOrDays }) = _LoadCompleted;
}