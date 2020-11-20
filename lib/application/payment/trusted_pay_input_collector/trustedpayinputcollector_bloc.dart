import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/domain/core/constant_list.dart';
import 'package:tenflrpay/domain/logs/logs.dart';
import 'package:tenflrpay/domain/payment/i_payment_repository.dart';
import 'package:tenflrpay/domain/payment/payment.dart';
import 'package:tenflrpay/domain/payment/payment_failure.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

part 'trustedpayinputcollector_event.dart';
part 'trustedpayinputcollector_state.dart';
part 'trustedpayinputcollector_bloc.freezed.dart';

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
                ? PaymentStatus(paymentStatusList[5])
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
            paymentStatus: PaymentStatus(paymentStatusList[4]),
          ),
          showErrorMessage: false,
          saveFailureOrSuccessOption: none(),
        );
      },
      creditTrustedPay: (e) async* {
        final Logs log = _generateLogs(state.payment);
        yield state.copyWith(
          isSaving: true,
        );
        final Either<PaymentFailure, Unit> failureOrPayment =
            await _paymentRepo.creditTrustedPay(state.payment, log);
        yield state.copyWith(
          isSaving: false,
          showErrorMessage: false,
          saveFailureOrSuccessOption: optionOf(failureOrPayment),
        );
      },
      submitted: (e) async* {
        final Logs log = _generateLogs(state.payment);
        yield state.copyWith(
          showErrorMessage: true,
          saveFailureOrSuccessOption: none(),
        );
        Either<PaymentFailure, Unit> failureOrPayment;
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

Logs _generateLogs(Payment payment) {
  return Logs(
    amount: payment.amount,
    payer: payment.payerId,
    receiver: payment.receiverId,
    type: TransactionType(transactionTypeList[1]),
    operation: '-',
    createdAt: DateTime.now(),
  );
}
