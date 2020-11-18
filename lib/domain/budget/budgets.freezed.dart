// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'budgets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BudgetTearOff {
  const _$BudgetTearOff();

// ignore: unused_element
  _Budget call(
      {@required UniqueId id,
      @required UniqueId senderId,
      @required ValidNames sDisplayName,
      @required String sPhotoUrl,
      @required ValidPhoneNumber sPhoneNumber,
      @required UniqueId receiverId,
      @required ValidNames rDisplayName,
      @required String rPhotoUrl,
      @required ValidPhoneNumber rPhoneNumber,
      @required MoneyAmount totalAmount,
      @required MoneyAmount payoutAmount,
      @required AccountName accountName,
      @required PayoutModeObject payoutMode,
      @required bool isGift,
      @required ValidDate unlockDate,
      @required MoneyAmount amountLocked,
      @required MoneyAmount amountCashed,
      @required BudgetStatus budgetStatus,
      @required ValidDate nextUnlockDate,
      @required bool isHidden,
      @required bool isFrozen,
      @required bool isDeleted}) {
    return _Budget(
      id: id,
      senderId: senderId,
      sDisplayName: sDisplayName,
      sPhotoUrl: sPhotoUrl,
      sPhoneNumber: sPhoneNumber,
      receiverId: receiverId,
      rDisplayName: rDisplayName,
      rPhotoUrl: rPhotoUrl,
      rPhoneNumber: rPhoneNumber,
      totalAmount: totalAmount,
      payoutAmount: payoutAmount,
      accountName: accountName,
      payoutMode: payoutMode,
      isGift: isGift,
      unlockDate: unlockDate,
      amountLocked: amountLocked,
      amountCashed: amountCashed,
      budgetStatus: budgetStatus,
      nextUnlockDate: nextUnlockDate,
      isHidden: isHidden,
      isFrozen: isFrozen,
      isDeleted: isDeleted,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Budget = _$BudgetTearOff();

/// @nodoc
mixin _$Budget {
  UniqueId get id;
  UniqueId get senderId;
  ValidNames get sDisplayName;
  String get sPhotoUrl;
  ValidPhoneNumber get sPhoneNumber;
  UniqueId get receiverId;
  ValidNames get rDisplayName;
  String get rPhotoUrl;
  ValidPhoneNumber get rPhoneNumber;
  MoneyAmount get totalAmount;
  MoneyAmount get payoutAmount;
  AccountName get accountName;
  PayoutModeObject get payoutMode;
  bool get isGift;
  ValidDate get unlockDate;
  MoneyAmount get amountLocked;
  MoneyAmount get amountCashed;
  BudgetStatus get budgetStatus;
  ValidDate get nextUnlockDate;
  bool get isHidden;
  bool get isFrozen;
  bool get isDeleted;

  $BudgetCopyWith<Budget> get copyWith;
}

/// @nodoc
abstract class $BudgetCopyWith<$Res> {
  factory $BudgetCopyWith(Budget value, $Res Function(Budget) then) =
      _$BudgetCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId senderId,
      ValidNames sDisplayName,
      String sPhotoUrl,
      ValidPhoneNumber sPhoneNumber,
      UniqueId receiverId,
      ValidNames rDisplayName,
      String rPhotoUrl,
      ValidPhoneNumber rPhoneNumber,
      MoneyAmount totalAmount,
      MoneyAmount payoutAmount,
      AccountName accountName,
      PayoutModeObject payoutMode,
      bool isGift,
      ValidDate unlockDate,
      MoneyAmount amountLocked,
      MoneyAmount amountCashed,
      BudgetStatus budgetStatus,
      ValidDate nextUnlockDate,
      bool isHidden,
      bool isFrozen,
      bool isDeleted});
}

/// @nodoc
class _$BudgetCopyWithImpl<$Res> implements $BudgetCopyWith<$Res> {
  _$BudgetCopyWithImpl(this._value, this._then);

  final Budget _value;
  // ignore: unused_field
  final $Res Function(Budget) _then;

