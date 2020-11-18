// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    id: json['id'] as String,
    isNewUser: json['isNewUser'] as bool,
    photoUrl: json['photoUrl'] as String,
    displayName: json['displayName'] as String,
    email: json['email'] as String,
    providerId: json['providerId'] as String,
    phoneNumber: json['phoneNumber'] as String,
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isNewUser': instance.isNewUser,
      'photoUrl': instance.photoUrl,
      'displayName': instance.displayName,
      'email': instance.email,
      'providerId': instance.providerId,
      'phoneNumber': instance.phoneNumber,
    };
