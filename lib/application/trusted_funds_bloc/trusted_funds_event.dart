part of 'trusted_funds_bloc.dart';

@freezed
abstract class TrustedFundsEvent with _$TrustedFundsEvent {
  const factory TrustedFundsEvent.watchFunds() = _WatchFunds;
  const factory TrustedFundsEvent.loadComplete({@required MoneyAmount amount}) = _LoadComplete;
  const factory TrustedFundsEvent.loadFailure({@required PaymentFailure failure}) = _LoadFailureE;
}