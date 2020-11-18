// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savings_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavingsDto _$_$_SavingsDtoFromJson(Map<String, dynamic> json) {
  return _$_SavingsDto(
    amount: (json['amount'] as num)?.toDouble(),
    savingsName: json['savingsName'] as String,
    withdrawalDate: json['withdrawalDate'] == null
        ? null
        : DateTime.parse(json['withdrawalDate'] as String),
    savingStatus: json['savingStatus'] as String,
    isHidden: json['isHidden'] as bool,
    isFrozen: json['isFrozen'] as bool,
    isDeleted: json['isDeleted'] as bool,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_SavingsDtoToJson(_$_SavingsDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'savingsName': instance.savingsName,
      'withdrawalDate': instance.withdrawalDate?.toIso8601String(),
      'savingStatus': instance.savingStatus,
      'isHidden': instance.isHidden,
      'isFrozen': instance.isFrozen,
      'isDeleted': instance.isDeleted,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
