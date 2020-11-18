part of 'quick_payment_watcher_bloc.dart';

@freezed
@immutable
abstract class QuickPaymentWatcherEvent with _$QuickPaymentWatcherEvent {
  const factory QuickPaymentWatcherEvent.watchAll() = _WatchAll;
  const factory QuickPaymentWatcherEvent.listCompleted({@required Either< QuickPaymentFailure , KtList<QuickPayment >> failureOrQuickPayment}) = _LoadComplete;
}
