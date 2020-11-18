// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quick_payment_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QuickPaymentTokenTearOff {
  const _$QuickPaymentTokenTearOff();

// ignore: unused_element
  _QuickPaymentToken call(
      {@required UniqueId requesterId,
      @required ValidDate tokenValidUntil,
      @required ValidNames requesterName,
      @required ValidPhoneNumber requesterNumber,
      @required String requesterPhotoUrl,
      @required MoneyAmount amount}) {
    return _QuickPaymentToken(
      requesterId: requesterId,
      tokenValidUntil: tokenValidUntil,
      requesterName: requesterName,
      requesterNumber: requesterNumber,
      requesterPhotoUrl: requesterPhotoUrl,
      amount: amount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuickPaymentToken = _$QuickPaymentTokenTearOff();

/// @nodoc
mixin _$QuickPaymentToken {
  UniqueId get requesterId;
  ValidDate get tokenValidUntil;
  ValidNames get requesterName;
  ValidPhoneNumber get requesterNumber;
  String get requesterPhotoUrl;
  MoneyAmount get amount;

  $QuickPaymentTokenCopyWith<QuickPaymentToken> get copyWith;
}

/// @nodoc
abstract class $QuickPaymentTokenCopyWith<$Res> {
  factory $QuickPaymentTokenCopyWith(
          QuickPaymentToken value, $Res Function(QuickPaymentToken) then) =
      _$QuickPaymentTokenCopyWithImpl<$Res>;
  $Res call(
      {UniqueId requesterId,
      ValidDate tokenValidUntil,
      ValidNames requesterName,
      ValidPhoneNumber requesterNumber,
      String requesterPhotoUrl,
      MoneyAmount amount});
}

/// @nodoc
class _$QuickPaymentTokenCopyWithImpl<$Res>
    implements $QuickPaymentTokenCopyWith<$Res> {
  _$QuickPaymentTokenCopyWithImpl(this._value, this._then);

  final QuickPaymentToken _value;
  // ignore: unused_field
  final $Res Function(QuickPaymentToken) _then;

  @override
  $Res call({
    Object requesterId = freezed,
    Object tokenValidUntil = freezed,
    Object requesterName = freezed,
    Object requesterNumber = freezed,
    Object requesterPhotoUrl = freezed,
    Object amount = freezed,
  }) {
    return _then(_value.copyWith(
      requesterId:
          requesterId == freezed ? _value.requesterId : requesterId as UniqueId,
      tokenValidUntil: tokenValidUntil == freezed
          ? _value.tokenValidUntil
          : tokenValidUntil as ValidDate,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName as ValidNames,
      requesterNumber: requesterNumber == freezed
          ? _value.requesterNumber
          : requesterNumber as ValidPhoneNumber,
      requesterPhotoUrl: requesterPhotoUrl == freezed
          ? _value.requesterPhotoUrl
          : requesterPhotoUrl as String,
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
    ));
  }
}

/// @nodoc
abstract class _$QuickPaymentTokenCopyWith<$Res>
    implements $QuickPaymentTokenCopyWith<$Res> {
  factory _$QuickPaymentTokenCopyWith(
          _QuickPaymentToken value, $Res Function(_QuickPaymentToken) then) =
      __$QuickPaymentTokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId requesterId,
      ValidDate tokenValidUntil,
      ValidNames requesterName,
      ValidPhoneNumber requesterNumber,
      String requesterPhotoUrl,
      MoneyAmount amount});
}

