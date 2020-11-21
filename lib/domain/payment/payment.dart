import '../core/constant_list.dart';
import '../core/failures.dart';
import '../core/valid_objects.dart';
import '../core/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'payment.freezed.dart';

@freezed
abstract class Payment implements _$Payment {
  const Payment._();
  const factory Payment({
    @required final UniqueId id,
    @required final UniqueId payerId,
    @required final ValidNames pDisplayNames,
    @required final ValidPhoneNumber pPhoneNumber,
    @required final String pPhotoUrl,
    @required final UniqueId receiverId,
    @required final ValidNames rDisplayName,
    @required final ValidPhoneNumber rPhoneNumber,
    @required final String rPhotoUrl,
    @required final bool cashed,
    @required final PaymentStatus paymentStatus,
    @required final MoneyAmount amount,
    @required final ValidDate unlockDate,
    @required final bool isHidden,
    @required final bool isFrozen,
    @required final bool isDeleted,
  }) = _Payment;

  factory Payment.empty() => Payment(
        id: UniqueId(),
        receiverId: UniqueId(),
        payerId: UniqueId(),
        paymentStatus: PaymentStatus(paymentStatusList[0]),
        amount: MoneyAmount(10000),
        unlockDate: ValidDate(DateTime.now()),
        cashed: false,
        pDisplayNames: ValidNames(''),
        pPhoneNumber: ValidPhoneNumber(''),
        pPhotoUrl: '',
        rDisplayName: ValidNames(''),
        rPhotoUrl: '',
        rPhoneNumber: ValidPhoneNumber(''), isDeleted: false,
        isFrozen: false, isHidden: false,

      );

  Option<ValueFailure<dynamic>> get failureOption {
    return paymentStatus.failureOrUnit
        .andThen(unlockDate.failureOrUnit)
        .andThen(amount.failureOrUnit)
        .andThen(pPhoneNumber.failureOrUnit)
        .andThen(pDisplayNames.failureOrUnit)
        .andThen(rPhoneNumber.failureOrUnit)
        .andThen(rDisplayName.failureOrUnit)
        .fold((l) => some(l), (a) => none());
  }
}
