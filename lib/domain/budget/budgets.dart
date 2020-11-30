import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/constant_list.dart';
import '../core/failures.dart';
import '../core/valid_objects.dart';
import '../core/value_object.dart';

part 'budgets.freezed.dart';

@freezed
abstract class Budget implements _$Budget {
  const Budget._();
  const factory Budget({
    @required UniqueId id,
    @required UniqueId senderId,
    @required ValidNames sDisplayName,
    @required String sPhotoUrl,
    @required ValidPhoneNumber sPhoneNumber,
    @required UniqueId receiverId,
    @required ValidNames rDisplayName,
    @required String rPhotoUrl,
    @required ValidPhoneNumber rPhoneNumber,
    @required final MoneyAmount totalAmount,
    @required final MoneyAmount payoutAmount,
    @required final AccountName accountName,
    @required final PayoutModeObject payoutMode,
    @required final bool isGift,
    @required final ValidDate unlockDate,
    @required final MoneyAmount amountLocked,
    @required final MoneyAmount amountCashed,
    @required final BudgetStatus budgetStatus,
    @required final ValidDate nextUnlockDate,
     @required final bool isHidden,
    @required final bool isFrozen,
    @required final bool isDeleted,

  }) = _Budget;

  factory Budget.empty() => Budget(
        id: UniqueId(),
        totalAmount: MoneyAmount(0),
        payoutAmount: MoneyAmount(0),
        accountName: AccountName(''),
        payoutMode: PayoutModeObject(kPayoutMode.day.val),
        isGift: false,
        unlockDate: ValidDate(DateTime(DateTime.now().year, DateTime.now().month + 1, DateTime.now().day)),
        nextUnlockDate: ValidDate(DateTime(DateTime.now().year, DateTime.now().month + 1, DateTime.now().day)),
        amountLocked: MoneyAmount(0),
        amountCashed: MoneyAmount(0),
        budgetStatus: BudgetStatus(kBudgetStatus.active.val),
        rDisplayName: ValidNames(''),
        receiverId: UniqueId(),
        rPhoneNumber: ValidPhoneNumber(''),
        rPhotoUrl: '',
        sDisplayName: ValidNames(''),
        senderId: UniqueId(),
        sPhoneNumber: ValidPhoneNumber(''),
        sPhotoUrl: '',isDeleted: false,
        isFrozen: false, isHidden: false, 
        
        
      );

  Option<ValueFailure<dynamic>> get failureOption {
    if (isGift) {
      return totalAmount.failureOrUnit
          .andThen(payoutAmount.failureOrUnit)
          .andThen(accountName.failureOrUnit)
          .andThen(payoutMode.failureOrUnit)
          .andThen(unlockDate.failureOrUnit)
          .andThen(amountLocked.failureOrUnit)
          .andThen(rPhoneNumber.failureOrUnit)
          .andThen(rDisplayName.failureOrUnit)
          .andThen(sDisplayName.failureOrUnit)
          .andThen(sPhoneNumber.failureOrUnit)
          .andThen(budgetStatus.failureOrUnit)
          .fold((l) => some(l), (r) => none());
    }
    return totalAmount.failureOrUnit
        .andThen(payoutAmount.failureOrUnit)
        .andThen(accountName.failureOrUnit)
        .andThen(payoutMode.failureOrUnit)
        .andThen(unlockDate.failureOrUnit)
        .andThen(amountLocked.failureOrUnit)
        .andThen(amountCashed.failureOrUnit)
        .andThen(sDisplayName.failureOrUnit)
        .andThen(sPhoneNumber.failureOrUnit)
        .andThen(budgetStatus.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
