import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'dart:math';

part 'day.freezed.dart';

@freezed
@immutable
abstract class Day implements _$Day {
  const Day._();
  const factory Day({
    @required ValidUserName day,
    @required int index,
    @required StatsAmount expenditure,
    @required StatsAmount income,
    @required ValidDate todayDate,
  }) = _Day;

  factory Day.newDay(DateTime day) => Day(
        day: ValidUserName(DateFormat('EEEE').format(day)),
        index: day.weekday,
        expenditure: StatsAmount(0),
        income: StatsAmount(0),
        todayDate: ValidDate(day),
      );
}
