import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/domain/payment/payment.dart';
import 'package:tenflrpay/infrastructure/core/server_time_stamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_dtos.g.dart';
part 'payment_dtos.freezed.dart';

@freezed
abstract class PaymentDto implements _$PaymentDto {
  const PaymentDto._();
  const factory PaymentDto({
    @JsonKey(ignore: true) String id,
    @required final String payerId,
    @required final String pDisplayNames,
    @required final String pPhotoUrl,
    @required final String pPhoneNumber,
    @required final String receiverId,
    @required final String rDisplayNames,
    @required final String rPhotoUrl,
    @required final String rPhoneNumber,
    @required final bool cashed,
    @required final String paymentStatus,
    @required final double amount,
    @required final DateTime unlockDate,
    @required final bool isHidden,
    @required final bool isFrozen,
    @required final bool isDeleted,

    // Placeholder value --> converted to Time on server where not has been updated to
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _PaymentDto;

  Payment toDomain() {
    return Payment(
      id: UniqueId.fromUniqueString(id),
      paymentStatus: PaymentStatus(paymentStatus),
      amount: MoneyAmount(amount),
      unlockDate: ValidDate(unlockDate),
      payerId: UniqueId.fromUniqueString(payerId),
      receiverId: UniqueId.fromUniqueString(receiverId),
      cashed: cashed,
      pDisplayNames: ValidNames(pDisplayNames),
      pPhoneNumber: ValidPhoneNumber(pPhoneNumber),
      pPhotoUrl: pPhotoUrl,
      rDisplayName: ValidNames(rDisplayNames),
      rPhoneNumber: ValidPhoneNumber(rPhoneNumber),
      rPhotoUrl: rPhotoUrl,
       isDeleted: isDeleted,
      isFrozen: isFrozen,
      isHidden: isHidden,
      
    );
  }

  factory PaymentDto.fromDomain(Payment p) {
    return PaymentDto(
      paymentStatus: p.paymentStatus.getOrCrash(),
      amount: p.amount.getOrCrash(),
      unlockDate: p.unlockDate.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
      payerId: p.payerId.getOrCrash(),
      receiverId: p.receiverId.getOrCrash(),
      cashed: p.cashed,
      pDisplayNames: p.pDisplayNames.getOrCrash(),
      pPhoneNumber: p.pPhoneNumber.getOrCrash(),
      pPhotoUrl: p.pPhotoUrl,
      rDisplayNames: p.rDisplayName.getOrCrash(),
      rPhoneNumber: p.rPhoneNumber.getOrCrash(),
      rPhotoUrl: p.rPhotoUrl,
      isDeleted: p.isDeleted,
      isFrozen: p.isFrozen,
      isHidden: p.isHidden,
    );
  }

  factory PaymentDto.fromFirestore(DocumentSnapshot paymentDoc) {
    return PaymentDto.fromJson(paymentDoc.data)
        .copyWith(id: paymentDoc.documentID);
  }
  factory PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDtoFromJson(json);
}
