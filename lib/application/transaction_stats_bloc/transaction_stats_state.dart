part of 'transaction_stats_bloc.dart';

@freezed
@immutable
abstract class TransactionStatState implements _$TransactionStatState {
  const TransactionStatState._();
  factory TransactionStatState({
    @required PaymentStats paymentStats,
    @required bool errorPresent,
  }) = _TransactionStatState;

  factory TransactionStatState.initial() => TransactionStatState(
      paymentStats: PaymentStats.emtpy(), errorPresent: false);

  factory TransactionStatState.loadCompleted(
          {@required PaymentStats paymentStats}) =>
      TransactionStatState(
          paymentStats: paymentStats, errorPresent: false);
}
