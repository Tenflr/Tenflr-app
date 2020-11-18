import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:tenflrpay/domain/budget/budget_failure.dart';
import 'package:tenflrpay/domain/budget/budgets.dart';
import 'package:tenflrpay/domain/budget/i_budget_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

part 'budgetlist_event.dart';
part 'budgetlist_state.dart';

part 'budgetlist_bloc.freezed.dart';

@injectable
class BudgetListBloc extends Bloc<BudgetListEvent, BudgetListState> {
  BudgetListBloc({this.budgetRepository}):super(const BudgetListState.initial());


  final IBudgetRepository budgetRepository;

  // @override
  // Stream<Transition<BudgetListEvent, BudgetListState>> transformEvents(
  //   Stream<BudgetListEvent> events,
  //   TransitionFunction<BudgetListEvent, BudgetListState> transitionFn,
  // ) {
  //   final nonDebounceStream = events.where((event) {
  //     return event is! _InitList;
  //   });
  //   final throttleStream = events.where((event) {
  //     return event is _InitList;
  //   }).throttleTime(const Duration(seconds: 1));
  //   final debounceStream = events.where((event) {
  //     return event is _WatchAll;
  //   }).debounceTime(const Duration(seconds: 2));
  //   return super.transformEvents(
  //     nonDebounceStream.mergeWith([debounceStream, throttleStream]),
  //     transitionFn,
  //   );
  // }

  StreamSubscription subscriptionSent;
  // StreamSubscription watchAllStream;

  @override
  Stream<BudgetListState> mapEventToState(
    BudgetListEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        yield const BudgetListState.loading();
        subscriptionSent?.cancel();

        subscriptionSent = budgetRepository.watchAll().listen(
            (Either<BudgetFailure, KtList<Budget>> budgets) =>
                add(BudgetListEvent.listCompleted(failureOrbudgets: budgets)));
      },
      watchPersonal: (e) async* {
        yield const BudgetListState.loading();
        subscriptionSent?.cancel();

        subscriptionSent = budgetRepository.watchPersonal().listen(
            (Either<BudgetFailure, KtList<Budget>> budgets) =>
                add(BudgetListEvent.listCompleted(failureOrbudgets: budgets)));
      },
      listCompleted: (e) async* {
        yield e.failureOrbudgets.fold(
            (BudgetFailure l) => BudgetListState.loadFailure(failure: l),
            (KtList<Budget> r) => BudgetListState.listLoaded(budgets: r));
      },
      watchReceived: (e) async* {
        yield const BudgetListState.loading();
        subscriptionSent?.cancel();

        subscriptionSent = budgetRepository.watchGitfReceived().listen(
            (Either<BudgetFailure, KtList<Budget>> budgets) =>
                add(BudgetListEvent.listCompleted(failureOrbudgets: budgets)));
      },
      watchSent: (e) async* {
        yield const BudgetListState.loading();
        subscriptionSent?.cancel();

        subscriptionSent = budgetRepository.watchGitfSent().listen(
            (Either<BudgetFailure, KtList<Budget>> budgets) =>
                add(BudgetListEvent.listCompleted(failureOrbudgets: budgets)));
      },
    );
  }

  @override
  Future<void> close() async {
    subscriptionSent?.cancel();
    // watchAllStream?.cancel();
    return super.close();
  }
}
