import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/domain/transaction_statistics/day.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_dtos.freezed.dart';
part 'day_dtos.g.dart';

@freezed
@immutable
abstract class DayDto implements _$DayDto {
  const DayDto._();
  const factory DayDto({
    @JsonKey(ignore: true) String day,
    @required int index,
    @required double expenditure,
    @required double income,
    @required DateTime todayDate,
  }) = _DayDto;

  factory DayDto.fromDomain(Day d) {
    return DayDto(
      index: d.index,
      expenditure: d.expenditure.getOrCrash(),
      income: d.income.getOrCrash(),
      todayDate: d.todayDate.getOrCrash(),
    );
  }

  Day toDomain() {
    return Day(
      day: ValidUserName(day),
      index: index,
      expenditure: StatsAmount(expenditure),
      income: StatsAmount(income),
      todayDate: ValidDate(todayDate),
    );
  }

  factory DayDto.fromFirestore(DocumentSnapshot doc) {
    return DayDto.fromJson(doc.data).copyWith(day: doc.documentID);
  }

  factory DayDto.fromJson(Map<String, dynamic> json) => _$DayDtoFromJson(json);
}
