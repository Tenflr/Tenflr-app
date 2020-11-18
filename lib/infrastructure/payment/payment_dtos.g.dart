// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentDto _$_$_PaymentDtoFromJson(Map<String, dynamic> json) {
  return _$_PaymentDto(
    payerId: json['payerId'] as String,
    pDisplayNames: json['pDisplayNames'] as String,
    pPhotoUrl: json['pPhotoUrl'] as String,
    pPhoneNumber: json['pPhoneNumber'] as String,
    receiverId: json['receiverId'] as String,
    rDisplayNames: json['rDisplayNames'] as String,
    rPhotoUrl: json['rPhotoUrl'] as String,
    rPhoneNumber: json['rPhoneNumber'] as String,
    cashed: json['cashed'] as bool,
    paymentStatus: json['paymentStatus'] as String,
    amount: (json['amount'] as num)?.toDouble(),
    unlockDate: json['unlockDate'] == null
        ? null
        : DateTime.parse(json['unlockDate'] as String),
    isHidden: json['isHidden'] as bool,
    isFrozen: json['isFrozen'] as bool,
    isDeleted: json['isDeleted'] as bool,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_PaymentDtoToJson(_$_PaymentDto instance) =>
    <String, dynamic>{
      'payerId': instance.payerId,
      'pDisplayNames': instance.pDisplayNames,
      'pPhotoUrl': instance.pPhotoUrl,
      'pPhoneNumber': instance.pPhoneNumber,
      'receiverId': instance.receiverId,
      'rDisplayNames': instance.rDisplayNames,
      'rPhotoUrl': instance.rPhotoUrl,
      'rPhoneNumber': instance.rPhoneNumber,
      'cashed': instance.cashed,
      'paymentStatus': instance.paymentStatus,
      'amount': instance.amount,
      'unlockDate': instance.unlockDate?.toIso8601String(),
      'isHidden': instance.isHidden,
      'isFrozen': instance.isFrozen,
      'isDeleted': instance.isDeleted,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