  @override
  $Res call({
    Object id = freezed,
    Object senderId = freezed,
    Object sDisplayName = freezed,
    Object sPhotoUrl = freezed,
    Object sPhoneNumber = freezed,
    Object receiverId = freezed,
    Object rDisplayName = freezed,
    Object rPhotoUrl = freezed,
    Object rPhoneNumber = freezed,
    Object totalAmount = freezed,
    Object payoutAmount = freezed,
    Object accountName = freezed,
    Object payoutMode = freezed,
    Object isGift = freezed,
    Object unlockDate = freezed,
    Object amountLocked = freezed,
    Object amountCashed = freezed,
    Object budgetStatus = freezed,
    Object nextUnlockDate = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      senderId: senderId == freezed ? _value.senderId : senderId as UniqueId,
      sDisplayName: sDisplayName == freezed
          ? _value.sDisplayName
          : sDisplayName as ValidNames,
      sPhotoUrl: sPhotoUrl == freezed ? _value.sPhotoUrl : sPhotoUrl as String,
      sPhoneNumber: sPhoneNumber == freezed
          ? _value.sPhoneNumber
          : sPhoneNumber as ValidPhoneNumber,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as UniqueId,
      rDisplayName: rDisplayName == freezed
          ? _value.rDisplayName
          : rDisplayName as ValidNames,
      rPhotoUrl: rPhotoUrl == freezed ? _value.rPhotoUrl : rPhotoUrl as String,
      rPhoneNumber: rPhoneNumber == freezed
          ? _value.rPhoneNumber
          : rPhoneNumber as ValidPhoneNumber,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount as MoneyAmount,
      payoutAmount: payoutAmount == freezed
          ? _value.payoutAmount
          : payoutAmount as MoneyAmount,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName as AccountName,
      payoutMode: payoutMode == freezed
          ? _value.payoutMode
          : payoutMode as PayoutModeObject,
      isGift: isGift == freezed ? _value.isGift : isGift as bool,
      unlockDate:
          unlockDate == freezed ? _value.unlockDate : unlockDate as ValidDate,
      amountLocked: amountLocked == freezed
          ? _value.amountLocked
          : amountLocked as MoneyAmount,
      amountCashed: amountCashed == freezed
          ? _value.amountCashed
          : amountCashed as MoneyAmount,
      budgetStatus: budgetStatus == freezed
          ? _value.budgetStatus
          : budgetStatus as BudgetStatus,
      nextUnlockDate: nextUnlockDate == freezed
          ? _value.nextUnlockDate
          : nextUnlockDate as ValidDate,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isFrozen: isFrozen == freezed ? _value.isFrozen : isFrozen as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
    ));
  }
}

/// @nodoc
abstract class _$BudgetCopyWith<$Res> implements $BudgetCopyWith<$Res> {
  factory _$BudgetCopyWith(_Budget value, $Res Function(_Budget) then) =
      __$BudgetCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId senderId,
      ValidNames sDisplayName,
      String sPhotoUrl,
      ValidPhoneNumber sPhoneNumber,
      UniqueId receiverId,
      ValidNames rDisplayName,
      String rPhotoUrl,
      ValidPhoneNumber rPhoneNumber,
      MoneyAmount totalAmount,
      MoneyAmount payoutAmount,
      AccountName accountName,
      PayoutModeObject payoutMode,
      bool isGift,
      ValidDate unlockDate,
      MoneyAmount amountLocked,
      MoneyAmount amountCashed,
      BudgetStatus budgetStatus,
      ValidDate nextUnlockDate,
      bool isHidden,
      bool isFrozen,
      bool isDeleted});
}

