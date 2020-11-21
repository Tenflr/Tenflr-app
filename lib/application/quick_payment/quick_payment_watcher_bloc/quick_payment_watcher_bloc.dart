import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../../domain/quick_payment/i_quick_payment.dart';
import '../../../domain/quick_payment/quick_payment.dart';
import '../../../domain/quick_payment/quick_payment_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'quick_payment_watcher_state.dart';
part 'quick_payment_watcher_event.dart';
part 'quick_payment_watcher_bloc.freezed.dart';

@injectable
class QuickPaymentWatcherBloc
    extends Bloc<QuickPaymentWatcherEvent, QuickPaymentWatcherState> {
  final IQuickPaymentRepository _paymentRepository;

  QuickPaymentWatcherBloc(this._paymentRepository) : super(const QuickPaymentWatcherState.initial());
  StreamSubscription subscriptionSent;

  @override
  Stream<QuickPaymentWatcherState> mapEventToState(
      QuickPaymentWatcherEvent gEvent) async* {
    yield* gEvent.map(
      watchAll: (e) async* {
        yield const QuickPaymentWatcherState.loadInProgress();
        subscriptionSent?.cancel();

        subscriptionSent = _paymentRepository.watchAll().listen(
            (Either<QuickPaymentFailure, KtList<QuickPayment>> failureOrPayment) => add(
                QuickPaymentWatcherEvent.listCompleted(
                    failureOrQuickPayment: failureOrPayment)));
      },
      listCompleted: (e) async* {
        yield e.failureOrQuickPayment.fold(
            (QuickPaymentFailure l) =>
                QuickPaymentWatcherState.loadFailure(failure: l),
            (KtList<QuickPayment> r) =>
                QuickPaymentWatcherState.loadSuccess(quickPayment: r));
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
