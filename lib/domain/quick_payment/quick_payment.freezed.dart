// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quick_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QuickPaymentTearOff {
  const _$QuickPaymentTearOff();

// ignore: unused_element
  _QuickPayment call(
      {@required UniqueId id,
      @required UniqueId requesterId,
      @required UniqueId payerId,
      @required MoneyAmount amount,
      @required ValidPhoneNumber pTel,
      @required ValidPhoneNumber rTel,
      @required DateTime date,
      @required bool cashed,
      @required bool isHidden,
      @required bool isDeleted}) {
    return _QuickPayment(
      id: id,
      requesterId: requesterId,
      payerId: payerId,
      amount: amount,
      pTel: pTel,
      rTel: rTel,
      date: date,
      cashed: cashed,
      isHidden: isHidden,
      isDeleted: isDeleted,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuickPayment = _$QuickPaymentTearOff();

/// @nodoc
mixin _$QuickPayment {
  UniqueId get id;
  UniqueId get requesterId;
  UniqueId get payerId;
  MoneyAmount get amount;
  ValidPhoneNumber get pTel;
  ValidPhoneNumber get rTel;
  DateTime get date;
  bool get cashed;
  bool get isHidden;
  bool get isDeleted;

  $QuickPaymentCopyWith<QuickPayment> get copyWith;
}

/// @nodoc
abstract class $QuickPaymentCopyWith<$Res> {
  factory $QuickPaymentCopyWith(
          QuickPayment value, $Res Function(QuickPayment) then) =
      _$QuickPaymentCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId requesterId,
      UniqueId payerId,
      MoneyAmount amount,
      ValidPhoneNumber pTel,
      ValidPhoneNumber rTel,
      DateTime date,
      bool cashed,
      bool isHidden,
      bool isDeleted});
}

/// @nodoc
class _$QuickPaymentCopyWithImpl<$Res> implements $QuickPaymentCopyWith<$Res> {
  _$QuickPaymentCopyWithImpl(this._value, this._then);

  final QuickPayment _value;
  // ignore: unused_field
  final $Res Function(QuickPayment) _then;

  @override
  $Res call({
    Object id = freezed,
    Object requesterId = freezed,
    Object payerId = freezed,
    Object amount = freezed,
    Object pTel = freezed,
    Object rTel = freezed,
    Object date = freezed,
    Object cashed = freezed,
    Object isHidden = freezed,
    Object isDeleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      requesterId:
          requesterId == freezed ? _value.requesterId : requesterId as UniqueId,
      payerId: payerId == freezed ? _value.payerId : payerId as UniqueId,
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      pTel: pTel == freezed ? _value.pTel : pTel as ValidPhoneNumber,
      rTel: rTel == freezed ? _value.rTel : rTel as ValidPhoneNumber,
      date: date == freezed ? _value.date : date as DateTime,
      cashed: cashed == freezed ? _value.cashed : cashed as bool,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
    ));
  }
}

/// @nodoc
abstract class _$QuickPaymentCopyWith<$Res>
    implements $QuickPaymentCopyWith<$Res> {
  factory _$QuickPaymentCopyWith(
          _QuickPayment value, $Res Function(_QuickPayment) then) =
      __$QuickPaymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId requesterId,
      UniqueId payerId,
      MoneyAmount amount,
      ValidPhoneNumber pTel,
      ValidPhoneNumber rTel,
      DateTime date,
      bool cashed,
      bool isHidden,
      bool isDeleted});
}

/// @nodoc
class __$QuickPaymentCopyWithImpl<$Res> extends _$QuickPaymentCopyWithImpl<$Res>
    implements _$QuickPaymentCopyWith<$Res> {
  __$QuickPaymentCopyWithImpl(
      _QuickPayment _value, $Res Function(_QuickPayment) _then)
      : super(_value, (v) => _then(v as _QuickPayment));

  @override
  _QuickPayment get _value => super._value as _QuickPayment;

  @override
  $Res call({
    Object id = freezed,
    Object requesterId = freezed,
    Object payerId = freezed,
    Object amount = freezed,
    Object pTel = freezed,
    Object rTel = freezed,
    Object date = freezed,
    Object cashed = freezed,
    Object isHidden = freezed,
    Object isDeleted = freezed,
  }) {
    return _then(_QuickPayment(
      id: id == freezed ? _value.id : id as UniqueId,
      requesterId:
          requesterId == freezed ? _value.requesterId : requesterId as UniqueId,
      payerId: payerId == freezed ? _value.payerId : payerId as UniqueId,
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      pTel: pTel == freezed ? _value.pTel : pTel as ValidPhoneNumber,
      rTel: rTel == freezed ? _value.rTel : rTel as ValidPhoneNumber,
      date: date == freezed ? _value.date : date as DateTime,
      cashed: cashed == freezed ? _value.cashed : cashed as bool,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
    ));
  }
}

