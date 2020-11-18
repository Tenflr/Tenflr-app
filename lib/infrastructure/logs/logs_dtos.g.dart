// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogsDto _$_$_LogsDtoFromJson(Map<String, dynamic> json) {
  return _$_LogsDto(
    amount: (json['amount'] as num)?.toDouble(),
    payer: json['payer'] as String,
    receiver: json['receiver'] as String,
    type: json['type'] as String,
    operation: json['operation'] as String,
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
  );
}

Map<String, dynamic> _$_$_LogsDtoToJson(_$_LogsDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'payer': instance.payer,
      'receiver': instance.receiver,
      'type': instance.type,
      'operation': instance.operation,
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
    };
