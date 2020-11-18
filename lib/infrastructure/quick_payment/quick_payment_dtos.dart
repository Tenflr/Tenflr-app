import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/domain/quick_payment/quick_payment.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/infrastructure/core/server_time_stamp_converter.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quick_payment_dtos.freezed.dart';
part 'quick_payment_dtos.g.dart';

@freezed
@immutable
abstract class QuickPaymentDto implements _$QuickPaymentDto {
  const QuickPaymentDto._();

  const factory QuickPaymentDto({
    @JsonKey(ignore: true) final String id,
    @JsonKey(ignore: true) final DateTime date,
    @required final String requesterId,
    @required final bool cashed,
    @required final String payerId,
    @required final double amount,
    @required final bool isHidden,
    @required final bool isDeleted,
    @required final String pTel,
    @required final String rTel,
    // Placeholder value --> converted to Time on server where not has been updated to
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _QuickPaymentDto;

  QuickPayment toDomain() {
    return QuickPayment(
      id: UniqueId.fromUniqueString(id),
      amount: MoneyAmount(amount),
      date: date,
      cashed: cashed,
      pTel: ValidPhoneNumber(pTel),
      rTel: ValidPhoneNumber(rTel),
      isHidden: isHidden,
      isDeleted: isDeleted,
      payerId: UniqueId.fromUniqueString(payerId),
      requesterId: UniqueId.fromUniqueString(requesterId),
    );
  }

  factory QuickPaymentDto.fromDomain(QuickPayment quickPayment) =>
      QuickPaymentDto(
        requesterId: quickPayment.requesterId.getOrCrash(),
        payerId: quickPayment.payerId.getOrCrash(),
        amount: quickPayment.amount.getOrCrash(),
        isHidden: quickPayment.isHidden,
        cashed: quickPayment.cashed,
        isDeleted: quickPayment.isDeleted,
        pTel: quickPayment.pTel.getOrCrash(),
        rTel: quickPayment.rTel.getOrCrash(),
        serverTimeStamp: FieldValue.serverTimestamp(),
      );

  factory QuickPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$QuickPaymentDtoFromJson(json);

  factory QuickPaymentDto.fromFirestore(DocumentSnapshot doc) =>
      QuickPaymentDto.fromJson(doc.data).copyWith(
          id: doc.documentID,
          date: (doc.data['serverTimeStamp'] as Timestamp).toDate());
}