/// @nodoc
class _$_QuickPayment extends _QuickPayment with DiagnosticableTreeMixin {
  const _$_QuickPayment(
      {@required this.id,
      @required this.requesterId,
      @required this.payerId,
      @required this.amount,
      @required this.pTel,
      @required this.rTel,
      @required this.date,
      @required this.cashed,
      @required this.isHidden,
      @required this.isDeleted})
      : assert(id != null),
        assert(requesterId != null),
        assert(payerId != null),
        assert(amount != null),
        assert(pTel != null),
        assert(rTel != null),
        assert(date != null),
        assert(cashed != null),
        assert(isHidden != null),
        assert(isDeleted != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId requesterId;
  @override
  final UniqueId payerId;
  @override
  final MoneyAmount amount;
  @override
  final ValidPhoneNumber pTel;
  @override
  final ValidPhoneNumber rTel;
  @override
  final DateTime date;
  @override
  final bool cashed;
  @override
  final bool isHidden;
  @override
  final bool isDeleted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuickPayment(id: $id, requesterId: $requesterId, payerId: $payerId, amount: $amount, pTel: $pTel, rTel: $rTel, date: $date, cashed: $cashed, isHidden: $isHidden, isDeleted: $isDeleted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuickPayment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('requesterId', requesterId))
      ..add(DiagnosticsProperty('payerId', payerId))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('pTel', pTel))
      ..add(DiagnosticsProperty('rTel', rTel))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('cashed', cashed))
      ..add(DiagnosticsProperty('isHidden', isHidden))
      ..add(DiagnosticsProperty('isDeleted', isDeleted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuickPayment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.requesterId, requesterId) ||
                const DeepCollectionEquality()
                    .equals(other.requesterId, requesterId)) &&
            (identical(other.payerId, payerId) ||
                const DeepCollectionEquality()
                    .equals(other.payerId, payerId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.pTel, pTel) ||
                const DeepCollectionEquality().equals(other.pTel, pTel)) &&
            (identical(other.rTel, rTel) ||
                const DeepCollectionEquality().equals(other.rTel, rTel)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.cashed, cashed) ||
                const DeepCollectionEquality().equals(other.cashed, cashed)) &&
            (identical(other.isHidden, isHidden) ||
                const DeepCollectionEquality()
                    .equals(other.isHidden, isHidden)) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleted, isDeleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(requesterId) ^
      const DeepCollectionEquality().hash(payerId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(pTel) ^
      const DeepCollectionEquality().hash(rTel) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(cashed) ^
      const DeepCollectionEquality().hash(isHidden) ^
      const DeepCollectionEquality().hash(isDeleted);

  @override
  _$QuickPaymentCopyWith<_QuickPayment> get copyWith =>
      __$QuickPaymentCopyWithImpl<_QuickPayment>(this, _$identity);
}

abstract class _QuickPayment extends QuickPayment {
  const _QuickPayment._() : super._();
  const factory _QuickPayment(
      {@required UniqueId id,
      @required UniqueId requesterId,
      @required UniqueId payerId,
      @required MoneyAmount amount,
      @required ValidPhoneNumber pTel,
      @required ValidPhoneNumber rTel,
      @required DateTime date,
      @required bool cashed,
      @required bool isHidden,
      @required bool isDeleted}) = _$_QuickPayment;

  @override
  UniqueId get id;
  @override
  UniqueId get requesterId;
  @override
  UniqueId get payerId;
  @override
  MoneyAmount get amount;
  @override
  ValidPhoneNumber get pTel;
  @override
  ValidPhoneNumber get rTel;
  @override
  DateTime get date;
  @override
  bool get cashed;
  @override
  bool get isHidden;
  @override
  bool get isDeleted;
  @override
  _$QuickPaymentCopyWith<_QuickPayment> get copyWith;
}
