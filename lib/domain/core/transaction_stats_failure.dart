import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_stats_failure.freezed.dart';

@freezed
@immutable
abstract class PaymentStatsFailure with _$PaymentStatsFailure {
  const factory PaymentStatsFailure.noTransactionYet() = _NoTransactionYet;
}
