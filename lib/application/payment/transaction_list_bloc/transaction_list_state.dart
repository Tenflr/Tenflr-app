part of 'transaction_list_bloc.dart';

@freezed
@immutable
abstract class TransactionListState with _$TransactionListState {
  const factory TransactionListState.initial() = _Initial;
  const factory TransactionListState.loading() = _Loading;
 
  const factory TransactionListState.loadFailure(
      {@required PaymentFailure failure}) = _LoadFailureS;
  const factory TransactionListState.loadComplete(
      {@required KtList<Payment> payments}) = _PaymentLoaded;
}
