// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_reputation_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserReputationDto _$_$_UserReputationDtoFromJson(Map<String, dynamic> json) {
  return _$_UserReputationDto(
    five: json['five'] as int,
    four: json['four'] as int,
    three: json['three'] as int,
    two: json['two'] as int,
    one: json['one'] as int,
    reputation: (json['reputation'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_UserReputationDtoToJson(
        _$_UserReputationDto instance) =>
    <String, dynamic>{
      'five': instance.five,
      'four': instance.four,
      'three': instance.three,
      'two': instance.two,
      'one': instance.one,
      'reputation': instance.reputation,
    };
