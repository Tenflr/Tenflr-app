// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAddressDto _$_$_UserAddressDtoFromJson(Map<String, dynamic> json) {
  return _$_UserAddressDto(
    id: json['id'] as String,
    city: json['city'] as String,
    address: json['address'] as String,
    state: json['state'] as String,
    zipcode: json['zipcode'] as String,
  );
}

Map<String, dynamic> _$_$_UserAddressDtoToJson(_$_UserAddressDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'address': instance.address,
      'state': instance.state,
      'zipcode': instance.zipcode,
    };
