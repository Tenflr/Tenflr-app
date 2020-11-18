// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_stats_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionStatsDto _$_$_TransactionStatsDtoFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionStatsDto(
    monday: json['monday'] == null
        ? null
        : DayDto.fromJson(json['monday'] as Map<String, dynamic>),
    tuesday: json['tuesday'] == null
        ? null
        : DayDto.fromJson(json['tuesday'] as Map<String, dynamic>),
    wednesday: json['wednesday'] == null
        ? null
        : DayDto.fromJson(json['wednesday'] as Map<String, dynamic>),
    thursday: json['thursday'] == null
        ? null
        : DayDto.fromJson(json['thursday'] as Map<String, dynamic>),
    friday: json['friday'] == null
        ? null
        : DayDto.fromJson(json['friday'] as Map<String, dynamic>),
    saturday: json['saturday'] == null
        ? null
        : DayDto.fromJson(json['saturday'] as Map<String, dynamic>),
    sunday: json['sunday'] == null
        ? null
        : DayDto.fromJson(json['sunday'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TransactionStatsDtoToJson(
        _$_TransactionStatsDto instance) =>
    <String, dynamic>{
      'monday': instance.monday?.toJson(),
      'tuesday': instance.tuesday?.toJson(),
      'wednesday': instance.wednesday?.toJson(),
      'thursday': instance.thursday?.toJson(),
      'friday': instance.friday?.toJson(),
      'saturday': instance.saturday?.toJson(),
      'sunday': instance.sunday?.toJson(),
    };
