// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'savings_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SavingsDto _$SavingsDtoFromJson(Map<String, dynamic> json) {
  return _SavingsDto.fromJson(json);
}

/// @nodoc
class _$SavingsDtoTearOff {
  const _$SavingsDtoTearOff();

// ignore: unused_element
  _SavingsDto call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(ignore: true) Duration timeLeft,
      @required double amount,
      @required String savingsName,
      @required DateTime withdrawalDate,
      @required String savingStatus,
      @required bool isHidden,
      @required bool isFrozen,
      @required bool isDeleted,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _SavingsDto(
      id: id,
      timeLeft: timeLeft,
      amount: amount,
      savingsName: savingsName,
      withdrawalDate: withdrawalDate,
      savingStatus: savingStatus,
      isHidden: isHidden,
      isFrozen: isFrozen,
      isDeleted: isDeleted,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  SavingsDto fromJson(Map<String, Object> json) {
    return SavingsDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SavingsDto = _$SavingsDtoTearOff();

/// @nodoc
mixin _$SavingsDto {
  @JsonKey(ignore: true)
  String get id;
  @JsonKey(ignore: true)
  Duration get timeLeft;
  double get amount;
  String get savingsName;
  DateTime get withdrawalDate;
  String get savingStatus;
  bool get isHidden;
  bool get isFrozen;
  bool
      get isDeleted; // Placeholder value --> converted to Time on server where not has been updated to
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $SavingsDtoCopyWith<SavingsDto> get copyWith;
}

/// @nodoc
abstract class $SavingsDtoCopyWith<$Res> {
  factory $SavingsDtoCopyWith(
          SavingsDto value, $Res Function(SavingsDto) then) =
      _$SavingsDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(ignore: true) Duration timeLeft,
      double amount,
      String savingsName,
      DateTime withdrawalDate,
      String savingStatus,
      bool isHidden,
      bool isFrozen,
      bool isDeleted,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$SavingsDtoCopyWithImpl<$Res> implements $SavingsDtoCopyWith<$Res> {
  _$SavingsDtoCopyWithImpl(this._value, this._then);

  final SavingsDto _value;
  // ignore: unused_field
  final $Res Function(SavingsDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object timeLeft = freezed,
    Object amount = freezed,
    Object savingsName = freezed,
    Object withdrawalDate = freezed,
    Object savingStatus = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      timeLeft: timeLeft == freezed ? _value.timeLeft : timeLeft as Duration,
      amount: amount == freezed ? _value.amount : amount as double,
      savingsName:
          savingsName == freezed ? _value.savingsName : savingsName as String,
      withdrawalDate: withdrawalDate == freezed
          ? _value.withdrawalDate
          : withdrawalDate as DateTime,
      savingStatus: savingStatus == freezed
          ? _value.savingStatus
          : savingStatus as String,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isFrozen: isFrozen == freezed ? _value.isFrozen : isFrozen as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$SavingsDtoCopyWith<$Res> implements $SavingsDtoCopyWith<$Res> {
  factory _$SavingsDtoCopyWith(
          _SavingsDto value, $Res Function(_SavingsDto) then) =
      __$SavingsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(ignore: true) Duration timeLeft,
      double amount,
      String savingsName,
      DateTime withdrawalDate,
      String savingStatus,
      bool isHidden,
      bool isFrozen,
      bool isDeleted,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$SavingsDtoCopyWithImpl<$Res> extends _$SavingsDtoCopyWithImpl<$Res>
    implements _$SavingsDtoCopyWith<$Res> {
  __$SavingsDtoCopyWithImpl(
      _SavingsDto _value, $Res Function(_SavingsDto) _then)
      : super(_value, (v) => _then(v as _SavingsDto));

  @override
  _SavingsDto get _value => super._value as _SavingsDto;

  @override
  $Res call({
    Object id = freezed,
    Object timeLeft = freezed,
    Object amount = freezed,
    Object savingsName = freezed,
    Object withdrawalDate = freezed,
    Object savingStatus = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_SavingsDto(
      id: id == freezed ? _value.id : id as String,
      timeLeft: timeLeft == freezed ? _value.timeLeft : timeLeft as Duration,
      amount: amount == freezed ? _value.amount : amount as double,
      savingsName:
          savingsName == freezed ? _value.savingsName : savingsName as String,
      withdrawalDate: withdrawalDate == freezed
          ? _value.withdrawalDate
          : withdrawalDate as DateTime,
      savingStatus: savingStatus == freezed
          ? _value.savingStatus
          : savingStatus as String,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isFrozen: isFrozen == freezed ? _value.isFrozen : isFrozen as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SavingsDto extends _SavingsDto {
  const _$_SavingsDto(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(ignore: true) this.timeLeft,
      @required this.amount,
      @required this.savingsName,
      @required this.withdrawalDate,
      @required this.savingStatus,
      @required this.isHidden,
      @required this.isFrozen,
      @required this.isDeleted,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(amount != null),
        assert(savingsName != null),
        assert(withdrawalDate != null),
        assert(savingStatus != null),
        assert(isHidden != null),
        assert(isFrozen != null),
        assert(isDeleted != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_SavingsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SavingsDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  @JsonKey(ignore: true)
  final Duration timeLeft;
  @override
  final double amount;
  @override
  final String savingsName;
  @override
  final DateTime withdrawalDate;
  @override
  final String savingStatus;
  @override
  final bool isHidden;
  @override
  final bool isFrozen;
  @override
  final bool isDeleted;
  @override // Placeholder value --> converted to Time on server where not has been updated to
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'SavingsDto(id: $id, timeLeft: $timeLeft, amount: $amount, savingsName: $savingsName, withdrawalDate: $withdrawalDate, savingStatus: $savingStatus, isHidden: $isHidden, isFrozen: $isFrozen, isDeleted: $isDeleted, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SavingsDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.timeLeft, timeLeft) ||
                const DeepCollectionEquality()
                    .equals(other.timeLeft, timeLeft)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.savingsName, savingsName) ||
                const DeepCollectionEquality()
                    .equals(other.savingsName, savingsName)) &&
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
                    .equals(other.isDeleted, isDeleted)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(timeLeft) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(savingsName) ^
      const DeepCollectionEquality().hash(withdrawalDate) ^
      const DeepCollectionEquality().hash(savingStatus) ^
      const DeepCollectionEquality().hash(isHidden) ^
      const DeepCollectionEquality().hash(isFrozen) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$SavingsDtoCopyWith<_SavingsDto> get copyWith =>
      __$SavingsDtoCopyWithImpl<_SavingsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SavingsDtoToJson(this);
  }
}

abstract class _SavingsDto extends SavingsDto {
  const _SavingsDto._() : super._();
  const factory _SavingsDto(
          {@JsonKey(ignore: true) String id,
          @JsonKey(ignore: true) Duration timeLeft,
          @required double amount,
          @required String savingsName,
          @required DateTime withdrawalDate,
          @required String savingStatus,
          @required bool isHidden,
          @required bool isFrozen,
          @required bool isDeleted,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_SavingsDto;

  factory _SavingsDto.fromJson(Map<String, dynamic> json) =
      _$_SavingsDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  @JsonKey(ignore: true)
  Duration get timeLeft;
  @override
  double get amount;
  @override
  String get savingsName;
  @override
  DateTime get withdrawalDate;
  @override
  String get savingStatus;
  @override
  bool get isHidden;
  @override
  bool get isFrozen;
  @override
  bool get isDeleted;
  @override // Placeholder value --> converted to Time on server where not has been updated to
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$SavingsDtoCopyWith<_SavingsDto> get copyWith;
}
