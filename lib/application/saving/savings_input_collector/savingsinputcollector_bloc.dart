import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/core/constant_list.dart';
import '../../../domain/core/valid_objects.dart';
import '../../../domain/core/value_object.dart';
import '../../../domain/logs/logs.dart';
import '../../../domain/saving/i_saving_repository.dart';
import '../../../domain/saving/savings.dart';
import '../../../domain/saving/savings_failure.dart';

part 'savingsinputcollector_bloc.freezed.dart';
part 'savingsinputcollector_event.dart';
part 'savingsinputcollector_state.dart';

@injectable
class SavingsInputCollectorBloc
    extends Bloc<SavingsInputCollectorEvent, SavingsInputCollectorState> {
  final ISavingsRepository savingsRepository;

  StreamSubscription subscription;

  SavingsInputCollectorBloc(this.savingsRepository)
      : super(SavingsInputCollectorState.empty());

 

  @override
  Stream<SavingsInputCollectorState> mapEventToState(
    SavingsInputCollectorEvent event,
  ) async* {
    yield* event.map(
      initilized: (e) async* {
        yield state.copyWith(
          saving: e.saving,
          saveFailureOrSuccessOption: none(),
        );
      },
      amountChanged: (e) async* {
        yield state.copyWith(
          saving: state.saving.copyWith(amount: e.amount),
          saveFailureOrSuccessOption: none(),
        );
      },
      withdrawalDataChanged: (e) async* {
        yield state.copyWith(
          saving: state.saving.copyWith(
            withdrawalDate: e.date,
            timeLeft:
                ValidDuration(e.date.getOrCrash().difference(DateTime.now())),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      accountNameChanged: (e) async* {
        yield state.copyWith(
          saving: state.saving.copyWith(savingsName: e.name),
          saveFailureOrSuccessOption: none(),
        );
      },
      addAmountChanged: (e) async* {
        yield state.copyWith(
          addedAmount: e.addedAmount,
          saveFailureOrSuccessOption: none(),
        );
      },
      addMoneyToSavings: (e) async* {
           final Logs log = _generateLogs(state.saving);
        final MoneyAmount newAmount = MoneyAmount(
            state.saving.amount.getOrCrash() + state.addedAmount.getOrCrash());
        yield state.copyWith(
          isSaving: true,
          saving: state.saving.copyWith(
            amount: newAmount,
          ),
          saveFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await savingsRepository.updateSavings(
            state.saving, state.addedAmount, log);
        yield state.copyWith(
          isSaving: false,
          showErrorMessage: false,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      submitted: (e) async* {
          final Logs log = _generateLogs(state.saving);
        yield state.copyWith(
          showErrorMessage: true,
          //  isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        if (state.saving.failureOption.isNone()) {
          yield state.copyWith(
            isSaving: true,
          );
          // if(state.saving.failureOption.)
          final failureOrSuccess =
              await savingsRepository.createSavings(state.saving, log);

          yield state.copyWith(
            isSaving: false,
            showErrorMessage: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }
        yield state.copyWith(
          isSaving: false,
          saveFailureOrSuccessOption: none(),
        );
      },
    );

    @override
    Future<void> dispose() async {
      subscription?.cancel();
      super.close();
    }
  }
}



Logs _generateLogs(Savings saving) {
  return Logs(
    amount: saving.amount,
    payer: saving.id,
    receiver: UniqueId.fromUniqueString('me'),
    type: TransactionType(kTransactionType.s.val ),
    operation: 'created',
    createdAt: DateTime.now(),
  );
}