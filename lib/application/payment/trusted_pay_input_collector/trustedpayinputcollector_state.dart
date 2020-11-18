part of 'trustedpayinputcollector_bloc.dart';

@freezed
@immutable
abstract class TrustedPayInputCollectorState
    with _$TrustedPayInputCollectorState {
  const factory TrustedPayInputCollectorState({
    @required bool showErrorMessage,
    @required bool isSaving,
    @required bool isEditing,
    @required Payment payment,
    @required Option<Either<PaymentFailure, Unit>> saveFailureOrSuccessOption,
  }) = _TrustedPayInputCollectorState;
  factory TrustedPayInputCollectorState.empty() =>
      TrustedPayInputCollectorState(
        showErrorMessage: false,
        isSaving: false,
        isEditing: false,
        payment: Payment.empty(),
        saveFailureOrSuccessOption: none(),
      );
}
