// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentTearOff {
  const _$PaymentTearOff();

// ignore: unused_element
  _Payment call(
      {@required UniqueId id,
      @required UniqueId payerId,
      @required ValidNames pDisplayNames,
      @required ValidPhoneNumber pPhoneNumber,
      @required String pPhotoUrl,
      @required UniqueId receiverId,
      @required ValidNames rDisplayName,
      @required ValidPhoneNumber rPhoneNumber,
      @required String rPhotoUrl,
      @required bool cashed,
      @required PaymentStatus paymentStatus,
      @required MoneyAmount amount,
      @required ValidDate unlockDate,
      @required bool isHidden,
      @required bool isFrozen,
      @required bool isDeleted}) {
    return _Payment(
      id: id,
      payerId: payerId,
      pDisplayNames: pDisplayNames,
      pPhoneNumber: pPhoneNumber,
      pPhotoUrl: pPhotoUrl,
      receiverId: receiverId,
      rDisplayName: rDisplayName,
      rPhoneNumber: rPhoneNumber,
      rPhotoUrl: rPhotoUrl,
      cashed: cashed,
      paymentStatus: paymentStatus,
      amount: amount,
      unlockDate: unlockDate,
      isHidden: isHidden,
      isFrozen: isFrozen,
      isDeleted: isDeleted,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Payment = _$PaymentTearOff();

/// @nodoc
mixin _$Payment {
  UniqueId get id;
  UniqueId get payerId;
  ValidNames get pDisplayNames;
  ValidPhoneNumber get pPhoneNumber;
  String get pPhotoUrl;
  UniqueId get receiverId;
  ValidNames get rDisplayName;
  ValidPhoneNumber get rPhoneNumber;
  String get rPhotoUrl;
  bool get cashed;
  PaymentStatus get paymentStatus;
  MoneyAmount get amount;
  ValidDate get unlockDate;
  bool get isHidden;
  bool get isFrozen;
  bool get isDeleted;

  $PaymentCopyWith<Payment> get copyWith;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId payerId,
      ValidNames pDisplayNames,
      ValidPhoneNumber pPhoneNumber,
      String pPhotoUrl,
      UniqueId receiverId,
      ValidNames rDisplayName,
      ValidPhoneNumber rPhoneNumber,
      String rPhotoUrl,
      bool cashed,
      PaymentStatus paymentStatus,
      MoneyAmount amount,
      ValidDate unlockDate,
      bool isHidden,
      bool isFrozen,
      bool isDeleted});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res> implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  final Payment _value;
  // ignore: unused_field
  final $Res Function(Payment) _then;

  @override
  $Res call({
    Object id = freezed,
    Object payerId = freezed,
    Object pDisplayNames = freezed,
    Object pPhoneNumber = freezed,
    Object pPhotoUrl = freezed,
    Object receiverId = freezed,
    Object rDisplayName = freezed,
    Object rPhoneNumber = freezed,
    Object rPhotoUrl = freezed,
    Object cashed = freezed,
    Object paymentStatus = freezed,
    Object amount = freezed,
    Object unlockDate = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      payerId: payerId == freezed ? _value.payerId : payerId as UniqueId,
      pDisplayNames: pDisplayNames == freezed
          ? _value.pDisplayNames
          : pDisplayNames as ValidNames,
      pPhoneNumber: pPhoneNumber == freezed
          ? _value.pPhoneNumber
          : pPhoneNumber as ValidPhoneNumber,
      pPhotoUrl: pPhotoUrl == freezed ? _value.pPhotoUrl : pPhotoUrl as String,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as UniqueId,
      rDisplayName: rDisplayName == freezed
          ? _value.rDisplayName
          : rDisplayName as ValidNames,
      rPhoneNumber: rPhoneNumber == freezed
          ? _value.rPhoneNumber
          : rPhoneNumber as ValidPhoneNumber,
      rPhotoUrl: rPhotoUrl == freezed ? _value.rPhotoUrl : rPhotoUrl as String,
      cashed: cashed == freezed ? _value.cashed : cashed as bool,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus as PaymentStatus,
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      unlockDate:
          unlockDate == freezed ? _value.unlockDate : unlockDate as ValidDate,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isFrozen: isFrozen == freezed ? _value.isFrozen : isFrozen as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
    ));
  }
}

