// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'savings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SavingsTearOff {
  const _$SavingsTearOff();

// ignore: unused_element
  _Savings call(
      {@required UniqueId id,
      @required MoneyAmount amount,
      @required AccountName savingsName,
      @required ValidDuration timeLeft,
      @required ValidDate withdrawalDate,
      @required SavingStatus savingStatus,
      @required bool isHidden,
      @required bool isFrozen,
      @required bool isDeleted}) {
    return _Savings(
      id: id,
      amount: amount,
      savingsName: savingsName,
      timeLeft: timeLeft,
      withdrawalDate: withdrawalDate,
      savingStatus: savingStatus,
      isHidden: isHidden,
      isFrozen: isFrozen,
      isDeleted: isDeleted,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Savings = _$SavingsTearOff();

/// @nodoc
mixin _$Savings {
  UniqueId get id;
  MoneyAmount get amount;
  AccountName get savingsName;
  ValidDuration get timeLeft;
  ValidDate get withdrawalDate;
  SavingStatus get savingStatus;
  bool get isHidden;
  bool get isFrozen;
  bool get isDeleted;

  $SavingsCopyWith<Savings> get copyWith;
}

/// @nodoc
abstract class $SavingsCopyWith<$Res> {
  factory $SavingsCopyWith(Savings value, $Res Function(Savings) then) =
      _$SavingsCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      MoneyAmount amount,
      AccountName savingsName,
      ValidDuration timeLeft,
      ValidDate withdrawalDate,
      SavingStatus savingStatus,
      bool isHidden,
      bool isFrozen,
      bool isDeleted});
}

/// @nodoc
class _$SavingsCopyWithImpl<$Res> implements $SavingsCopyWith<$Res> {
  _$SavingsCopyWithImpl(this._value, this._then);

  final Savings _value;
  // ignore: unused_field
  final $Res Function(Savings) _then;

  @override
  $Res call({
    Object id = freezed,
    Object amount = freezed,
    Object savingsName = freezed,
    Object timeLeft = freezed,
    Object withdrawalDate = freezed,
    Object savingStatus = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      savingsName: savingsName == freezed
          ? _value.savingsName
          : savingsName as AccountName,
      timeLeft:
          timeLeft == freezed ? _value.timeLeft : timeLeft as ValidDuration,
      withdrawalDate: withdrawalDate == freezed
          ? _value.withdrawalDate
          : withdrawalDate as ValidDate,
      savingStatus: savingStatus == freezed
          ? _value.savingStatus
          : savingStatus as SavingStatus,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isFrozen: isFrozen == freezed ? _value.isFrozen : isFrozen as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
    ));
  }
}

/// @nodoc
abstract class _$SavingsCopyWith<$Res> implements $SavingsCopyWith<$Res> {
  factory _$SavingsCopyWith(_Savings value, $Res Function(_Savings) then) =
      __$SavingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      MoneyAmount amount,
      AccountName savingsName,
      ValidDuration timeLeft,
      ValidDate withdrawalDate,
      SavingStatus savingStatus,
      bool isHidden,
      bool isFrozen,
      bool isDeleted});
}

/// @nodoc
class __$SavingsCopyWithImpl<$Res> extends _$SavingsCopyWithImpl<$Res>
    implements _$SavingsCopyWith<$Res> {
  __$SavingsCopyWithImpl(_Savings _value, $Res Function(_Savings) _then)
      : super(_value, (v) => _then(v as _Savings));

  @override
  _Savings get _value => super._value as _Savings;

  @override
  $Res call({
    Object id = freezed,
    Object amount = freezed,
    Object savingsName = freezed,
    Object timeLeft = freezed,
    Object withdrawalDate = freezed,
    Object savingStatus = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
  }) {
    return _then(_Savings(
      id: id == freezed ? _value.id : id as UniqueId,
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      savingsName: savingsName == freezed
          ? _value.savingsName
          : savingsName as AccountName,
      timeLeft:
          timeLeft == freezed ? _value.timeLeft : timeLeft as ValidDuration,
      withdrawalDate: withdrawalDate == freezed
          ? _value.withdrawalDate
          : withdrawalDate as ValidDate,
      savingStatus: savingStatus == freezed
          ? _value.savingStatus
          : savingStatus as SavingStatus,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isFrozen: isFrozen == freezed ? _value.isFrozen : isFrozen as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
    ));
  }
}

/// @nodoc
class _$_Savings extends _Savings {
  const _$_Savings(
      {@required this.id,
      @required this.amount,
      @required this.savingsName,
      @required this.timeLeft,
      @required this.withdrawalDate,
      @required this.savingStatus,
      @required this.isHidden,
      @required this.isFrozen,
      @required this.isDeleted})
      : assert(id != null),
        assert(amount != null),
        assert(savingsName != null),
        assert(timeLeft != null),
        assert(withdrawalDate != null),
        assert(savingStatus != null),
        assert(isHidden != null),
        assert(isFrozen != null),
        assert(isDeleted != null),
        super._();

  @override
  final UniqueId id;
  @override
  final MoneyAmount amount;
  @override
  final AccountName savingsName;
  @override
  final ValidDuration timeLeft;
  @override
  final ValidDate withdrawalDate;
  @override
  final SavingStatus savingStatus;
  @override
  final bool isHidden;
  @override
  final bool isFrozen;
  @override
  final bool isDeleted;

  @override
  String toString() {
    return 'Savings(id: $id, amount: $amount, savingsName: $savingsName, timeLeft: $timeLeft, withdrawalDate: $withdrawalDate, savingStatus: $savingStatus, isHidden: $isHidden, isFrozen: $isFrozen, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Savings &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.savingsName, savingsName) ||
                const DeepCollectionEquality()
                    .equals(other.savingsName, savingsName)) &&
            (identical(other.timeLeft, timeLeft) ||
                const DeepCollectionEquality()
                    .equals(other.timeLeft, timeLeft)) &&
            (identical(other.withdrawalDate, withdrawalDate) ||
                const DeepCollectionEquality()
                    .equals(other.withdrawalDate, withdrawalDate)) &&
            (identical(other.savingStatus, savingStatus) ||
                const DeepCollectionEquality()
                    .equals(other.savingStatus, savingStatus)) &&
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
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(savingsName) ^
      const DeepCollectionEquality().hash(timeLeft) ^
      const DeepCollectionEquality().hash(withdrawalDate) ^
      const DeepCollectionEquality().hash(savingStatus) ^
      const DeepCollectionEquality().hash(isHidden) ^
      const DeepCollectionEquality().hash(isFrozen) ^
      const DeepCollectionEquality().hash(isDeleted);

  @override
  _$SavingsCopyWith<_Savings> get copyWith =>
      __$SavingsCopyWithImpl<_Savings>(this, _$identity);
}

abstract class _Savings extends Savings {
  const _Savings._() : super._();
  const factory _Savings(
      {@required UniqueId id,
      @required MoneyAmount amount,
      @required AccountName savingsName,
      @required ValidDuration timeLeft,
      @required ValidDate withdrawalDate,
      @required SavingStatus savingStatus,
      @required bool isHidden,
      @required bool isFrozen,
      @required bool isDeleted}) = _$_Savings;

  @override
  UniqueId get id;
  @override
  MoneyAmount get amount;
  @override
  AccountName get savingsName;
  @override
  ValidDuration get timeLeft;
  @override
  ValidDate get withdrawalDate;
  @override
  SavingStatus get savingStatus;
  @override
  bool get isHidden;
  @override
  bool get isFrozen;
  @override
  bool get isDeleted;
  @override
  _$SavingsCopyWith<_Savings> get copyWith;
}
