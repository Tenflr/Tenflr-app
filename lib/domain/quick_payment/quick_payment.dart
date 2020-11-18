import 'package:tenflrpay/domain/core/failures.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'quick_payment.freezed.dart';

@immutable
@freezed
abstract class QuickPayment implements _$QuickPayment {
  const QuickPayment._();
  const factory QuickPayment({
    @required final UniqueId id,
    @required final UniqueId requesterId,
    @required final UniqueId payerId,
    @required final MoneyAmount amount,
    @required final ValidPhoneNumber pTel,
    @required final ValidPhoneNumber rTel,
    @required final DateTime date,
    @required final bool cashed,
    @required final bool isHidden,
    @required final bool isDeleted,
  }) = _QuickPayment;

  factory QuickPayment.empty() {
    return QuickPayment(
      id: UniqueId(),
      amount: MoneyAmount(0),
      pTel: ValidPhoneNumber(''),
      rTel: ValidPhoneNumber(''),
      isDeleted: false,
      date: DateTime.now(),
      cashed: false,
      isHidden: false,
      payerId: UniqueId(),
      requesterId: UniqueId(),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return amount.failureOrUnit
        .andThen(pTel.failureOrUnit)
        .andThen(rTel.failureOrUnit)
        .fold((l) => some(l), (a) => none());
  }
}
