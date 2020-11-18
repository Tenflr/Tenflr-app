// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'logs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LogsTearOff {
  const _$LogsTearOff();

// ignore: unused_element
  _Logs call(
      {@required MoneyAmount amount,
      @required UniqueId payer,
      @required UniqueId receiver,
      @required TransactionType type,
      @required String operation,
      @required DateTime createdAt}) {
    return _Logs(
      amount: amount,
      payer: payer,
      receiver: receiver,
      type: type,
      operation: operation,
      createdAt: createdAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Logs = _$LogsTearOff();

/// @nodoc
mixin _$Logs {
  MoneyAmount get amount;
  UniqueId get payer;
  UniqueId get receiver;
  TransactionType get type;
  String get operation;
  DateTime get createdAt;

  $LogsCopyWith<Logs> get copyWith;
}

/// @nodoc
abstract class $LogsCopyWith<$Res> {
  factory $LogsCopyWith(Logs value, $Res Function(Logs) then) =
      _$LogsCopyWithImpl<$Res>;
  $Res call(
      {MoneyAmount amount,
      UniqueId payer,
      UniqueId receiver,
      TransactionType type,
      String operation,
      DateTime createdAt});
}

/// @nodoc
class _$LogsCopyWithImpl<$Res> implements $LogsCopyWith<$Res> {
  _$LogsCopyWithImpl(this._value, this._then);

  final Logs _value;
  // ignore: unused_field
  final $Res Function(Logs) _then;

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
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      payer: payer == freezed ? _value.payer : payer as UniqueId,
      receiver: receiver == freezed ? _value.receiver : receiver as UniqueId,
      type: type == freezed ? _value.type : type as TransactionType,
      operation: operation == freezed ? _value.operation : operation as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$LogsCopyWith<$Res> implements $LogsCopyWith<$Res> {
  factory _$LogsCopyWith(_Logs value, $Res Function(_Logs) then) =
      __$LogsCopyWithImpl<$Res>;
  @override
  $Res call(
      {MoneyAmount amount,
      UniqueId payer,
      UniqueId receiver,
      TransactionType type,
      String operation,
      DateTime createdAt});
}

/// @nodoc
class __$LogsCopyWithImpl<$Res> extends _$LogsCopyWithImpl<$Res>
    implements _$LogsCopyWith<$Res> {
  __$LogsCopyWithImpl(_Logs _value, $Res Function(_Logs) _then)
      : super(_value, (v) => _then(v as _Logs));

  @override
  _Logs get _value => super._value as _Logs;

  @override
  $Res call({
    Object amount = freezed,
    Object payer = freezed,
    Object receiver = freezed,
    Object type = freezed,
    Object operation = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_Logs(
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      payer: payer == freezed ? _value.payer : payer as UniqueId,
      receiver: receiver == freezed ? _value.receiver : receiver as UniqueId,
      type: type == freezed ? _value.type : type as TransactionType,
      operation: operation == freezed ? _value.operation : operation as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_Logs extends _Logs with DiagnosticableTreeMixin {
  const _$_Logs(
      {@required this.amount,
      @required this.payer,
      @required this.receiver,
      @required this.type,
      @required this.operation,
      @required this.createdAt})
      : assert(amount != null),
        assert(payer != null),
        assert(receiver != null),
        assert(type != null),
        assert(operation != null),
        assert(createdAt != null),
        super._();

  @override
  final MoneyAmount amount;
  @override
  final UniqueId payer;
  @override
  final UniqueId receiver;
  @override
  final TransactionType type;
  @override
  final String operation;
  @override
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Logs(amount: $amount, payer: $payer, receiver: $receiver, type: $type, operation: $operation, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Logs'))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('payer', payer))
      ..add(DiagnosticsProperty('receiver', receiver))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('operation', operation))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Logs &&
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
  _$LogsCopyWith<_Logs> get copyWith =>
      __$LogsCopyWithImpl<_Logs>(this, _$identity);
}

abstract class _Logs extends Logs {
  const _Logs._() : super._();
  const factory _Logs(
      {@required MoneyAmount amount,
      @required UniqueId payer,
      @required UniqueId receiver,
      @required TransactionType type,
      @required String operation,
      @required DateTime createdAt}) = _$_Logs;

  @override
  MoneyAmount get amount;
  @override
  UniqueId get payer;
  @override
  UniqueId get receiver;
  @override
  TransactionType get type;
  @override
  String get operation;
  @override
  DateTime get createdAt;
  @override
  _$LogsCopyWith<_Logs> get copyWith;
}
