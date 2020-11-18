part of 'savings_actor_bloc.dart';

@freezed
abstract class SavingsActorState implements _$SavingsActorState {
  const SavingsActorState._();
  factory SavingsActorState({
    @required bool isSaving,
    @required Option<Either<SavingsFailure, Unit>> saveFailureOrSuccessOption,
  }) = _SavingsActorState;
  factory SavingsActorState.initial() => SavingsActorState(
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
