part of 'trusted_funds_bloc.dart';

@freezed
abstract class TrustedFundsState with _$TrustedFundsState {
  const factory TrustedFundsState.initial() = _Inital;
  const factory TrustedFundsState.loadInProgress() = _LoadInProgress;
  const factory TrustedFundsState.loadSuccess({@required MoneyAmount amount}) = _LoadSuccess;
  const factory TrustedFundsState.loadFailure({@required PaymentFailure failure}) = _LoadFailure;

}