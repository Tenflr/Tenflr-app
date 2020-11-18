// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quick_payment_token_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
QuickPaymentTokenDto _$QuickPaymentTokenDtoFromJson(Map<String, dynamic> json) {
  return _QuickPaymentTokenDto.fromJson(json);
}

/// @nodoc
class _$QuickPaymentTokenDtoTearOff {
  const _$QuickPaymentTokenDtoTearOff();

// ignore: unused_element
  _QuickPaymentTokenDto call(
      {@required String requesterId,
      @required DateTime tokenValidUntil,
      @required String requesterName,
      @required String requesterNumber,
      @required String requesterPhotoUrl,
      @required double amount}) {
    return _QuickPaymentTokenDto(
      requesterId: requesterId,
      tokenValidUntil: tokenValidUntil,
      requesterName: requesterName,
      requesterNumber: requesterNumber,
      requesterPhotoUrl: requesterPhotoUrl,
      amount: amount,
    );
  }

// ignore: unused_element
  QuickPaymentTokenDto fromJson(Map<String, Object> json) {
    return QuickPaymentTokenDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $QuickPaymentTokenDto = _$QuickPaymentTokenDtoTearOff();

/// @nodoc
mixin _$QuickPaymentTokenDto {
  String get requesterId;
  DateTime get tokenValidUntil;
  String get requesterName;
  String get requesterNumber;
  String get requesterPhotoUrl;
  double get amount;

  Map<String, dynamic> toJson();
  $QuickPaymentTokenDtoCopyWith<QuickPaymentTokenDto> get copyWith;
}

/// @nodoc
abstract class $QuickPaymentTokenDtoCopyWith<$Res> {
  factory $QuickPaymentTokenDtoCopyWith(QuickPaymentTokenDto value,
          $Res Function(QuickPaymentTokenDto) then) =
      _$QuickPaymentTokenDtoCopyWithImpl<$Res>;
  $Res call(
      {String requesterId,
      DateTime tokenValidUntil,
      String requesterName,
      String requesterNumber,
      String requesterPhotoUrl,
      double amount});
}

/// @nodoc
class _$QuickPaymentTokenDtoCopyWithImpl<$Res>
    implements $QuickPaymentTokenDtoCopyWith<$Res> {
  _$QuickPaymentTokenDtoCopyWithImpl(this._value, this._then);

  final QuickPaymentTokenDto _value;
  // ignore: unused_field
  final $Res Function(QuickPaymentTokenDto) _then;

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
          requesterId == freezed ? _value.requesterId : requesterId as String,
      tokenValidUntil: tokenValidUntil == freezed
          ? _value.tokenValidUntil
          : tokenValidUntil as DateTime,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName as String,
      requesterNumber: requesterNumber == freezed
          ? _value.requesterNumber
          : requesterNumber as String,
      requesterPhotoUrl: requesterPhotoUrl == freezed
          ? _value.requesterPhotoUrl
          : requesterPhotoUrl as String,
      amount: amount == freezed ? _value.amount : amount as double,
    ));
  }
}

/// @nodoc
abstract class _$QuickPaymentTokenDtoCopyWith<$Res>
    implements $QuickPaymentTokenDtoCopyWith<$Res> {
  factory _$QuickPaymentTokenDtoCopyWith(_QuickPaymentTokenDto value,
          $Res Function(_QuickPaymentTokenDto) then) =
      __$QuickPaymentTokenDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String requesterId,
      DateTime tokenValidUntil,
      String requesterName,
      String requesterNumber,
      String requesterPhotoUrl,
      double amount});
}

/// @nodoc
class __$QuickPaymentTokenDtoCopyWithImpl<$Res>
    extends _$QuickPaymentTokenDtoCopyWithImpl<$Res>
    implements _$QuickPaymentTokenDtoCopyWith<$Res> {
  __$QuickPaymentTokenDtoCopyWithImpl(
      _QuickPaymentTokenDto _value, $Res Function(_QuickPaymentTokenDto) _then)
      : super(_value, (v) => _then(v as _QuickPaymentTokenDto));

  @override
  _QuickPaymentTokenDto get _value => super._value as _QuickPaymentTokenDto;

  @override
  $Res call({
    Object requesterId = freezed,
    Object tokenValidUntil = freezed,
    Object requesterName = freezed,
    Object requesterNumber = freezed,
    Object requesterPhotoUrl = freezed,
    Object amount = freezed,
  }) {
    return _then(_QuickPaymentTokenDto(
      requesterId:
          requesterId == freezed ? _value.requesterId : requesterId as String,
      tokenValidUntil: tokenValidUntil == freezed
          ? _value.tokenValidUntil
          : tokenValidUntil as DateTime,
      requesterName: requesterName == freezed
          ? _value.requesterName
          : requesterName as String,
      requesterNumber: requesterNumber == freezed
          ? _value.requesterNumber
          : requesterNumber as String,
      requesterPhotoUrl: requesterPhotoUrl == freezed
          ? _value.requesterPhotoUrl
          : requesterPhotoUrl as String,
      amount: amount == freezed ? _value.amount : amount as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_QuickPaymentTokenDto extends _QuickPaymentTokenDto
    with DiagnosticableTreeMixin {
  const _$_QuickPaymentTokenDto(
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

  factory _$_QuickPaymentTokenDto.fromJson(Map<String, dynamic> json) =>
      _$_$_QuickPaymentTokenDtoFromJson(json);

  @override
  final String requesterId;
  @override
  final DateTime tokenValidUntil;
  @override
  final String requesterName;
  @override
  final String requesterNumber;
  @override
  final String requesterPhotoUrl;
  @override
  final double amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuickPaymentTokenDto(requesterId: $requesterId, tokenValidUntil: $tokenValidUntil, requesterName: $requesterName, requesterNumber: $requesterNumber, requesterPhotoUrl: $requesterPhotoUrl, amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuickPaymentTokenDto'))
      ..add(DiagnosticsProperty('requesterId', requesterId))
      ..add(DiagnosticsProperty('tokenValidUntil', tokenValidUntil))
      ..add(DiagnosticsProperty('requesterName', requesterName))
      ..add(DiagnosticsProperty('requesterNumber', requesterNumber))
      ..add(DiagnosticsProperty('requesterPhotoUrl', requesterPhotoUrl))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuickPaymentTokenDto &&
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
  _$QuickPaymentTokenDtoCopyWith<_QuickPaymentTokenDto> get copyWith =>
      __$QuickPaymentTokenDtoCopyWithImpl<_QuickPaymentTokenDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuickPaymentTokenDtoToJson(this);
  }
}

abstract class _QuickPaymentTokenDto extends QuickPaymentTokenDto {
  const _QuickPaymentTokenDto._() : super._();
  const factory _QuickPaymentTokenDto(
      {@required String requesterId,
      @required DateTime tokenValidUntil,
      @required String requesterName,
      @required String requesterNumber,
      @required String requesterPhotoUrl,
      @required double amount}) = _$_QuickPaymentTokenDto;

  factory _QuickPaymentTokenDto.fromJson(Map<String, dynamic> json) =
      _$_QuickPaymentTokenDto.fromJson;

  @override
  String get requesterId;
  @override
  DateTime get tokenValidUntil;
  @override
  String get requesterName;
  @override
  String get requesterNumber;
  @override
  String get requesterPhotoUrl;
  @override
  double get amount;
  @override
  _$QuickPaymentTokenDtoCopyWith<_QuickPaymentTokenDto> get copyWith;
}
