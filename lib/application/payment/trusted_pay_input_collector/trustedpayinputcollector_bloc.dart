import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/constant_list.dart';
import '../../../domain/core/valid_objects.dart';
import '../../../domain/core/value_object.dart';
import '../../../domain/logs/logs.dart';
import '../../../domain/payment/i_payment_repository.dart';
import '../../../domain/payment/payment.dart';
import '../../../domain/payment/payment_failure.dart';
import '../../../domain/user/user.dart';

part 'trustedpayinputcollector_bloc.freezed.dart';
part 'trustedpayinputcollector_event.dart';
part 'trustedpayinputcollector_state.dart';

enum tranOperation { withdraw, credit }
enum transferType { mtn, orange }

@injectable
class TrustedPayInputCollectorBloc
    extends Bloc<TrustedPayInputCollectorEvent, TrustedPayInputCollectorState> {
  final IPaymentRepository _paymentRepo;

  TrustedPayInputCollectorBloc(this._paymentRepo)
      : super(TrustedPayInputCollectorState.empty());

  @override
  Stream<TrustedPayInputCollectorState> mapEventToState(
    TrustedPayInputCollectorEvent event,
  ) async* {
    yield* event.map(
      creditTenflrPayWithMTN: (e) async* {
        final Logs log = _generateLogs(state.payment, tranOperation.credit);
        yield state.copyWith(
          isSaving: true,
        );
        final Either<PaymentFailure, bool> failureOrPayment =
            await _paymentRepo.creditTenflrWithMTN(state.payment, log);
        yield state.copyWith(
          isSaving: false,
          showErrorMessage: false,
          saveFailureOrSuccessOption: optionOf(failureOrPayment),
        );
      },
      creditTenflrPayWithOrange: (e) async* {
        final Logs log = _generateLogs(state.payment, tranOperation.credit);
        yield state.copyWith(
          isSaving: true,
        );
        final Either<PaymentFailure, bool> failureOrPayment =
            await _paymentRepo.creditTenflrWithOrange(state.payment, log);
        yield state.copyWith(
          isSaving: false,
          showErrorMessage: false,
          saveFailureOrSuccessOption: optionOf(failureOrPayment),
        );
      },
      withdrawTenflrPayToOrange: (e) async* {},
      withdrawTenflrPayToMTN: (e) async* {
        yield state.copyWith(
          isSaving: true,
        );
        final bool transfer = e.phoneNumber == null ? false : true;
        final Logs log = transfer
            ? _generateTransferLogs(
                state.payment, transferType.mtn, e.phoneNumber)
            : _generateLogs(state.payment, tranOperation.withdraw);

        final Either<PaymentFailure, bool> failureOrPayment = await _paymentRepo
            .withdrawTenflrToMTN(state.payment, log, transfer: transfer);
        yield state.copyWith(
          isSaving: false,
          showErrorMessage: false,
          saveFailureOrSuccessOption: optionOf(failureOrPayment),
        );
      },
      amountChanged: (e) async* {
        yield state.copyWith(
          payment: state.payment.copyWith(
            amount: e.amount,
          ),
          showErrorMessage: false,
          saveFailureOrSuccessOption: none(),
        );
      },
      searchUser: (e) async* {
        final Either<PaymentFailure, User> failureOrUserfound =
            await _paymentRepo.searchUser(e.userQuery);

        yield failureOrUserfound.fold(
            (failure) => state.copyWith(
                  saveFailureOrSuccessOption: none(),
                  showErrorMessage: true,
                  userFound: false,
                  payment: state.payment.copyWith(
                    receiverId: UniqueId(),
                    rPhotoUrl: '',
                    rDisplayName: ValidNames(''),
                    rPhoneNumber: ValidPhoneNumber(''),
                  ),
                ),
            (receiver) => state.copyWith(
                  saveFailureOrSuccessOption: none(),
                  showErrorMessage: false,
                  payment: state.payment.copyWith(
                    receiverId: receiver.id,
                    rPhotoUrl: receiver.photoUrl,
                    rDisplayName: receiver.displayName,
                    rPhoneNumber: receiver.phoneNumber,
                  ),
                  userFound: true,
                ));
      },
      receiverChanged: (e) async* {
        yield state.copyWith(
          payment: state.payment.copyWith(
            receiverId: e.reciever.id,
            rDisplayName: e.reciever.displayName,
            rPhoneNumber: e.reciever.phoneNumber,
            rPhotoUrl: e.reciever.photoUrl,
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      unlockDateChanged: (e) async* {
        yield state.copyWith(
          payment: state.payment.copyWith(
            unlockDate: e.unlockDate,
            paymentStatus: e.unlockDate
                        .getOrCrash()
                        .difference(DateTime.now())
                        .inSeconds <=
                    0
                ? PaymentStatus(kPaymentStatus.cashed.val)
                : state.payment.paymentStatus,
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      receiverSerchTermChanged: (e) async* {
        if (e.searchTerm.isEmpty) {
          yield state.copyWith(
            payment: state.payment.copyWith(
              receiverId: UniqueId(),
              rDisplayName: ValidNames(''),
              rPhoneNumber: ValidPhoneNumber(''),
              rPhotoUrl: '',
            ),
            saveFailureOrSuccessOption: none(),
          );
        }
      },
      initialized: (e) async* {
        yield state.copyWith(
          payment: state.payment.copyWith(
            payerId: e.payer.id,
            pDisplayNames: e.payer.displayName,
            pPhoneNumber: e.payer.phoneNumber,
            pPhotoUrl: e.payer.photoUrl,
            amount: MoneyAmount(10000),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      amountToCreditChanged: (e) async* {
        yield state.copyWith(
          payment: state.payment.copyWith(
            amount: e.amount,
            paymentStatus: PaymentStatus(kPaymentStatus.credit.val),
          ),
          showErrorMessage: false,
          saveFailureOrSuccessOption: none(),
        );
      },
      submitted: (e) async* {
        final Logs log = _generateLogs(state.payment, tranOperation.credit);
        yield state.copyWith(
          showErrorMessage: true,
          saveFailureOrSuccessOption: none(),
        );
        Either<PaymentFailure, bool> failureOrPayment;
        if (state.payment.rPhoneNumber.isValid()) {
          yield state.copyWith(
            isSaving: true,
          );
//
          failureOrPayment = await _paymentRepo.sendPayment(state.payment, log);
          yield state.copyWith(
            isSaving: false,
            showErrorMessage: false,
            saveFailureOrSuccessOption: optionOf(failureOrPayment),
          );
        }
      },
    );
  }
}

Logs _generateLogs(Payment payment, tranOperation operation) {
  return Logs(
    amount: payment.amount,
    payer: payment.payerId,
    receiver: payment.receiverId,
    type: TransactionType(kTransactionType.tp.val),
    operation: operation == tranOperation.credit ? '-' : '+',
    createdAt: DateTime.now(),
  );
}

Logs _generateTransferLogs(
    Payment payment, transferType operation, ValidPhoneNumber receiver) {
  return Logs(
    amount: payment.amount,
    payer: UniqueId.fromUniqueString(payment.pPhoneNumber.getOrCrash()),
    receiver: UniqueId.fromUniqueString(receiver.getOrCrash()),
    type: TransactionType(kTransactionType.mt.val),
    operation: operation.toString(),
    createdAt: DateTime.now(),
  );
}
