// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_payment_token_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuickPaymentTokenDto _$_$_QuickPaymentTokenDtoFromJson(
    Map<String, dynamic> json) {
  return _$_QuickPaymentTokenDto(
    requesterId: json['requesterId'] as String,
    tokenValidUntil: json['tokenValidUntil'] == null
        ? null
        : DateTime.parse(json['tokenValidUntil'] as String),
    requesterName: json['requesterName'] as String,
    requesterNumber: json['requesterNumber'] as String,
    requesterPhotoUrl: json['requesterPhotoUrl'] as String,
    amount: (json['amount'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_QuickPaymentTokenDtoToJson(
        _$_QuickPaymentTokenDto instance) =>
    <String, dynamic>{
      'requesterId': instance.requesterId,
      'tokenValidUntil': instance.tokenValidUntil?.toIso8601String(),
      'requesterName': instance.requesterName,
      'requesterNumber': instance.requesterNumber,
      'requesterPhotoUrl': instance.requesterPhotoUrl,
      'amount': instance.amount,
    };
