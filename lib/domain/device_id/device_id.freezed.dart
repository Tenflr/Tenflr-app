// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'device_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DeviceIdTearOff {
  const _$DeviceIdTearOff();

// ignore: unused_element
  _DeviceId call(
      {@required UniqueId id,
      @required EmailAddress email,
      @required ValidPhoneNumber tel,
      @required String dName,
      @required String dVer,
      @required bool isTelPk}) {
    return _DeviceId(
      id: id,
      email: email,
      tel: tel,
      dName: dName,
      dVer: dVer,
      isTelPk: isTelPk,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeviceId = _$DeviceIdTearOff();

/// @nodoc
mixin _$DeviceId {
  UniqueId get id; // device UUID
  EmailAddress get email;
  ValidPhoneNumber get tel;
  String get dName; // deviceName
  String get dVer; // deviceVersion
  bool get isTelPk;

  $DeviceIdCopyWith<DeviceId> get copyWith;
}

/// @nodoc
abstract class $DeviceIdCopyWith<$Res> {
  factory $DeviceIdCopyWith(DeviceId value, $Res Function(DeviceId) then) =
      _$DeviceIdCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      EmailAddress email,
      ValidPhoneNumber tel,
      String dName,
      String dVer,
      bool isTelPk});
}

/// @nodoc
class _$DeviceIdCopyWithImpl<$Res> implements $DeviceIdCopyWith<$Res> {
  _$DeviceIdCopyWithImpl(this._value, this._then);

  final DeviceId _value;
  // ignore: unused_field
  final $Res Function(DeviceId) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object tel = freezed,
    Object dName = freezed,
    Object dVer = freezed,
    Object isTelPk = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      email: email == freezed ? _value.email : email as EmailAddress,
      tel: tel == freezed ? _value.tel : tel as ValidPhoneNumber,
      dName: dName == freezed ? _value.dName : dName as String,
      dVer: dVer == freezed ? _value.dVer : dVer as String,
      isTelPk: isTelPk == freezed ? _value.isTelPk : isTelPk as bool,
    ));
  }
}

/// @nodoc
abstract class _$DeviceIdCopyWith<$Res> implements $DeviceIdCopyWith<$Res> {
  factory _$DeviceIdCopyWith(_DeviceId value, $Res Function(_DeviceId) then) =
      __$DeviceIdCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      EmailAddress email,
      ValidPhoneNumber tel,
      String dName,
      String dVer,
      bool isTelPk});
}

/// @nodoc
class __$DeviceIdCopyWithImpl<$Res> extends _$DeviceIdCopyWithImpl<$Res>
    implements _$DeviceIdCopyWith<$Res> {
  __$DeviceIdCopyWithImpl(_DeviceId _value, $Res Function(_DeviceId) _then)
      : super(_value, (v) => _then(v as _DeviceId));

  @override
  _DeviceId get _value => super._value as _DeviceId;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object tel = freezed,
    Object dName = freezed,
    Object dVer = freezed,
    Object isTelPk = freezed,
  }) {
    return _then(_DeviceId(
      id: id == freezed ? _value.id : id as UniqueId,
      email: email == freezed ? _value.email : email as EmailAddress,
      tel: tel == freezed ? _value.tel : tel as ValidPhoneNumber,
      dName: dName == freezed ? _value.dName : dName as String,
      dVer: dVer == freezed ? _value.dVer : dVer as String,
      isTelPk: isTelPk == freezed ? _value.isTelPk : isTelPk as bool,
    ));
  }
}

/// @nodoc
class _$_DeviceId extends _DeviceId with DiagnosticableTreeMixin {
  const _$_DeviceId(
      {@required this.id,
      @required this.email,
      @required this.tel,
      @required this.dName,
      @required this.dVer,
      @required this.isTelPk})
      : assert(id != null),
        assert(email != null),
        assert(tel != null),
        assert(dName != null),
        assert(dVer != null),
        assert(isTelPk != null),
        super._();

  @override
  final UniqueId id;
  @override // device UUID
  final EmailAddress email;
  @override
  final ValidPhoneNumber tel;
  @override
  final String dName;
  @override // deviceName
  final String dVer;
  @override // deviceVersion
  final bool isTelPk;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceId(id: $id, email: $email, tel: $tel, dName: $dName, dVer: $dVer, isTelPk: $isTelPk)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceId'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('tel', tel))
      ..add(DiagnosticsProperty('dName', dName))
      ..add(DiagnosticsProperty('dVer', dVer))
      ..add(DiagnosticsProperty('isTelPk', isTelPk));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.tel, tel) ||
                const DeepCollectionEquality().equals(other.tel, tel)) &&
            (identical(other.dName, dName) ||
                const DeepCollectionEquality().equals(other.dName, dName)) &&
            (identical(other.dVer, dVer) ||
                const DeepCollectionEquality().equals(other.dVer, dVer)) &&
            (identical(other.isTelPk, isTelPk) ||
                const DeepCollectionEquality().equals(other.isTelPk, isTelPk)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(tel) ^
      const DeepCollectionEquality().hash(dName) ^
      const DeepCollectionEquality().hash(dVer) ^
      const DeepCollectionEquality().hash(isTelPk);

  @override
  _$DeviceIdCopyWith<_DeviceId> get copyWith =>
      __$DeviceIdCopyWithImpl<_DeviceId>(this, _$identity);
}

abstract class _DeviceId extends DeviceId {
  const _DeviceId._() : super._();
  const factory _DeviceId(
      {@required UniqueId id,
      @required EmailAddress email,
      @required ValidPhoneNumber tel,
      @required String dName,
      @required String dVer,
      @required bool isTelPk}) = _$_DeviceId;

  @override
  UniqueId get id;
  @override // device UUID
  EmailAddress get email;
  @override
  ValidPhoneNumber get tel;
  @override
  String get dName;
  @override // deviceName
  String get dVer;
  @override // deviceVersion
  bool get isTelPk;
  @override
  _$DeviceIdCopyWith<_DeviceId> get copyWith;
}
