// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'logs_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LogsDto _$LogsDtoFromJson(Map<String, dynamic> json) {
  return _LogsDto.fromJson(json);
}

/// @nodoc
class _$LogsDtoTearOff {
  const _$LogsDtoTearOff();

// ignore: unused_element
  _LogsDto call(
      {@required double amount,
      @required String payer,
      @required String receiver,
      @required String type,
      @required String operation,
      @required @ServerTimestampConverter() FieldValue createdAt}) {
    return _LogsDto(
      amount: amount,
      payer: payer,
      receiver: receiver,
      type: type,
      operation: operation,
      createdAt: createdAt,
    );
  }

// ignore: unused_element
  LogsDto fromJson(Map<String, Object> json) {
    return LogsDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LogsDto = _$LogsDtoTearOff();

/// @nodoc
mixin _$LogsDto {
  double get amount;
  String get payer;
  String get receiver;
  String get type;
  String get operation;
  @ServerTimestampConverter()
  FieldValue get createdAt;

  Map<String, dynamic> toJson();
  $LogsDtoCopyWith<LogsDto> get copyWith;
}

/// @nodoc
abstract class $LogsDtoCopyWith<$Res> {
  factory $LogsDtoCopyWith(LogsDto value, $Res Function(LogsDto) then) =
      _$LogsDtoCopyWithImpl<$Res>;
  $Res call(
      {double amount,
      String payer,
      String receiver,
      String type,
      String operation,
      @ServerTimestampConverter() FieldValue createdAt});
}

/// @nodoc
class _$LogsDtoCopyWithImpl<$Res> implements $LogsDtoCopyWith<$Res> {
  _$LogsDtoCopyWithImpl(this._value, this._then);

  final LogsDto _value;
  // ignore: unused_field
  final $Res Function(LogsDto) _then;

  @override
  $Res call({
    Object amount = freezed,
    Object payer = freezed,
    Object receiver = freezed,
    Object type = freezed,
    Object operation = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed ? _value.amount : amount as double,
      payer: payer == freezed ? _value.payer : payer as String,
      receiver: receiver == freezed ? _value.receiver : receiver as String,
      type: type == freezed ? _value.type : type as String,
      operation: operation == freezed ? _value.operation : operation as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$LogsDtoCopyWith<$Res> implements $LogsDtoCopyWith<$Res> {
  factory _$LogsDtoCopyWith(_LogsDto value, $Res Function(_LogsDto) then) =
      __$LogsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {double amount,
      String payer,
      String receiver,
      String type,
      String operation,
      @ServerTimestampConverter() FieldValue createdAt});
}

/// @nodoc
class __$LogsDtoCopyWithImpl<$Res> extends _$LogsDtoCopyWithImpl<$Res>
    implements _$LogsDtoCopyWith<$Res> {
  __$LogsDtoCopyWithImpl(_LogsDto _value, $Res Function(_LogsDto) _then)
      : super(_value, (v) => _then(v as _LogsDto));

  @override
  _LogsDto get _value => super._value as _LogsDto;

  @override
  $Res call({
    Object amount = freezed,
    Object payer = freezed,
    Object receiver = freezed,
    Object type = freezed,
    Object operation = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_LogsDto(
      amount: amount == freezed ? _value.amount : amount as double,
      payer: payer == freezed ? _value.payer : payer as String,
      receiver: receiver == freezed ? _value.receiver : receiver as String,
      type: type == freezed ? _value.type : type as String,
      operation: operation == freezed ? _value.operation : operation as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LogsDto extends _LogsDto {
  const _$_LogsDto(
      {@required this.amount,
      @required this.payer,
      @required this.receiver,
      @required this.type,
      @required this.operation,
      @required @ServerTimestampConverter() this.createdAt})
      : assert(amount != null),
        assert(payer != null),
        assert(receiver != null),
        assert(type != null),
        assert(operation != null),
        assert(createdAt != null),
        super._();

  factory _$_LogsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_LogsDtoFromJson(json);

  @override
  final double amount;
  @override
  final String payer;
  @override
  final String receiver;
  @override
  final String type;
  @override
  final String operation;
  @override
  @ServerTimestampConverter()
  final FieldValue createdAt;

  @override
  String toString() {
    return 'LogsDto(amount: $amount, payer: $payer, receiver: $receiver, type: $type, operation: $operation, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogsDto &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.payer, payer) ||
                const DeepCollectionEquality().equals(other.payer, payer)) &&
            (identical(other.receiver, receiver) ||
                const DeepCollectionEquality()
                    .equals(other.receiver, receiver)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.operation, operation) ||
                const DeepCollectionEquality()
                    .equals(other.operation, operation)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(payer) ^
      const DeepCollectionEquality().hash(receiver) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(operation) ^
      const DeepCollectionEquality().hash(createdAt);

  @override
  _$LogsDtoCopyWith<_LogsDto> get copyWith =>
      __$LogsDtoCopyWithImpl<_LogsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LogsDtoToJson(this);
  }
}

abstract class _LogsDto extends LogsDto {
  const _LogsDto._() : super._();
  const factory _LogsDto(
      {@required double amount,
      @required String payer,
      @required String receiver,
      @required String type,
      @required String operation,
      @required @ServerTimestampConverter() FieldValue createdAt}) = _$_LogsDto;

  factory _LogsDto.fromJson(Map<String, dynamic> json) = _$_LogsDto.fromJson;

  @override
  double get amount;
  @override
  String get payer;
  @override
  String get receiver;
  @override
  String get type;
  @override
  String get operation;
  @override
  @ServerTimestampConverter()
  FieldValue get createdAt;
  @override
  _$LogsDtoCopyWith<_LogsDto> get copyWith;
}
