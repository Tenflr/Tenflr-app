part of 'transaction_list_bloc.dart';
@freezed

@immutable
abstract class TransactionListEvent with _$TransactionListEvent{
  const factory TransactionListEvent.watchReceived() = _WatchReceived;
  const factory TransactionListEvent.watchSent() = _WatchSent;
  const factory TransactionListEvent.watchAll() = _WatchAll;
  const factory TransactionListEvent.loadCompleted({@required Either<PaymentFailure, KtList<Payment>> failureOrpayments}) = _LoadCompleteE;
  // const factory TransactionListEvent.loadFailure({@required PaymentFailure failure}) = _LoadFailure;
  // const factory TransactionListEvent.unlockPayment({@required Payment payment}) = _UnlockPayment;
  // const factory TransactionListEvent.blockPayment({@required Payment payment}) = _BlockPayment;
  // const factory TransactionListEvent.hidePayment({@required Payment payment}) = _HidePayment;
  // const factory TransactionListEvent.deletePayment({@required Payment payment}) = _DeletePayment;
  // const factory TransactionListEvent.archivePayment({@required Payment payment}) = _ArchivePayment;
}





