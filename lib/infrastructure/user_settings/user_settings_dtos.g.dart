// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSettingsDto _$_$_UserSettingsDtoFromJson(Map<String, dynamic> json) {
  return _$_UserSettingsDto(
    addr: json['addr'] as Map<String, dynamic>,
    dLang: json['dLang'] as String,
    sfu: json['sfu'] as bool,
    twoFA: json['twoFA'] as bool,
    pin: json['pin'] as String,
    secQues: json['secQues'] as Map<String, dynamic>,
    dOB: json['dOB'] == null ? null : DateTime.parse(json['dOB'] as String),
    rep: json['rep'] as Map<String, dynamic>,
    subMode: json['subMode'] as String,
    lApp: json['lApp'] as bool,
  );
}

Map<String, dynamic> _$_$_UserSettingsDtoToJson(_$_UserSettingsDto instance) =>
    <String, dynamic>{
      'addr': instance.addr,
      'dLang': instance.dLang,
      'sfu': instance.sfu,
      'twoFA': instance.twoFA,
      'pin': instance.pin,
      'secQues': instance.secQues,
      'dOB': instance.dOB?.toIso8601String(),
      'rep': instance.rep,
      'subMode': instance.subMode,
      'lApp': instance.lApp,
    };
