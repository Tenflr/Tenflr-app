part of 'payment_actor_bloc.dart';

@freezed
abstract class PaymentActorState implements _$PaymentActorState {
  const PaymentActorState._();
  factory PaymentActorState({
    @required bool isSaving,
    @required Option<Either<PaymentFailure, bool>> saveFailureOrSuccessOption,
  }) = _PaymentActorState;
  factory PaymentActorState.initial() => PaymentActorState(
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
