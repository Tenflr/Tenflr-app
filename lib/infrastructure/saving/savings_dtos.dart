import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/valid_objects.dart';
import '../../domain/core/value_object.dart';
import '../../domain/saving/savings.dart';
import '../core/server_time_stamp_converter.dart';

part 'savings_dtos.freezed.dart';
part 'savings_dtos.g.dart';

@freezed
abstract class SavingsDto implements _$SavingsDto {
  const SavingsDto._();
  const factory SavingsDto({
    @JsonKey(ignore: true) String id,
    @JsonKey(ignore: true) Duration timeLeft,
    @required final double amount,
    @required final String savingsName,
    @required final DateTime withdrawalDate,
    @required final String savingStatus,
    @required final bool isHidden,
    @required final bool isFrozen,
    @required final bool isDeleted,

    // Placeholder value --> converted to Time on server where not has been updated to
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _SavingsDto;

  factory SavingsDto.fromDomain(Savings s) {
    return SavingsDto(
      amount: s.amount.getOrCrash(),
      savingsName: s.savingsName.getOrCrash(),
      // timeLeft: s.timeLeft.getOrCrash(),
      withdrawalDate: s.withdrawalDate.getOrCrash(),
      savingStatus: s.savingStatus.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
      isDeleted: s.isDeleted,
      isFrozen: s.isFrozen, isHidden: s.isHidden,
    );
  }

  Savings toDomain() {
    final Duration _timeLeft = Duration(
        seconds: (withdrawalDate.difference(DateTime.now())).inSeconds);
    return Savings(
      id: UniqueId.fromUniqueString(id),
      amount: MoneyAmount(amount),
      savingsName: AccountName(savingsName),
      timeLeft: ValidDuration(_timeLeft),
      withdrawalDate: ValidDate(withdrawalDate),
      savingStatus: SavingStatus(savingStatus),
      isDeleted: isDeleted,
      isFrozen: isFrozen,
      isHidden: isHidden,
    );
  }

  factory SavingsDto.fromFirestore(DocumentSnapshot doc) {
    return SavingsDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }

  factory SavingsDto.fromJson(Map<String, dynamic> json) =>
      _$SavingsDtoFromJson(json);
}
