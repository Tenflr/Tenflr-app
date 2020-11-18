import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tenflrpay/domain/budget/budgets.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/infrastructure/core/server_time_stamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_dtos.freezed.dart';
part 'budget_dtos.g.dart';

@freezed
abstract class BudgetDto implements _$BudgetDto {
  const BudgetDto._();

  const factory BudgetDto({
    @JsonKey(ignore: true) String id,
    @required final double totalAmount,
    @required final double payoutAmount,
    @required final String accountName,
    @required final String payoutMode,
    @required final bool isGift,
    @required final DateTime unlockDate,
    @required final DateTime nextUnlockDate,
    @required final double amountLocked,
    @required final double amountCashed,
    @required final String rDisplayName,
    @required final String receiverId,
    @required final String rPhoneNumber,
    @required final String rPhotoUrl,
    @required final String sDisplayName,
    @required final String senderId,
    @required final String sPhoneNumber,
    @required final String sPhotoUrl,
    @required final String budgetStatus,
     @required final bool isHidden,
    @required final bool isFrozen,
    @required final bool isDeleted,


    // Placeholder value --> converted to Time on server where not has been updated to
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _BudgetDto;

  factory BudgetDto.fromDomain(Budget budget) {
    return BudgetDto(
      totalAmount: budget.totalAmount.getOrCrash(),
      payoutAmount: budget.payoutAmount.getOrCrash(),
      accountName: budget.accountName.getOrCrash(),
      payoutMode: budget.payoutMode.getOrCrash().toString(),
      isGift: budget.isGift,
      unlockDate: budget.unlockDate.getOrCrash(),
      nextUnlockDate: budget.nextUnlockDate.getOrCrash(),
      amountLocked: budget.amountLocked.getOrCrash(),
      amountCashed: budget.amountCashed.getOrCrash(),
      receiverId: budget.receiverId.getOrCrash(),
      senderId: budget.senderId.getOrCrash(),
      rDisplayName: !budget.isGift ? '' : budget.rDisplayName.getOrCrash(),
      rPhoneNumber: !budget.isGift? '': budget.rPhoneNumber.getOrCrash(),
      rPhotoUrl:  budget.rPhotoUrl,
      sDisplayName: budget.sDisplayName.getOrCrash(),
      sPhoneNumber: budget.sPhoneNumber.getOrCrash(),
      sPhotoUrl: budget.sPhotoUrl,
      serverTimeStamp: FieldValue.serverTimestamp(),
      budgetStatus: budget.budgetStatus.getOrCrash(),
      isDeleted: budget.isDeleted,
        isFrozen: budget.isFrozen, isHidden: budget.isHidden,

    );
  }

  Budget toDomain() {
    return Budget(
      id: UniqueId.fromUniqueString(id),
      totalAmount: MoneyAmount(totalAmount),
      payoutAmount: MoneyAmount(payoutAmount),
      accountName: AccountName(accountName),
      payoutMode: PayoutModeObject(payoutMode),
      isGift: isGift,
      unlockDate: ValidDate(unlockDate),
       nextUnlockDate: ValidDate(nextUnlockDate),
      amountLocked: MoneyAmount(amountLocked),
      amountCashed: MoneyAmount(amountCashed),
      budgetStatus: BudgetStatus(budgetStatus),
      rDisplayName: ValidNames(rDisplayName) ,
      receiverId: UniqueId.fromUniqueString(receiverId),
      rPhoneNumber: ValidPhoneNumber(rPhoneNumber),
      rPhotoUrl: rPhotoUrl ,
      sDisplayName:  ValidNames(sDisplayName) ,
      senderId: UniqueId.fromUniqueString(senderId),
      sPhoneNumber: ValidPhoneNumber(sPhoneNumber),
      sPhotoUrl: sPhotoUrl,
      isDeleted: isDeleted,
        isFrozen: isFrozen, isHidden: isHidden,

    );
  }

  factory BudgetDto.fromFirestore(DocumentSnapshot doc) {
    return BudgetDto.fromJson(doc.data).copyWith(id: doc.documentID );
  }

  factory BudgetDto.fromJson(Map<String, dynamic> json) =>
      _$BudgetDtoFromJson(json);
}
