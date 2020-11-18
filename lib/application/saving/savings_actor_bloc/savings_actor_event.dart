part of 'savings_actor_bloc.dart';

@freezed
abstract class SavingsActorEvent with _$SavingsActorEvent {
  const factory SavingsActorEvent.unlockSavings(Savings saving) = _UnlockSavings;
  const factory SavingsActorEvent.forceUnlockSavings(Savings saving) = _ForceUnlockSavings;
  const factory SavingsActorEvent.deleteUnlocked(Savings saving) = _DeleteUnlock;
  const factory SavingsActorEvent.hide(Savings saving) = _Hide;
  const factory SavingsActorEvent.freeze(Savings saving) = _Freezed;
}