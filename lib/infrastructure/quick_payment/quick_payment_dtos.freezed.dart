// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quick_payment_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
QuickPaymentDto _$QuickPaymentDtoFromJson(Map<String, dynamic> json) {
  return _QuickPaymentDto.fromJson(json);
}

/// @nodoc
class _$QuickPaymentDtoTearOff {
  const _$QuickPaymentDtoTearOff();

// ignore: unused_element
  _QuickPaymentDto call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(ignore: true) DateTime date,
      @required String requesterId,
      @required bool cashed,
      @required String payerId,
      @required double amount,
      @required bool isHidden,
      @required bool isDeleted,
      @required String pTel,
      @required String rTel,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _QuickPaymentDto(
      id: id,
      date: date,
      requesterId: requesterId,
      cashed: cashed,
      payerId: payerId,
      amount: amount,
      isHidden: isHidden,
      isDeleted: isDeleted,
      pTel: pTel,
      rTel: rTel,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  QuickPaymentDto fromJson(Map<String, Object> json) {
    return QuickPaymentDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $QuickPaymentDto = _$QuickPaymentDtoTearOff();

/// @nodoc
mixin _$QuickPaymentDto {
  @JsonKey(ignore: true)
  String get id;
  @JsonKey(ignore: true)
  DateTime get date;
  String get requesterId;
  bool get cashed;
  String get payerId;
  double get amount;
  bool get isHidden;
  bool get isDeleted;
  String get pTel;
  String
      get rTel; // Placeholder value --> converted to Time on server where not has been updated to
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $QuickPaymentDtoCopyWith<QuickPaymentDto> get copyWith;
}

/// @nodoc
abstract class $QuickPaymentDtoCopyWith<$Res> {
  factory $QuickPaymentDtoCopyWith(
          QuickPaymentDto value, $Res Function(QuickPaymentDto) then) =
      _$QuickPaymentDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(ignore: true) DateTime date,
      String requesterId,
      bool cashed,
      String payerId,
      double amount,
      bool isHidden,
      bool isDeleted,
      String pTel,
      String rTel,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$QuickPaymentDtoCopyWithImpl<$Res>
    implements $QuickPaymentDtoCopyWith<$Res> {
  _$QuickPaymentDtoCopyWithImpl(this._value, this._then);

  final QuickPaymentDto _value;
  // ignore: unused_field
  final $Res Function(QuickPaymentDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object date = freezed,
    Object requesterId = freezed,
    Object cashed = freezed,
    Object payerId = freezed,
    Object amount = freezed,
    Object isHidden = freezed,
    Object isDeleted = freezed,
    Object pTel = freezed,
    Object rTel = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      date: date == freezed ? _value.date : date as DateTime,
      requesterId:
          requesterId == freezed ? _value.requesterId : requesterId as String,
      cashed: cashed == freezed ? _value.cashed : cashed as bool,
      payerId: payerId == freezed ? _value.payerId : payerId as String,
      amount: amount == freezed ? _value.amount : amount as double,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
      pTel: pTel == freezed ? _value.pTel : pTel as String,
      rTel: rTel == freezed ? _value.rTel : rTel as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$QuickPaymentDtoCopyWith<$Res>
    implements $QuickPaymentDtoCopyWith<$Res> {
  factory _$QuickPaymentDtoCopyWith(
          _QuickPaymentDto value, $Res Function(_QuickPaymentDto) then) =
      __$QuickPaymentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(ignore: true) DateTime date,
      String requesterId,
      bool cashed,
      String payerId,
      double amount,
      bool isHidden,
      bool isDeleted,
      String pTel,
      String rTel,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$QuickPaymentDtoCopyWithImpl<$Res>
    extends _$QuickPaymentDtoCopyWithImpl<$Res>
    implements _$QuickPaymentDtoCopyWith<$Res> {
  __$QuickPaymentDtoCopyWithImpl(
      _QuickPaymentDto _value, $Res Function(_QuickPaymentDto) _then)
      : super(_value, (v) => _then(v as _QuickPaymentDto));

  @override
  _QuickPaymentDto get _value => super._value as _QuickPaymentDto;

  @override
  $Res call({
    Object id = freezed,
    Object date = freezed,
    Object requesterId = freezed,
    Object cashed = freezed,
    Object payerId = freezed,
    Object amount = freezed,
    Object isHidden = freezed,
    Object isDeleted = freezed,
    Object pTel = freezed,
    Object rTel = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_QuickPaymentDto(
      id: id == freezed ? _value.id : id as String,
      date: date == freezed ? _value.date : date as DateTime,
      requesterId:
          requesterId == freezed ? _value.requesterId : requesterId as String,
      cashed: cashed == freezed ? _value.cashed : cashed as bool,
      payerId: payerId == freezed ? _value.payerId : payerId as String,
      amount: amount == freezed ? _value.amount : amount as double,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
      pTel: pTel == freezed ? _value.pTel : pTel as String,
      rTel: rTel == freezed ? _value.rTel : rTel as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_QuickPaymentDto extends _QuickPaymentDto with DiagnosticableTreeMixin {
  const _$_QuickPaymentDto(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(ignore: true) this.date,
      @required this.requesterId,
      @required this.cashed,
      @required this.payerId,
      @required this.amount,
      @required this.isHidden,
      @required this.isDeleted,
      @required this.pTel,
      @required this.rTel,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(requesterId != null),
        assert(cashed != null),
        assert(payerId != null),
        assert(amount != null),
        assert(isHidden != null),
        assert(isDeleted != null),
        assert(pTel != null),
        assert(rTel != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_QuickPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$_$_QuickPaymentDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  @JsonKey(ignore: true)
  final DateTime date;
  @override
  final String requesterId;
  @override
  final bool cashed;
  @override
  final String payerId;
  @override
  final double amount;
  @override
  final bool isHidden;
  @override
  final bool isDeleted;
  @override
  final String pTel;
  @override
  final String rTel;
  @override // Placeholder value --> converted to Time on server where not has been updated to
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuickPaymentDto(id: $id, date: $date, requesterId: $requesterId, cashed: $cashed, payerId: $payerId, amount: $amount, isHidden: $isHidden, isDeleted: $isDeleted, pTel: $pTel, rTel: $rTel, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuickPaymentDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('requesterId', requesterId))
      ..add(DiagnosticsProperty('cashed', cashed))
      ..add(DiagnosticsProperty('payerId', payerId))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('isHidden', isHidden))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty('pTel', pTel))
      ..add(DiagnosticsProperty('rTel', rTel))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuickPaymentDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.requesterId, requesterId) ||
                const DeepCollectionEquality()
                    .equals(other.requesterId, requesterId)) &&
            (identical(other.cashed, cashed) ||
                const DeepCollectionEquality().equals(other.cashed, cashed)) &&
            (identical(other.payerId, payerId) ||
                const DeepCollectionEquality()
                    .equals(other.payerId, payerId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.isHidden, isHidden) ||
                const DeepCollectionEquality()
                    .equals(other.isHidden, isHidden)) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleted, isDeleted)) &&
            (identical(other.pTel, pTel) ||
                const DeepCollectionEquality().equals(other.pTel, pTel)) &&
            (identical(other.rTel, rTel) ||
                const DeepCollectionEquality().equals(other.rTel, rTel)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(requesterId) ^
      const DeepCollectionEquality().hash(cashed) ^
      const DeepCollectionEquality().hash(payerId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(isHidden) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(pTel) ^
      const DeepCollectionEquality().hash(rTel) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$QuickPaymentDtoCopyWith<_QuickPaymentDto> get copyWith =>
      __$QuickPaymentDtoCopyWithImpl<_QuickPaymentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuickPaymentDtoToJson(this);
  }
}

abstract class _QuickPaymentDto extends QuickPaymentDto {
  const _QuickPaymentDto._() : super._();
  const factory _QuickPaymentDto(
          {@JsonKey(ignore: true) String id,
          @JsonKey(ignore: true) DateTime date,
          @required String requesterId,
          @required bool cashed,
          @required String payerId,
          @required double amount,
          @required bool isHidden,
          @required bool isDeleted,
          @required String pTel,
          @required String rTel,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_QuickPaymentDto;

  factory _QuickPaymentDto.fromJson(Map<String, dynamic> json) =
      _$_QuickPaymentDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  @JsonKey(ignore: true)
  DateTime get date;
  @override
  String get requesterId;
  @override
  bool get cashed;
  @override
  String get payerId;
  @override
  double get amount;
  @override
  bool get isHidden;
  @override
  bool get isDeleted;
  @override
  String get pTel;
  @override
  String get rTel;
  @override // Placeholder value --> converted to Time on server where not has been updated to
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$QuickPaymentDtoCopyWith<_QuickPaymentDto> get copyWith;
}