/// @nodoc
abstract class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) then) =
      __$PaymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId payerId,
      ValidNames pDisplayNames,
      ValidPhoneNumber pPhoneNumber,
      String pPhotoUrl,
      UniqueId receiverId,
      ValidNames rDisplayName,
      ValidPhoneNumber rPhoneNumber,
      String rPhotoUrl,
      bool cashed,
      PaymentStatus paymentStatus,
      MoneyAmount amount,
      ValidDate unlockDate,
      bool isHidden,
      bool isFrozen,
      bool isDeleted});
}

/// @nodoc
class __$PaymentCopyWithImpl<$Res> extends _$PaymentCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(_Payment _value, $Res Function(_Payment) _then)
      : super(_value, (v) => _then(v as _Payment));

  @override
  _Payment get _value => super._value as _Payment;

  @override
  $Res call({
    Object id = freezed,
    Object payerId = freezed,
    Object pDisplayNames = freezed,
    Object pPhoneNumber = freezed,
    Object pPhotoUrl = freezed,
    Object receiverId = freezed,
    Object rDisplayName = freezed,
    Object rPhoneNumber = freezed,
    Object rPhotoUrl = freezed,
    Object cashed = freezed,
    Object paymentStatus = freezed,
    Object amount = freezed,
    Object unlockDate = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
  }) {
    return _then(_Payment(
      id: id == freezed ? _value.id : id as UniqueId,
      payerId: payerId == freezed ? _value.payerId : payerId as UniqueId,
      pDisplayNames: pDisplayNames == freezed
          ? _value.pDisplayNames
          : pDisplayNames as ValidNames,
      pPhoneNumber: pPhoneNumber == freezed
          ? _value.pPhoneNumber
          : pPhoneNumber as ValidPhoneNumber,
      pPhotoUrl: pPhotoUrl == freezed ? _value.pPhotoUrl : pPhotoUrl as String,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as UniqueId,
      rDisplayName: rDisplayName == freezed
          ? _value.rDisplayName
          : rDisplayName as ValidNames,
      rPhoneNumber: rPhoneNumber == freezed
          ? _value.rPhoneNumber
          : rPhoneNumber as ValidPhoneNumber,
      rPhotoUrl: rPhotoUrl == freezed ? _value.rPhotoUrl : rPhotoUrl as String,
      cashed: cashed == freezed ? _value.cashed : cashed as bool,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus as PaymentStatus,
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      unlockDate:
          unlockDate == freezed ? _value.unlockDate : unlockDate as ValidDate,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isFrozen: isFrozen == freezed ? _value.isFrozen : isFrozen as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
    ));
  }
}