/// @nodoc
class __$BudgetCopyWithImpl<$Res> extends _$BudgetCopyWithImpl<$Res>
    implements _$BudgetCopyWith<$Res> {
  __$BudgetCopyWithImpl(_Budget _value, $Res Function(_Budget) _then)
      : super(_value, (v) => _then(v as _Budget));

  @override
  _Budget get _value => super._value as _Budget;

  @override
  $Res call({
    Object id = freezed,
    Object senderId = freezed,
    Object sDisplayName = freezed,
    Object sPhotoUrl = freezed,
    Object sPhoneNumber = freezed,
    Object receiverId = freezed,
    Object rDisplayName = freezed,
    Object rPhotoUrl = freezed,
    Object rPhoneNumber = freezed,
    Object totalAmount = freezed,
    Object payoutAmount = freezed,
    Object accountName = freezed,
    Object payoutMode = freezed,
    Object isGift = freezed,
    Object unlockDate = freezed,
    Object amountLocked = freezed,
    Object amountCashed = freezed,
    Object budgetStatus = freezed,
    Object nextUnlockDate = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
  }) {
    return _then(_Budget(
      id: id == freezed ? _value.id : id as UniqueId,
      senderId: senderId == freezed ? _value.senderId : senderId as UniqueId,
      sDisplayName: sDisplayName == freezed
          ? _value.sDisplayName
          : sDisplayName as ValidNames,
      sPhotoUrl: sPhotoUrl == freezed ? _value.sPhotoUrl : sPhotoUrl as String,
      sPhoneNumber: sPhoneNumber == freezed
          ? _value.sPhoneNumber
          : sPhoneNumber as ValidPhoneNumber,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as UniqueId,
      rDisplayName: rDisplayName == freezed
          ? _value.rDisplayName
          : rDisplayName as ValidNames,
      rPhotoUrl: rPhotoUrl == freezed ? _value.rPhotoUrl : rPhotoUrl as String,
      rPhoneNumber: rPhoneNumber == freezed
          ? _value.rPhoneNumber
          : rPhoneNumber as ValidPhoneNumber,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount as MoneyAmount,
      payoutAmount: payoutAmount == freezed
          ? _value.payoutAmount
          : payoutAmount as MoneyAmount,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName as AccountName,
      payoutMode: payoutMode == freezed
          ? _value.payoutMode
          : payoutMode as PayoutModeObject,
      isGift: isGift == freezed ? _value.isGift : isGift as bool,
      unlockDate:
          unlockDate == freezed ? _value.unlockDate : unlockDate as ValidDate,
      amountLocked: amountLocked == freezed
          ? _value.amountLocked
          : amountLocked as MoneyAmount,
      amountCashed: amountCashed == freezed
          ? _value.amountCashed
          : amountCashed as MoneyAmount,
      budgetStatus: budgetStatus == freezed
          ? _value.budgetStatus
          : budgetStatus as BudgetStatus,
      nextUnlockDate: nextUnlockDate == freezed
          ? _value.nextUnlockDate
          : nextUnlockDate as ValidDate,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isFrozen: isFrozen == freezed ? _value.isFrozen : isFrozen as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
    ));
  }
}

