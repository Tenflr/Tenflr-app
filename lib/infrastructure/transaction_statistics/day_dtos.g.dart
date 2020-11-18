// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayDto _$_$_DayDtoFromJson(Map<String, dynamic> json) {
  return _$_DayDto(
    index: json['index'] as int,
    expenditure: (json['expenditure'] as num)?.toDouble(),
    income: (json['income'] as num)?.toDouble(),
    todayDate: json['todayDate'] == null
        ? null
        : DateTime.parse(json['todayDate'] as String),
  );
}

Map<String, dynamic> _$_$_DayDtoToJson(_$_DayDto instance) => <String, dynamic>{
      'index': instance.index,
      'expenditure': instance.expenditure,
      'income': instance.income,
      'todayDate': instance.todayDate?.toIso8601String(),
    };
