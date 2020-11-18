// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_id_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceIdDto _$_$_DeviceIdDtoFromJson(Map<String, dynamic> json) {
  return _$_DeviceIdDto(
    id: json['id'] as String,
    email: json['email'] as String,
    tel: json['tel'] as String,
    dName: json['dName'] as String,
    dVer: json['dVer'] as String,
    isTelPk: json['isTelPk'] as bool,
  );
}

Map<String, dynamic> _$_$_DeviceIdDtoToJson(_$_DeviceIdDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'tel': instance.tel,
      'dName': instance.dName,
      'dVer': instance.dVer,
      'isTelPk': instance.isTelPk,
    };