/// @nodoc
class _$_Budget extends _Budget with DiagnosticableTreeMixin {
  const _$_Budget(
      {@required this.id,
      @required this.senderId,
      @required this.sDisplayName,
      @required this.sPhotoUrl,
      @required this.sPhoneNumber,
      @required this.receiverId,
      @required this.rDisplayName,
      @required this.rPhotoUrl,
      @required this.rPhoneNumber,
      @required this.totalAmount,
      @required this.payoutAmount,
      @required this.accountName,
      @required this.payoutMode,
      @required this.isGift,
      @required this.unlockDate,
      @required this.amountLocked,
      @required this.amountCashed,
      @required this.budgetStatus,
      @required this.nextUnlockDate,
      @required this.isHidden,
      @required this.isFrozen,
      @required this.isDeleted})
      : assert(id != null),
        assert(senderId != null),
        assert(sDisplayName != null),
        assert(sPhotoUrl != null),
        assert(sPhoneNumber != null),
        assert(receiverId != null),
        assert(rDisplayName != null),
        assert(rPhotoUrl != null),
        assert(rPhoneNumber != null),
        assert(totalAmount != null),
        assert(payoutAmount != null),
        assert(accountName != null),
        assert(payoutMode != null),
        assert(isGift != null),
        assert(unlockDate != null),
        assert(amountLocked != null),
        assert(amountCashed != null),
        assert(budgetStatus != null),
        assert(nextUnlockDate != null),
        assert(isHidden != null),
        assert(isFrozen != null),
        assert(isDeleted != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId senderId;
  @override
  final ValidNames sDisplayName;
  @override
  final String sPhotoUrl;
  @override
  final ValidPhoneNumber sPhoneNumber;
  @override
  final UniqueId receiverId;
  @override
  final ValidNames rDisplayName;
  @override
  final String rPhotoUrl;
  @override
  final ValidPhoneNumber rPhoneNumber;
  @override
  final MoneyAmount totalAmount;
  @override
  final MoneyAmount payoutAmount;
  @override
  final AccountName accountName;
  @override
  final PayoutModeObject payoutMode;
  @override
  final bool isGift;
  @override
  final ValidDate unlockDate;
  @override
  final MoneyAmount amountLocked;
  @override
  final MoneyAmount amountCashed;
  @override
  final BudgetStatus budgetStatus;
  @override
  final ValidDate nextUnlockDate;
  @override
  final bool isHidden;
  @override
  final bool isFrozen;
  @override
  final bool isDeleted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Budget(id: $id, senderId: $senderId, sDisplayName: $sDisplayName, sPhotoUrl: $sPhotoUrl, sPhoneNumber: $sPhoneNumber, receiverId: $receiverId, rDisplayName: $rDisplayName, rPhotoUrl: $rPhotoUrl, rPhoneNumber: $rPhoneNumber, totalAmount: $totalAmount, payoutAmount: $payoutAmount, accountName: $accountName, payoutMode: $payoutMode, isGift: $isGift, unlockDate: $unlockDate, amountLocked: $amountLocked, amountCashed: $amountCashed, budgetStatus: $budgetStatus, nextUnlockDate: $nextUnlockDate, isHidden: $isHidden, isFrozen: $isFrozen, isDeleted: $isDeleted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Budget'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('senderId', senderId))
      ..add(DiagnosticsProperty('sDisplayName', sDisplayName))
      ..add(DiagnosticsProperty('sPhotoUrl', sPhotoUrl))
      ..add(DiagnosticsProperty('sPhoneNumber', sPhoneNumber))
      ..add(DiagnosticsProperty('receiverId', receiverId))
      ..add(DiagnosticsProperty('rDisplayName', rDisplayName))
      ..add(DiagnosticsProperty('rPhotoUrl', rPhotoUrl))
      ..add(DiagnosticsProperty('rPhoneNumber', rPhoneNumber))
      ..add(DiagnosticsProperty('totalAmount', totalAmount))
      ..add(DiagnosticsProperty('payoutAmount', payoutAmount))
      ..add(DiagnosticsProperty('accountName', accountName))
      ..add(DiagnosticsProperty('payoutMode', payoutMode))
      ..add(DiagnosticsProperty('isGift', isGift))
      ..add(DiagnosticsProperty('unlockDate', unlockDate))
      ..add(DiagnosticsProperty('amountLocked', amountLocked))
      ..add(DiagnosticsProperty('amountCashed', amountCashed))
      ..add(DiagnosticsProperty('budgetStatus', budgetStatus))
      ..add(DiagnosticsProperty('nextUnlockDate', nextUnlockDate))
      ..add(DiagnosticsProperty('isHidden', isHidden))
      ..add(DiagnosticsProperty('isFrozen', isFrozen))
      ..add(DiagnosticsProperty('isDeleted', isDeleted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Budget &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.sDisplayName, sDisplayName) ||
                const DeepCollectionEquality()
                    .equals(other.sDisplayName, sDisplayName)) &&
            (identical(other.sPhotoUrl, sPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.sPhotoUrl, sPhotoUrl)) &&
            (identical(other.sPhoneNumber, sPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.sPhoneNumber, sPhoneNumber)) &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.rDisplayName, rDisplayName) ||
                const DeepCollectionEquality()
                    .equals(other.rDisplayName, rDisplayName)) &&
            (identical(other.rPhotoUrl, rPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.rPhotoUrl, rPhotoUrl)) &&
            (identical(other.rPhoneNumber, rPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.rPhoneNumber, rPhoneNumber)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.payoutAmount, payoutAmount) ||
                const DeepCollectionEquality()
                    .equals(other.payoutAmount, payoutAmount)) &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)) &&
            (identical(other.payoutMode, payoutMode) ||
                const DeepCollectionEquality()
                    .equals(other.payoutMode, payoutMode)) &&
            (identical(other.isGift, isGift) ||
                const DeepCollectionEquality().equals(other.isGift, isGift)) &&
            (identical(other.unlockDate, unlockDate) ||
                const DeepCollectionEquality()
                    .equals(other.unlockDate, unlockDate)) &&
            (identical(other.amountLocked, amountLocked) ||
                const DeepCollectionEquality()
                    .equals(other.amountLocked, amountLocked)) &&
            (identical(other.amountCashed, amountCashed) ||
                const DeepCollectionEquality()
                    .equals(other.amountCashed, amountCashed)) &&
            (identical(other.budgetStatus, budgetStatus) ||
                const DeepCollectionEquality()
                    .equals(other.budgetStatus, budgetStatus)) &&
            (identical(other.nextUnlockDate, nextUnlockDate) ||
                const DeepCollectionEquality()
                    .equals(other.nextUnlockDate, nextUnlockDate)) &&
            (identical(other.isHidden, isHidden) ||
                const DeepCollectionEquality()
                    .equals(other.isHidden, isHidden)) &&
            (identical(other.isFrozen, isFrozen) ||
                const DeepCollectionEquality()
                    .equals(other.isFrozen, isFrozen)) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleted, isDeleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(sDisplayName) ^
      const DeepCollectionEquality().hash(sPhotoUrl) ^
      const DeepCollectionEquality().hash(sPhoneNumber) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(rDisplayName) ^
      const DeepCollectionEquality().hash(rPhotoUrl) ^
      const DeepCollectionEquality().hash(rPhoneNumber) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(payoutAmount) ^
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(payoutMode) ^
      const DeepCollectionEquality().hash(isGift) ^
      const DeepCollectionEquality().hash(unlockDate) ^
      const DeepCollectionEquality().hash(amountLocked) ^
      const DeepCollectionEquality().hash(amountCashed) ^
      const DeepCollectionEquality().hash(budgetStatus) ^
      const DeepCollectionEquality().hash(nextUnlockDate) ^
      const DeepCollectionEquality().hash(isHidden) ^
      const DeepCollectionEquality().hash(isFrozen) ^
      const DeepCollectionEquality().hash(isDeleted);

  @override
  _$BudgetCopyWith<_Budget> get copyWith =>
      __$BudgetCopyWithImpl<_Budget>(this, _$identity);
}

