// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaymentDto _$PaymentDtoFromJson(Map<String, dynamic> json) {
  return _PaymentDto.fromJson(json);
}

/// @nodoc
class _$PaymentDtoTearOff {
  const _$PaymentDtoTearOff();

// ignore: unused_element
  _PaymentDto call(
      {@JsonKey(ignore: true) String id,
      @required String payerId,
      @required String pDisplayNames,
      @required String pPhotoUrl,
      @required String pPhoneNumber,
      @required String receiverId,
      @required String rDisplayNames,
      @required String rPhotoUrl,
      @required String rPhoneNumber,
      @required bool cashed,
      @required String paymentStatus,
      @required double amount,
      @required DateTime unlockDate,
      @required bool isHidden,
      @required bool isFrozen,
      @required bool isDeleted,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _PaymentDto(
      id: id,
      payerId: payerId,
      pDisplayNames: pDisplayNames,
      pPhotoUrl: pPhotoUrl,
      pPhoneNumber: pPhoneNumber,
      receiverId: receiverId,
      rDisplayNames: rDisplayNames,
      rPhotoUrl: rPhotoUrl,
      rPhoneNumber: rPhoneNumber,
      cashed: cashed,
      paymentStatus: paymentStatus,
      amount: amount,
      unlockDate: unlockDate,
      isHidden: isHidden,
      isFrozen: isFrozen,
      isDeleted: isDeleted,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  PaymentDto fromJson(Map<String, Object> json) {
    return PaymentDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentDto = _$PaymentDtoTearOff();

/// @nodoc
mixin _$PaymentDto {
  @JsonKey(ignore: true)
  String get id;
  String get payerId;
  String get pDisplayNames;
  String get pPhotoUrl;
  String get pPhoneNumber;
  String get receiverId;
  String get rDisplayNames;
  String get rPhotoUrl;
  String get rPhoneNumber;
  bool get cashed;
  String get paymentStatus;
  double get amount;
  DateTime get unlockDate;
  bool get isHidden;
  bool get isFrozen;
  bool
      get isDeleted; // Placeholder value --> converted to Time on server where not has been updated to
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $PaymentDtoCopyWith<PaymentDto> get copyWith;
}

/// @nodoc
abstract class $PaymentDtoCopyWith<$Res> {
  factory $PaymentDtoCopyWith(
          PaymentDto value, $Res Function(PaymentDto) then) =
      _$PaymentDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String payerId,
      String pDisplayNames,
      String pPhotoUrl,
      String pPhoneNumber,
      String receiverId,
      String rDisplayNames,
      String rPhotoUrl,
      String rPhoneNumber,
      bool cashed,
      String paymentStatus,
      double amount,
      DateTime unlockDate,
      bool isHidden,
      bool isFrozen,
      bool isDeleted,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$PaymentDtoCopyWithImpl<$Res> implements $PaymentDtoCopyWith<$Res> {
  _$PaymentDtoCopyWithImpl(this._value, this._then);

  final PaymentDto _value;
  // ignore: unused_field
  final $Res Function(PaymentDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object payerId = freezed,
    Object pDisplayNames = freezed,
    Object pPhotoUrl = freezed,
    Object pPhoneNumber = freezed,
    Object receiverId = freezed,
    Object rDisplayNames = freezed,
    Object rPhotoUrl = freezed,
    Object rPhoneNumber = freezed,
    Object cashed = freezed,
    Object paymentStatus = freezed,
    Object amount = freezed,
    Object unlockDate = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      payerId: payerId == freezed ? _value.payerId : payerId as String,
      pDisplayNames: pDisplayNames == freezed
          ? _value.pDisplayNames
          : pDisplayNames as String,
      pPhotoUrl: pPhotoUrl == freezed ? _value.pPhotoUrl : pPhotoUrl as String,
      pPhoneNumber: pPhoneNumber == freezed
          ? _value.pPhoneNumber
          : pPhoneNumber as String,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as String,
      rDisplayNames: rDisplayNames == freezed
          ? _value.rDisplayNames
          : rDisplayNames as String,
      rPhotoUrl: rPhotoUrl == freezed ? _value.rPhotoUrl : rPhotoUrl as String,
      rPhoneNumber: rPhoneNumber == freezed
          ? _value.rPhoneNumber
          : rPhoneNumber as String,
      cashed: cashed == freezed ? _value.cashed : cashed as bool,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus as String,
      amount: amount == freezed ? _value.amount : amount as double,
      unlockDate:
          unlockDate == freezed ? _value.unlockDate : unlockDate as DateTime,
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
abstract class _$PaymentDtoCopyWith<$Res> implements $PaymentDtoCopyWith<$Res> {
  factory _$PaymentDtoCopyWith(
          _PaymentDto value, $Res Function(_PaymentDto) then) =
      __$PaymentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String payerId,
      String pDisplayNames,
      String pPhotoUrl,
      String pPhoneNumber,
      String receiverId,
      String rDisplayNames,
      String rPhotoUrl,
      String rPhoneNumber,
      bool cashed,
      String paymentStatus,
      double amount,
      DateTime unlockDate,
      bool isHidden,
      bool isFrozen,
      bool isDeleted,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$PaymentDtoCopyWithImpl<$Res> extends _$PaymentDtoCopyWithImpl<$Res>
    implements _$PaymentDtoCopyWith<$Res> {
  __$PaymentDtoCopyWithImpl(
      _PaymentDto _value, $Res Function(_PaymentDto) _then)
      : super(_value, (v) => _then(v as _PaymentDto));

  @override
  _PaymentDto get _value => super._value as _PaymentDto;

  @override
  $Res call({
    Object id = freezed,
    Object payerId = freezed,
    Object pDisplayNames = freezed,
    Object pPhotoUrl = freezed,
    Object pPhoneNumber = freezed,
    Object receiverId = freezed,
    Object rDisplayNames = freezed,
    Object rPhotoUrl = freezed,
    Object rPhoneNumber = freezed,
    Object cashed = freezed,
    Object paymentStatus = freezed,
    Object amount = freezed,
    Object unlockDate = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_PaymentDto(
      id: id == freezed ? _value.id : id as String,
      payerId: payerId == freezed ? _value.payerId : payerId as String,
      pDisplayNames: pDisplayNames == freezed
          ? _value.pDisplayNames
          : pDisplayNames as String,
      pPhotoUrl: pPhotoUrl == freezed ? _value.pPhotoUrl : pPhotoUrl as String,
      pPhoneNumber: pPhoneNumber == freezed
          ? _value.pPhoneNumber
          : pPhoneNumber as String,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as String,
      rDisplayNames: rDisplayNames == freezed
          ? _value.rDisplayNames
          : rDisplayNames as String,
      rPhotoUrl: rPhotoUrl == freezed ? _value.rPhotoUrl : rPhotoUrl as String,
      rPhoneNumber: rPhoneNumber == freezed
          ? _value.rPhoneNumber
          : rPhoneNumber as String,
      cashed: cashed == freezed ? _value.cashed : cashed as bool,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus as String,
      amount: amount == freezed ? _value.amount : amount as double,
      unlockDate:
          unlockDate == freezed ? _value.unlockDate : unlockDate as DateTime,
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
class _$_PaymentDto extends _PaymentDto {
  const _$_PaymentDto(
      {@JsonKey(ignore: true) this.id,
      @required this.payerId,
      @required this.pDisplayNames,
      @required this.pPhotoUrl,
      @required this.pPhoneNumber,
      @required this.receiverId,
      @required this.rDisplayNames,
      @required this.rPhotoUrl,
      @required this.rPhoneNumber,
      @required this.cashed,
      @required this.paymentStatus,
      @required this.amount,
      @required this.unlockDate,
      @required this.isHidden,
      @required this.isFrozen,
      @required this.isDeleted,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(payerId != null),
        assert(pDisplayNames != null),
        assert(pPhotoUrl != null),
        assert(pPhoneNumber != null),
        assert(receiverId != null),
        assert(rDisplayNames != null),
        assert(rPhotoUrl != null),
        assert(rPhoneNumber != null),
        assert(cashed != null),
        assert(paymentStatus != null),
        assert(amount != null),
        assert(unlockDate != null),
        assert(isHidden != null),
        assert(isFrozen != null),
        assert(isDeleted != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String payerId;
  @override
  final String pDisplayNames;
  @override
  final String pPhotoUrl;
  @override
  final String pPhoneNumber;
  @override
  final String receiverId;
  @override
  final String rDisplayNames;
  @override
  final String rPhotoUrl;
  @override
  final String rPhoneNumber;
  @override
  final bool cashed;
  @override
  final String paymentStatus;
  @override
  final double amount;
  @override
  final DateTime unlockDate;
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
    return 'PaymentDto(id: $id, payerId: $payerId, pDisplayNames: $pDisplayNames, pPhotoUrl: $pPhotoUrl, pPhoneNumber: $pPhoneNumber, receiverId: $receiverId, rDisplayNames: $rDisplayNames, rPhotoUrl: $rPhotoUrl, rPhoneNumber: $rPhoneNumber, cashed: $cashed, paymentStatus: $paymentStatus, amount: $amount, unlockDate: $unlockDate, isHidden: $isHidden, isFrozen: $isFrozen, isDeleted: $isDeleted, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.payerId, payerId) ||
                const DeepCollectionEquality()
                    .equals(other.payerId, payerId)) &&
            (identical(other.pDisplayNames, pDisplayNames) ||
                const DeepCollectionEquality()
                    .equals(other.pDisplayNames, pDisplayNames)) &&
            (identical(other.pPhotoUrl, pPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.pPhotoUrl, pPhotoUrl)) &&
            (identical(other.pPhoneNumber, pPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pPhoneNumber, pPhoneNumber)) &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.rDisplayNames, rDisplayNames) ||
                const DeepCollectionEquality()
                    .equals(other.rDisplayNames, rDisplayNames)) &&
            (identical(other.rPhotoUrl, rPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.rPhotoUrl, rPhotoUrl)) &&
            (identical(other.rPhoneNumber, rPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.rPhoneNumber, rPhoneNumber)) &&
            (identical(other.cashed, cashed) ||
                const DeepCollectionEquality().equals(other.cashed, cashed)) &&
            (identical(other.paymentStatus, paymentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.paymentStatus, paymentStatus)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.unlockDate, unlockDate) ||
                const DeepCollectionEquality()
                    .equals(other.unlockDate, unlockDate)) &&
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
      const DeepCollectionEquality().hash(payerId) ^
      const DeepCollectionEquality().hash(pDisplayNames) ^
      const DeepCollectionEquality().hash(pPhotoUrl) ^
      const DeepCollectionEquality().hash(pPhoneNumber) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(rDisplayNames) ^
      const DeepCollectionEquality().hash(rPhotoUrl) ^
      const DeepCollectionEquality().hash(rPhoneNumber) ^
      const DeepCollectionEquality().hash(cashed) ^
      const DeepCollectionEquality().hash(paymentStatus) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(unlockDate) ^
      const DeepCollectionEquality().hash(isHidden) ^
      const DeepCollectionEquality().hash(isFrozen) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$PaymentDtoCopyWith<_PaymentDto> get copyWith =>
      __$PaymentDtoCopyWithImpl<_PaymentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentDtoToJson(this);
  }
}

abstract class _PaymentDto extends PaymentDto {
  const _PaymentDto._() : super._();
  const factory _PaymentDto(
          {@JsonKey(ignore: true) String id,
          @required String payerId,
          @required String pDisplayNames,
          @required String pPhotoUrl,
          @required String pPhoneNumber,
          @required String receiverId,
          @required String rDisplayNames,
          @required String rPhotoUrl,
          @required String rPhoneNumber,
          @required bool cashed,
          @required String paymentStatus,
          @required double amount,
          @required DateTime unlockDate,
          @required bool isHidden,
          @required bool isFrozen,
          @required bool isDeleted,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_PaymentDto;

  factory _PaymentDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get payerId;
  @override
  String get pDisplayNames;
  @override
  String get pPhotoUrl;
  @override
  String get pPhoneNumber;
  @override
  String get receiverId;
  @override
  String get rDisplayNames;
  @override
  String get rPhotoUrl;
  @override
  String get rPhoneNumber;
  @override
  bool get cashed;
  @override
  String get paymentStatus;
  @override
  double get amount;
  @override
  DateTime get unlockDate;
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
  _$PaymentDtoCopyWith<_PaymentDto> get copyWith;
}
