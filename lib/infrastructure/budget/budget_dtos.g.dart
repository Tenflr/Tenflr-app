// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BudgetDto _$_$_BudgetDtoFromJson(Map<String, dynamic> json) {
  return _$_BudgetDto(
    totalAmount: (json['totalAmount'] as num)?.toDouble(),
    payoutAmount: (json['payoutAmount'] as num)?.toDouble(),
    accountName: json['accountName'] as String,
    payoutMode: json['payoutMode'] as String,
    isGift: json['isGift'] as bool,
    unlockDate: json['unlockDate'] == null
        ? null
        : DateTime.parse(json['unlockDate'] as String),
    nextUnlockDate: json['nextUnlockDate'] == null
        ? null
        : DateTime.parse(json['nextUnlockDate'] as String),
    amountLocked: (json['amountLocked'] as num)?.toDouble(),
    amountCashed: (json['amountCashed'] as num)?.toDouble(),
    rDisplayName: json['rDisplayName'] as String,
    receiverId: json['receiverId'] as String,
    rPhoneNumber: json['rPhoneNumber'] as String,
    rPhotoUrl: json['rPhotoUrl'] as String,
    sDisplayName: json['sDisplayName'] as String,
    senderId: json['senderId'] as String,
    sPhoneNumber: json['sPhoneNumber'] as String,
    sPhotoUrl: json['sPhotoUrl'] as String,
    budgetStatus: json['budgetStatus'] as String,
    isHidden: json['isHidden'] as bool,
    isFrozen: json['isFrozen'] as bool,
    isDeleted: json['isDeleted'] as bool,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_BudgetDtoToJson(_$_BudgetDto instance) =>
    <String, dynamic>{
      'totalAmount': instance.totalAmount,
      'payoutAmount': instance.payoutAmount,
      'accountName': instance.accountName,
      'payoutMode': instance.payoutMode,
      'isGift': instance.isGift,
      'unlockDate': instance.unlockDate?.toIso8601String(),
      'nextUnlockDate': instance.nextUnlockDate?.toIso8601String(),
      'amountLocked': instance.amountLocked,
      'amountCashed': instance.amountCashed,
      'rDisplayName': instance.rDisplayName,
      'receiverId': instance.receiverId,
      'rPhoneNumber': instance.rPhoneNumber,
      'rPhotoUrl': instance.rPhotoUrl,
      'sDisplayName': instance.sDisplayName,
      'senderId': instance.senderId,
      'sPhoneNumber': instance.sPhoneNumber,
      'sPhotoUrl': instance.sPhotoUrl,
      'budgetStatus': instance.budgetStatus,
      'isHidden': instance.isHidden,
      'isFrozen': instance.isFrozen,
      'isDeleted': instance.isDeleted,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