abstract class _Budget extends Budget {
  const _Budget._() : super._();
  const factory _Budget(
      {@required UniqueId id,
      @required UniqueId senderId,
      @required ValidNames sDisplayName,
      @required String sPhotoUrl,
      @required ValidPhoneNumber sPhoneNumber,
      @required UniqueId receiverId,
      @required ValidNames rDisplayName,
      @required String rPhotoUrl,
      @required ValidPhoneNumber rPhoneNumber,
      @required MoneyAmount totalAmount,
      @required MoneyAmount payoutAmount,
      @required AccountName accountName,
      @required PayoutModeObject payoutMode,
      @required bool isGift,
      @required ValidDate unlockDate,
      @required MoneyAmount amountLocked,
      @required MoneyAmount amountCashed,
      @required BudgetStatus budgetStatus,
      @required ValidDate nextUnlockDate,
      @required bool isHidden,
      @required bool isFrozen,
      @required bool isDeleted}) = _$_Budget;

  @override
  UniqueId get id;
  @override
  UniqueId get senderId;
  @override
  ValidNames get sDisplayName;
  @override
  String get sPhotoUrl;
  @override
  ValidPhoneNumber get sPhoneNumber;
  @override
  UniqueId get receiverId;
  @override
  ValidNames get rDisplayName;
  @override
  String get rPhotoUrl;
  @override
  ValidPhoneNumber get rPhoneNumber;
  @override
  MoneyAmount get totalAmount;
  @override
  MoneyAmount get payoutAmount;
  @override
  AccountName get accountName;
  @override
  PayoutModeObject get payoutMode;
  @override
  bool get isGift;
  @override
  ValidDate get unlockDate;
  @override
  MoneyAmount get amountLocked;
  @override
  MoneyAmount get amountCashed;
  @override
  BudgetStatus get budgetStatus;
  @override
  ValidDate get nextUnlockDate;
  @override
  bool get isHidden;
  @override
  bool get isFrozen;
  @override
  bool get isDeleted;
  @override
  _$BudgetCopyWith<_Budget> get copyWith;
}
