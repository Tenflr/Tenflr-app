import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:tenflrpay/domain/budget/budget_failure.dart';
import 'package:tenflrpay/domain/budget/budgets.dart';
import 'package:tenflrpay/domain/budget/i_budget_repository.dart';
import 'package:tenflrpay/domain/core/constant_list.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/domain/logs/logs.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:dartz/dartz.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

part 'budgetinputcollector_event.dart';
part 'budgetinputcollector_state.dart';

part 'budgetinputcollector_bloc.freezed.dart';

@injectable
class BudgetInputCollectorBloc
    extends Bloc<BudgetInputCollectorEvent, BudgetInputCollectorState> {
  final IBudgetRepository _budgetRepo;

  BudgetInputCollectorBloc(
    this._budgetRepo,
  ) : super(BudgetInputCollectorState.empty());

  @override
  Stream<Transition<BudgetInputCollectorEvent, BudgetInputCollectorState>>
      transformEvents(
    Stream<BudgetInputCollectorEvent> events,
    TransitionFunction<BudgetInputCollectorEvent, BudgetInputCollectorState>
        transitionFn,
  ) {
    final nonDebounceStream = events.where((event) {
      return event is! _ManagerAccountNameChanged &&
          event is! _AmountToManageChanged &&
          event is! _LockPeriodChanged &&
          event is! _PayoutModeChanged &&
          event is! _ReceiverInfoChanged &&
          event is! _ReceiverChanged;
    });
    final debounceStream = events.where((event) {
      return event is _ReceiverInfoChanged ||
          event is _LockPeriodChanged ||
          event is _PayoutModeChanged ||
          event is _ReceiverChanged ||
          event is _AmountToManageChanged ||
          event is _ManagerAccountNameChanged;
    }).debounceTime(const Duration(milliseconds: 500));
    return super.transformEvents(
      nonDebounceStream.mergeWith([debounceStream]),
      transitionFn,
    );
  }

  @override
  Stream<BudgetInputCollectorState> mapEventToState(
    BudgetInputCollectorEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
          budget: state.budget.copyWith(
            senderId: e.user.id,
            sPhotoUrl: e.user.photoUrl,
            sDisplayName: e.user.displayName,
            sPhoneNumber: e.user.phoneNumber,
            totalAmount: MoneyAmount(10000),
          ),
          showErrorMessage: false,
          saveFailureOrSuccessOption: none(),
        );
      },
      searchUser: (e) async* {
        final Either<BudgetFailure, User> failureOrUserfound =
            await _budgetRepo.searchUser(e.userQuery);

        yield failureOrUserfound.fold(
            (failure) => state.copyWith(
                  saveFailureOrSuccessOption: none(),
                  showErrorMessage: true,
                  userFound: false,
                  budget: state.budget.copyWith(
                    receiverId: UniqueId(),
                    rPhotoUrl: '',
                    rDisplayName: ValidNames(''),
                    rPhoneNumber: ValidPhoneNumber(''),
                  ),
                ),
            (receiver) => state.copyWith(
                  saveFailureOrSuccessOption: none(),
                  showErrorMessage: false,
                  budget: state.budget.copyWith(
                    receiverId: receiver.id,
                    rPhotoUrl: receiver.photoUrl,
                    rDisplayName: receiver.displayName,
                    rPhoneNumber: receiver.phoneNumber,
                    isGift: true,
                  ),
                  userFound: true,
                ));
      },
      amountToManageChanged: (e) async* {
        yield state.copyWith(
          budget: state.budget.copyWith(
            totalAmount: e.amount,
            amountLocked: e.amount,
          ),
          showErrorMessage: false,
          saveFailureOrSuccessOption: none(),
        );
      },
      lockPeriodChanged: (e) async* {
        yield state.copyWith(
          budget: state.budget.copyWith(
            unlockDate: e.unlockDate,
          ),
          showErrorMessage: false,
          saveFailureOrSuccessOption: none(),
        );
      },
      payoutModeChanged: (e) async* {
        yield state.copyWith(
          budget: state.budget.copyWith(
            payoutMode: e.payoutMode,
          ),
          showErrorMessage: false,
          saveFailureOrSuccessOption: none(),
        );
      },
      receiverInfoChanged: (e) async* {
        if (e.searchTerm.isEmpty) {
          yield state.copyWith(
            budget: state.budget.copyWith(
              receiverId: UniqueId(),
              rPhotoUrl: '',
              rDisplayName: ValidNames(''),
              rPhoneNumber: ValidPhoneNumber(''),
            ),
            showErrorMessage: false,
            saveFailureOrSuccessOption: none(),
          );
        }
      },
      receiverChanged: (e) async* {
        yield state.copyWith(
          budget: state.budget.copyWith(
            receiverId: e.receiver.id,
            rPhotoUrl: e.receiver.photoUrl,
            rDisplayName: e.receiver.displayName,
            rPhoneNumber: e.receiver.phoneNumber,
            isGift: true,
          ),
          showErrorMessage: false,
          saveFailureOrSuccessOption: none(),
        );
      },
      managerAccountNameChanged: (e) async* {
        yield state.copyWith(
          budget: state.budget.copyWith(
            accountName: e.accountName,
          ),
          showErrorMessage: false,
          saveFailureOrSuccessOption: none(),
        );
      },
      submitted: (e) async* {
        yield state.copyWith(
          showErrorMessage: true,
          saveFailureOrSuccessOption: none(),
        );
        if (state.budget.failureOption.isNone()) {
          final Either<BudgetFailure, Budget> invalidBudgetOrBudget =
              await _budgetRepo.computeBudget(state.budget);

          if (invalidBudgetOrBudget.isLeft()) {
            yield invalidBudgetOrBudget.fold(
              (l) => state.copyWith(
                isSaving: false,
                showErrorMessage: true,
                saveFailureOrSuccessOption: some(left(l)),
              ),
              (r) => state.copyWith(
                isSaving: true,
                saveFailureOrSuccessOption: none(),
              ),
            );
          } else {
            final Logs log = _generateLogs(state.budget);
            yield state.copyWith(
              isSaving: true,
              saveFailureOrSuccessOption: none(),
            );
            Budget validBudget;
            invalidBudgetOrBudget.fold((l) {}, (r) => validBudget = r);

            final Either<BudgetFailure, Unit> failureOrBudget =
                await _budgetRepo.createBudget(validBudget, log);

            yield state.copyWith(
              isSaving: false,
              showErrorMessage: false,
              saveFailureOrSuccessOption: some(failureOrBudget),
            );
          }
        }
      },
    );
  }
}

Logs _generateLogs(Budget budget) {
  return Logs(
    amount: budget.totalAmount,
    payer: budget.senderId,
    receiver:
        budget.isGift ? budget.receiverId : UniqueId.fromUniqueString('me'),
    type: TransactionType(transactionTypeList[3]),
    operation: budget.isGift ? '-' : '+',
    createdAt: DateTime.now(),
  );
}
