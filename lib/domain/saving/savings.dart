import 'package:tenflrpay/domain/core/constant_list.dart';
import 'package:tenflrpay/domain/core/failures.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'savings.freezed.dart';

@freezed
abstract class Savings implements _$Savings {
  const Savings._();
  const factory Savings({
    @required final UniqueId id,
    @required final MoneyAmount amount,
    @required final AccountName savingsName,
    @required final ValidDuration timeLeft,
    @required final ValidDate withdrawalDate,
    @required final SavingStatus savingStatus,
    @required final bool isHidden,
    @required final bool isFrozen,
    @required final bool isDeleted,
  }) = _Savings;

  factory Savings.empty() => Savings(
        id: UniqueId(),
        amount: MoneyAmount(0),
        savingsName: AccountName(''),
        timeLeft: ValidDuration(const Duration(days: 365 * 3)),
        withdrawalDate: ValidDate(DateTime(DateTime.now().day + 2)),
        savingStatus: SavingStatus(savingStatusList[0]),
        isDeleted: false,
        isFrozen: false,
        isHidden: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    if (timeLeft.getOrCrash().inDays == 0) {
      return some(const ValueFailure.invalidDuration(failedValue: 0));
    }
    return amount.failureOrUnit
        .andThen(savingsName.failureOrUnit)
        .andThen(withdrawalDate.failureOrUnit)
        .andThen(savingStatus.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
