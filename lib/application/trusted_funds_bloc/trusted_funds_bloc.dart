import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/valid_objects.dart';
import '../../domain/payment/i_payment_repository.dart';
import '../../domain/payment/payment_failure.dart';

part 'trusted_funds_bloc.freezed.dart';
part 'trusted_funds_event.dart';
part 'trusted_funds_state.dart';

@injectable
class TrustedFundsBloc extends Bloc<TrustedFundsEvent, TrustedFundsState> {
  final IPaymentRepository _paymentRepo;
  TrustedFundsBloc(this._paymentRepo) : super(const TrustedFundsState.initial());

  StreamSubscription subscription;
  @override
  Stream<TrustedFundsState> mapEventToState(TrustedFundsEvent gEvent) async* {
    yield* gEvent.map(
      watchFunds: (e) async* {
        subscription = _paymentRepo.watchTrustedPay().listen(
            (Either<PaymentFailure, MoneyAmount> failureOrMoney) =>
                failureOrMoney.fold(
                    (f) => add(TrustedFundsEvent.loadFailure(failure: f)),
                    (r) => add(TrustedFundsEvent.loadComplete(amount: r))));
      },
      loadFailure: (e) async* {
        yield TrustedFundsState.loadFailure(failure: e.failure);
      },
      loadComplete: (e) async* {
        yield TrustedFundsState.loadSuccess(amount: e.amount);
      },
    );
  }


  @override
  Future<void> close() {
    subscription?.cancel();
    return super.close();
  }
}
