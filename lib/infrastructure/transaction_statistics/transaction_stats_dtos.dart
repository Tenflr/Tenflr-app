import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tenflrpay/infrastructure/transaction_statistics/day_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'transaction_stats_dtos.freezed.dart';
part 'transaction_stats_dtos.g.dart';

@freezed
@immutable
abstract class TransactionStatsDto implements _$TransactionStatsDto {
  const TransactionStatsDto._();
  const factory TransactionStatsDto({
    @required DayDto monday,
    @required DayDto tuesday,
    @required DayDto wednesday,
    @required DayDto thursday,
    @required DayDto friday,
    @required DayDto saturday,
    @required DayDto sunday,
  }) = _TransactionStatsDto;

  

  factory TransactionStatsDto.fromFirestore(DocumentSnapshot doc) {
    return TransactionStatsDto.fromJson(doc.data);
  }

  factory TransactionStatsDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatsDtoFromJson(json);
}
