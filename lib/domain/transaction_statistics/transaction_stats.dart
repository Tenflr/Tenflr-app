import 'package:freezed_annotation/freezed_annotation.dart';

import 'day.dart';
part 'transaction_stats.freezed.dart';

@freezed
@immutable
abstract class PaymentStats implements _$PaymentStats {
  const PaymentStats._();
  const factory PaymentStats({
    @required Day monday,
    @required Day tuesday,
    @required Day wednesday,
    @required Day thursday,
    @required Day friday,
    @required Day saturday,
    @required Day sunday,
  }) = _PaymentStats;

  factory PaymentStats.emtpy() {
    final day =  DateTime( DateTime.now().day - 7);
    return PaymentStats(
      monday: Day.newDay(day),
      tuesday: Day.newDay(day.add(const Duration(days: 1))),
      wednesday: Day.newDay(day.add(const Duration(days: 2))),
      thursday: Day.newDay(day.add(const Duration(days: 3))),
      friday: Day.newDay(day.add(const Duration(days: 4))),
      saturday: Day.newDay(day.add(const Duration(days: 5))),
      sunday: Day.newDay(day.add(const Duration(days: 6))),
    );
  }
}
