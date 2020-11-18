import 'package:tenflrpay/domain/core/constant_list.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/domain/transaction_statistics/day.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logs.freezed.dart';

@freezed
@immutable
abstract class Logs implements _$Logs {
  const Logs._();
  const factory Logs(
      {@required MoneyAmount amount,
      @required UniqueId payer,
      @required UniqueId receiver,
      @required TransactionType type,
      @required String operation,
      @required DateTime createdAt,
      }) = _Logs;

  factory Logs.empty() {
    final today = DateTime.now();
    return Logs(
      amount: MoneyAmount(0),
      type: TransactionType(transactionTypeList[0]),
      operation: '',
      createdAt: today,
      payer: UniqueId(),
      receiver: UniqueId(),
    );
  }
}
