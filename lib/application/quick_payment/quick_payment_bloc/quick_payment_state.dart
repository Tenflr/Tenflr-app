part of 'quick_payment_bloc.dart';

@freezed
abstract class QuickPaymentState with _$QuickPaymentState {
  const factory QuickPaymentState({
    @required final QuickPaymentToken token,
    @required final QuickPayment payment,
    @required final MoneyAmount amountToRequest ,
    @required final bool shouldValidatePayment,
    @required
        Option<Either<QuickPaymentFailure, Unit>> saveFailureOrSuccessOption,
    @required final String encryptedToken,
  }) = _QuickPaymentState;
  factory QuickPaymentState.empty() => QuickPaymentState(
        token: QuickPaymentToken.empty(),
        payment: QuickPayment.empty(),
        saveFailureOrSuccessOption: none(),
        amountToRequest: MoneyAmount(0),
        encryptedToken: '',
        shouldValidatePayment: false,
      );
}
