import 'package:bloc/bloc.dart';
import 'package:tenflrpay/domain/core/constant_list.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/domain/logs/logs.dart';
import 'package:tenflrpay/domain/saving/i_saving_repository.dart';
import 'package:tenflrpay/domain/saving/savings.dart';
import 'package:tenflrpay/domain/saving/savings_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'savings_actor_state.dart';
part 'savings_actor_event.dart';
part 'savings_actor_bloc.freezed.dart';

@injectable
class SavingsActorBloc extends Bloc<SavingsActorEvent, SavingsActorState> {
  SavingsActorBloc(this._savingRepo) : super(SavingsActorState.initial());
  final ISavingsRepository _savingRepo;

  @override
  Stream<SavingsActorState> mapEventToState(SavingsActorEvent gEvent) async* {
    yield* gEvent.map(
      unlockSavings: (e) async* {
        final Logs log = _generateLogs(e.saving);
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<SavingsFailure, Unit> failureOrSuccess =
            await _savingRepo.unlockSavings(e.saving, log);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      forceUnlockSavings: (e) async* {
        final Logs log = _generateLogs(e.saving);

        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<SavingsFailure, Unit> failureOrSuccess =
            await _savingRepo.forceUnlockSavings(e.saving, log);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      deleteUnlocked: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<SavingsFailure, Unit> failureOrSuccess =
            await _savingRepo.deleteUnlockedSaving(e.saving);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      hide: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<SavingsFailure, Unit> failureOrSuccess =
            await _savingRepo.hideSavings(e.saving);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      freeze: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<SavingsFailure, Unit> failureOrSuccess =
            await _savingRepo.freezeSavings(e.saving);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}

Logs _generateLogs(Savings saving) {
  return Logs(
    amount: saving.amount,
    payer: saving.id,
    receiver: UniqueId.fromUniqueString('me'),
    type: TransactionType(transactionTypeList[2]),
    operation: 'unlocked',
    createdAt: DateTime.now(),
  );
}
