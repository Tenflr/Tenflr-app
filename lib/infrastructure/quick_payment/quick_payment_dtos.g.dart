// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_payment_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuickPaymentDto _$_$_QuickPaymentDtoFromJson(Map<String, dynamic> json) {
  return _$_QuickPaymentDto(
    requesterId: json['requesterId'] as String,
    cashed: json['cashed'] as bool,
    payerId: json['payerId'] as String,
    amount: (json['amount'] as num)?.toDouble(),
    isHidden: json['isHidden'] as bool,
    isDeleted: json['isDeleted'] as bool,
    pTel: json['pTel'] as String,
    rTel: json['rTel'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_QuickPaymentDtoToJson(_$_QuickPaymentDto instance) =>
    <String, dynamic>{
      'requesterId': instance.requesterId,
      'cashed': instance.cashed,
      'payerId': instance.payerId,
      'amount': instance.amount,
      'isHidden': instance.isHidden,
      'isDeleted': instance.isDeleted,
      'pTel': instance.pTel,
      'rTel': instance.rTel,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
