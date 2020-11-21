import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/core/transaction_stats_failure.dart';
import '../../domain/transaction_statistics/day.dart';
import '../../domain/transaction_statistics/i_transaction_stats_repository.dart';
import '../../domain/transaction_statistics/transaction_stats.dart';

part 'transaction_stats_bloc.freezed.dart';
part 'transaction_stats_event.dart';
part 'transaction_stats_state.dart';

@injectable
class TransactionStatsBloc
    extends Bloc<TransactionStatsEvent, TransactionStatState> {
  TransactionStatsBloc(this._statsRepo):super( TransactionStatState.initial());

  final ITransactionStatisticRepository _statsRepo;


  StreamSubscription subscription;

  @override
  Stream<TransactionStatState> mapEventToState(
    TransactionStatsEvent event,
  ) async* {
    yield* event.map(
      watchTransactionStatistics: (e) async* {
        // subscription?.cancel();
        subscription = _statsRepo.watchTransactionStatistic().listen(
            (Either<PaymentStatsFailure, KtList<Day>> failureOrDays) => add(
                  TransactionStatsEvent.loadCompleted(
                      failureOrDays: failureOrDays),
                ));
      },
      loadCompleted: (e) async* {
          subscription?.cancel();
        yield e.failureOrDays.fold((l) => state.copyWith(errorPresent: true),
            (KtList days) {
          PaymentStats paymentStats = PaymentStats.emtpy();
          days.forEach((day) {
            switch (day.index as int) {
              case 1:
                paymentStats = state.paymentStats.copyWith(monday: day as Day);
                break;
              case 2:
                paymentStats = state.paymentStats.copyWith(tuesday: day as Day);
                break;
              case 3:
                paymentStats =
                    state.paymentStats.copyWith(wednesday: day as Day);
                break;
              case 4:
                paymentStats =
                    state.paymentStats.copyWith(thursday: day as Day);
                break;
              case 5:
                paymentStats = state.paymentStats.copyWith(friday: day as Day);
                break;
              case 6:
                paymentStats =
                    state.paymentStats.copyWith(saturday: day as Day);
                break;
              case 7:
                paymentStats = state.paymentStats.copyWith(sunday: day as Day);
                break;

              default:
            }
          });
          return TransactionStatState.loadCompleted(paymentStats: paymentStats);
        });
      },
    );
  }

  void dispose() {
    subscription?.cancel();
    super.close();
  }
}