/// @nodoc
class __$QuickPaymentTokenCopyWithImpl<$Res>
    extends _$QuickPaymentTokenCopyWithImpl<$Res>
    implements _$QuickPaymentTokenCopyWith<$Res> {
  __$QuickPaymentTokenCopyWithImpl(
      _QuickPaymentToken _value, $Res Function(_QuickPaymentToken) _then)
      : super(_value, (v) => _then(v as _QuickPaymentToken));

  @override
  _QuickPaymentToken get _value => super._value as _QuickPaymentToken;

  @override
  $Res call({
    Object requesterId = freezed,
    Object tokenValidUntil = freezed,
    Object requesterName = freezed,
    Object requesterNumber = freezed,
    Object requesterPhotoUrl = freezed,
    Object amount = freezed,
  }) {
    return _then(_QuickPaymentToken(
      requesterId:
          requesterId == freezed ? _value.requesterId : requesterId as UniqueId,
      tokenValidUntil: tokenValidUntil == freezed
          ? _value.tokenValidUntil
          : tokenValidUntil as ValidDate,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName as ValidNames,
      requesterNumber: requesterNumber == freezed
          ? _value.requesterNumber
          : requesterNumber as ValidPhoneNumber,
      requesterPhotoUrl: requesterPhotoUrl == freezed
          ? _value.requesterPhotoUrl
          : requesterPhotoUrl as String,
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
    ));
  }
}

/// @nodoc
class _$_QuickPaymentToken extends _QuickPaymentToken {
  const _$_QuickPaymentToken(
      {@required this.requesterId,
      @required this.tokenValidUntil,
      @required this.requesterName,
      @required this.requesterNumber,
      @required this.requesterPhotoUrl,
      @required this.amount})
      : assert(requesterId != null),
        assert(tokenValidUntil != null),
        assert(requesterName != null),
        assert(requesterNumber != null),
        assert(requesterPhotoUrl != null),
        assert(amount != null),
        super._();

  @override
  final UniqueId requesterId;
  @override
  final ValidDate tokenValidUntil;
  @override
  final ValidNames requesterName;
  @override
  final ValidPhoneNumber requesterNumber;
  @override
  final String requesterPhotoUrl;
  @override
  final MoneyAmount amount;

  @override
  String toString() {
    return 'QuickPaymentToken(requesterId: $requesterId, tokenValidUntil: $tokenValidUntil, requesterName: $requesterName, requesterNumber: $requesterNumber, requesterPhotoUrl: $requesterPhotoUrl, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuickPaymentToken &&
            (identical(other.requesterId, requesterId) ||
                const DeepCollectionEquality()
                    .equals(other.requesterId, requesterId)) &&
            (identical(other.tokenValidUntil, tokenValidUntil) ||
                const DeepCollectionEquality()
                    .equals(other.tokenValidUntil, tokenValidUntil)) &&
            (identical(other.requesterName, requesterName) ||
                const DeepCollectionEquality()
                    .equals(other.requesterName, requesterName)) &&
            (identical(other.requesterNumber, requesterNumber) ||
                const DeepCollectionEquality()
                    .equals(other.requesterNumber, requesterNumber)) &&
            (identical(other.requesterPhotoUrl, requesterPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.requesterPhotoUrl, requesterPhotoUrl)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requesterId) ^
      const DeepCollectionEquality().hash(tokenValidUntil) ^
      const DeepCollectionEquality().hash(requesterName) ^
      const DeepCollectionEquality().hash(requesterNumber) ^
      const DeepCollectionEquality().hash(requesterPhotoUrl) ^
      const DeepCollectionEquality().hash(amount);

  @override
  _$QuickPaymentTokenCopyWith<_QuickPaymentToken> get copyWith =>
      __$QuickPaymentTokenCopyWithImpl<_QuickPaymentToken>(this, _$identity);
}

abstract class _QuickPaymentToken extends QuickPaymentToken {
  const _QuickPaymentToken._() : super._();
  const factory _QuickPaymentToken(
      {@required UniqueId requesterId,
      @required ValidDate tokenValidUntil,
      @required ValidNames requesterName,
      @required ValidPhoneNumber requesterNumber,
      @required String requesterPhotoUrl,
      @required MoneyAmount amount}) = _$_QuickPaymentToken;

  @override
  UniqueId get requesterId;
  @override
  ValidDate get tokenValidUntil;
  @override
  ValidNames get requesterName;
  @override
  ValidPhoneNumber get requesterNumber;
  @override
  String get requesterPhotoUrl;
  @override
  MoneyAmount get amount;
  @override
  _$QuickPaymentTokenCopyWith<_QuickPaymentToken> get copyWith;
}