/// @nodoc
class _$_Payment extends _Payment with DiagnosticableTreeMixin {
  const _$_Payment(
      {@required this.id,
      @required this.payerId,
      @required this.pDisplayNames,
      @required this.pPhoneNumber,
      @required this.pPhotoUrl,
      @required this.receiverId,
      @required this.rDisplayName,
      @required this.rPhoneNumber,
      @required this.rPhotoUrl,
      @required this.cashed,
      @required this.paymentStatus,
      @required this.amount,
      @required this.unlockDate,
      @required this.isHidden,
      @required this.isFrozen,
      @required this.isDeleted})
      : assert(id != null),
        assert(payerId != null),
        assert(pDisplayNames != null),
        assert(pPhoneNumber != null),
        assert(pPhotoUrl != null),
        assert(receiverId != null),
        assert(rDisplayName != null),
        assert(rPhoneNumber != null),
        assert(rPhotoUrl != null),
        assert(cashed != null),
        assert(paymentStatus != null),
        assert(amount != null),
        assert(unlockDate != null),
        assert(isHidden != null),
        assert(isFrozen != null),
        assert(isDeleted != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId payerId;
  @override
  final ValidNames pDisplayNames;
  @override
  final ValidPhoneNumber pPhoneNumber;
  @override
  final String pPhotoUrl;
  @override
  final UniqueId receiverId;
  @override
  final ValidNames rDisplayName;
  @override
  final ValidPhoneNumber rPhoneNumber;
  @override
  final String rPhotoUrl;
  @override
  final bool cashed;
  @override
  final PaymentStatus paymentStatus;
  @override
  final MoneyAmount amount;
  @override
  final ValidDate unlockDate;
  @override
  final bool isHidden;
  @override
  final bool isFrozen;
  @override
  final bool isDeleted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Payment(id: $id, payerId: $payerId, pDisplayNames: $pDisplayNames, pPhoneNumber: $pPhoneNumber, pPhotoUrl: $pPhotoUrl, receiverId: $receiverId, rDisplayName: $rDisplayName, rPhoneNumber: $rPhoneNumber, rPhotoUrl: $rPhotoUrl, cashed: $cashed, paymentStatus: $paymentStatus, amount: $amount, unlockDate: $unlockDate, isHidden: $isHidden, isFrozen: $isFrozen, isDeleted: $isDeleted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Payment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('payerId', payerId))
      ..add(DiagnosticsProperty('pDisplayNames', pDisplayNames))
      ..add(DiagnosticsProperty('pPhoneNumber', pPhoneNumber))
      ..add(DiagnosticsProperty('pPhotoUrl', pPhotoUrl))
      ..add(DiagnosticsProperty('receiverId', receiverId))
      ..add(DiagnosticsProperty('rDisplayName', rDisplayName))
      ..add(DiagnosticsProperty('rPhoneNumber', rPhoneNumber))
      ..add(DiagnosticsProperty('rPhotoUrl', rPhotoUrl))
      ..add(DiagnosticsProperty('cashed', cashed))
      ..add(DiagnosticsProperty('paymentStatus', paymentStatus))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('unlockDate', unlockDate))
      ..add(DiagnosticsProperty('isHidden', isHidden))
      ..add(DiagnosticsProperty('isFrozen', isFrozen))
      ..add(DiagnosticsProperty('isDeleted', isDeleted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Payment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.payerId, payerId) ||
                const DeepCollectionEquality()
                    .equals(other.payerId, payerId)) &&
            (identical(other.pDisplayNames, pDisplayNames) ||
                const DeepCollectionEquality()
                    .equals(other.pDisplayNames, pDisplayNames)) &&
            (identical(other.pPhoneNumber, pPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pPhoneNumber, pPhoneNumber)) &&
            (identical(other.pPhotoUrl, pPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.pPhotoUrl, pPhotoUrl)) &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.rDisplayName, rDisplayName) ||
                const DeepCollectionEquality()
                    .equals(other.rDisplayName, rDisplayName)) &&
            (identical(other.rPhoneNumber, rPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.rPhoneNumber, rPhoneNumber)) &&
            (identical(other.rPhotoUrl, rPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.rPhotoUrl, rPhotoUrl)) &&
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
                    .equals(other.isDeleted, isDeleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(payerId) ^
      const DeepCollectionEquality().hash(pDisplayNames) ^
      const DeepCollectionEquality().hash(pPhoneNumber) ^
      const DeepCollectionEquality().hash(pPhotoUrl) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(rDisplayName) ^
      const DeepCollectionEquality().hash(rPhoneNumber) ^
      const DeepCollectionEquality().hash(rPhotoUrl) ^
      const DeepCollectionEquality().hash(cashed) ^
      const DeepCollectionEquality().hash(paymentStatus) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(unlockDate) ^
      const DeepCollectionEquality().hash(isHidden) ^
      const DeepCollectionEquality().hash(isFrozen) ^
      const DeepCollectionEquality().hash(isDeleted);

  @override
  _$PaymentCopyWith<_Payment> get copyWith =>
      __$PaymentCopyWithImpl<_Payment>(this, _$identity);
}

abstract class _Payment extends Payment {
  const _Payment._() : super._();
  const factory _Payment(
      {@required UniqueId id,
      @required UniqueId payerId,
      @required ValidNames pDisplayNames,
      @required ValidPhoneNumber pPhoneNumber,
      @required String pPhotoUrl,
      @required UniqueId receiverId,
      @required ValidNames rDisplayName,
      @required ValidPhoneNumber rPhoneNumber,
      @required String rPhotoUrl,
      @required bool cashed,
      @required PaymentStatus paymentStatus,
      @required MoneyAmount amount,
      @required ValidDate unlockDate,
      @required bool isHidden,
      @required bool isFrozen,
      @required bool isDeleted}) = _$_Payment;

  @override
  UniqueId get id;
  @override
  UniqueId get payerId;
  @override
  ValidNames get pDisplayNames;
  @override
  ValidPhoneNumber get pPhoneNumber;
  @override
  String get pPhotoUrl;
  @override
  UniqueId get receiverId;
  @override
  ValidNames get rDisplayName;
  @override
  ValidPhoneNumber get rPhoneNumber;
  @override
  String get rPhotoUrl;
  @override
  bool get cashed;
  @override
  PaymentStatus get paymentStatus;
  @override
  MoneyAmount get amount;
  @override
  ValidDate get unlockDate;
  @override
  bool get isHidden;
  @override
  bool get isFrozen;
  @override
  bool get isDeleted;
  @override
  _$PaymentCopyWith<_Payment> get copyWith;
}
