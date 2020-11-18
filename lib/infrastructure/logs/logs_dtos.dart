import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/domain/logs/logs.dart';
import 'package:tenflrpay/domain/transaction_statistics/day.dart';
import 'package:tenflrpay/infrastructure/core/server_time_stamp_converter.dart';
import 'package:tenflrpay/infrastructure/transaction_statistics/day_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'logs_dtos.freezed.dart';
part 'logs_dtos.g.dart';

@immutable
@freezed
abstract class LogsDto implements _$LogsDto {
  const LogsDto._();

  const factory LogsDto({
    @required double amount,
    @required String payer,
    @required String receiver,
    @required String type,
    @required String operation,
    @required @ServerTimestampConverter() FieldValue createdAt,
  }) = _LogsDto;

  factory LogsDto.fromDomain(Logs log) => LogsDto(
        amount: log.amount.getOrCrash(),
        payer: log.payer.getOrCrash(),
        receiver: log.receiver.getOrCrash(),
        type: log.type.getOrCrash(),
        operation: log.operation,
        createdAt: FieldValue.serverTimestamp(),
      );

  Logs toDomain() => Logs(
        amount: MoneyAmount(amount),
        payer: UniqueId.fromUniqueString(payer),
        receiver: UniqueId.fromUniqueString(receiver),
        type: TransactionType(type),
        operation: operation,
        createdAt: DateTime.tryParse(createdAt.toString()),
      );

  factory LogsDto.fromFirestore(DocumentSnapshot doc) {
    return LogsDto.fromJson(doc.data);
  }

  factory LogsDto.fromJson(Map<String, dynamic> json) =>
      _$LogsDtoFromJson(json);

  DayDto generateDayLog(bool isIncome) {
    // get day of the week
    final today = DateTime.now();
    final String todayDate = DateFormat('yyyy-MM-dd').format(today);
    return DayDto(
      index: today.weekday,
      expenditure: isIncome ? amount : amount,
      income: !isIncome  ? amount: amount,
      todayDate: DateTime.tryParse(todayDate),
    );
  }
}
