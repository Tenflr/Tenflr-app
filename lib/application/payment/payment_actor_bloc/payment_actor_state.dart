part of 'payment_actor_bloc.dart';

@freezed
abstract class PaymentActorState implements _$PaymentActorState {
  const PaymentActorState._();
  factory PaymentActorState({
    @required bool isSaving,
    @required Option<Either<PaymentFailure, Unit>> saveFailureOrSuccessOption,
  }) = _PaymentActorState;
  factory PaymentActorState.initial() => PaymentActorState(
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
