part of 'quick_payment_watcher_bloc.dart';

@freezed
@immutable
abstract class QuickPaymentWatcherState with _$QuickPaymentWatcherState {
  const factory QuickPaymentWatcherState.initial() = _Initial;
  const factory QuickPaymentWatcherState.loadInProgress() = _LoadInProgress;
  const factory QuickPaymentWatcherState.loadSuccess({ @required KtList<QuickPayment> quickPayment }) = _LoadSuccess;
  const factory QuickPaymentWatcherState.loadFailure(
      {@required QuickPaymentFailure failure}) = _LoadFailure;
}
