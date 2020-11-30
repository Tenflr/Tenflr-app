import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/payment/i_payment_repository.dart';
import '../../../domain/payment/payment.dart';
import '../../../domain/payment/payment_failure.dart';

part 'payment_actor_bloc.freezed.dart';
part 'payment_actor_event.dart';
part 'payment_actor_state.dart';

@injectable
class PaymentActorBloc extends Bloc<PaymentActorEvent, PaymentActorState> {
  PaymentActorBloc(this._paymentRepo) : super(PaymentActorState.initial());
  final IPaymentRepository _paymentRepo;

  @override
  Stream<PaymentActorState> mapEventToState(PaymentActorEvent gEvent) async* {
    yield* gEvent.map(
      cash: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<PaymentFailure, bool> failureOrSuccess =
            await _paymentRepo.autoCashPayment(e.payment);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      hide: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<PaymentFailure, bool> failureOrSuccess =
            await _paymentRepo.hidePayment(e.payment);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      unlockSent: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<PaymentFailure, bool> failureOrSuccess =
            await _paymentRepo.unlockSentPayment(e.payment);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      freezeSent: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<PaymentFailure, bool> failureOrSuccess =
            await _paymentRepo.freezeSentPayment(e.payment);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      deleteCashed: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<PaymentFailure, bool> failureOrSuccess =
            await _paymentRepo.deleteCashedPayment(e.payment);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      requestUnlockOfReceived: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<PaymentFailure, bool> failureOrSuccess =
            await _paymentRepo.requestUnlockOfReceivedPayment(e.payment);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      returnPayment: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<PaymentFailure, bool> failureOrSuccess =
            await _paymentRepo.returnPayment(e.payment);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      upVoteUser: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<PaymentFailure, bool> failureOrSuccess =
            await _paymentRepo.rateUser(e.payment, true);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      downVoteUser: (e) async* {
        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());
        final Either<PaymentFailure, bool> failureOrSuccess =
            await _paymentRepo.rateUser(e.payment, false);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}
