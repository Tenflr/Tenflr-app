import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/payment/i_payment_repository.dart';
import '../../../domain/payment/payment.dart';
import '../../../domain/payment/payment_failure.dart';

part 'transaction_list_bloc.freezed.dart';
part 'transaction_list_event.dart';
part 'transaction_list_state.dart';

@injectable
class TransactionListBloc
    extends Bloc<TransactionListEvent, TransactionListState> {
  TransactionListBloc(this.paymentRepository):super(const TransactionListState.loading());


  final IPaymentRepository paymentRepository;

  @override
  Stream<Transition<TransactionListEvent, TransactionListState>>
      transformEvents(
    Stream<TransactionListEvent> events,
    TransitionFunction<TransactionListEvent, TransactionListState> transitionFn,
  ) {
    final nonDebounceStream = events.where((event) {
      return event is! _WatchAll;
    });
    final debounceStream = events.where((event) {
      return event is _WatchAll;
    }).throttleTime(const Duration(seconds: 1));
    return super.transformEvents(
      nonDebounceStream.mergeWith([debounceStream]),
      transitionFn,
    );
  }

  StreamSubscription subscription;

  @override
  Stream<TransactionListState> mapEventToState(
    TransactionListEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        yield const TransactionListState.loading();

        subscription?.cancel();

        subscription = paymentRepository.watchAll().listen(
            (Either<PaymentFailure, KtList<Payment>> payments) => add(
                TransactionListEvent.loadCompleted(
                    failureOrpayments: payments)));
      },
      watchReceived: (e) async* {
        yield const TransactionListState.loading();

        subscription?.cancel();

        subscription = paymentRepository.watchReceived().listen(
            (Either<PaymentFailure, KtList<Payment>> payments) => add(
                TransactionListEvent.loadCompleted(
                    failureOrpayments: payments)));
      },
      watchSent: (e) async* {
        yield const TransactionListState.loading();

        subscription?.cancel();

        subscription = paymentRepository.watchSent().listen(
            (Either<PaymentFailure, KtList<Payment>> payments) => add(
                TransactionListEvent.loadCompleted(
                    failureOrpayments: payments)));
      },
      loadCompleted: (e) async* {
        yield e.failureOrpayments.fold(
            (PaymentFailure l) => TransactionListState.loadFailure(failure: l),
            (KtList<Payment> r) =>
                TransactionListState.loadComplete(payments: r));
      },
    );
  }

  @override
  Future<void> close() {
    subscription?.cancel();
    return super.close();
  }
}
