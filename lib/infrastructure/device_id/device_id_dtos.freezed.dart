// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'device_id_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DeviceIdDto _$DeviceIdDtoFromJson(Map<String, dynamic> json) {
  return _DeviceIdDto.fromJson(json);
}

/// @nodoc
class _$DeviceIdDtoTearOff {
  const _$DeviceIdDtoTearOff();

// ignore: unused_element
  _DeviceIdDto call(
      {@required String id,
      @required String email,
      @required String tel,
      @required String dName,
      @required String dVer,
      @required bool isTelPk}) {
    return _DeviceIdDto(
      id: id,
      email: email,
      tel: tel,
      dName: dName,
      dVer: dVer,
      isTelPk: isTelPk,
    );
  }

// ignore: unused_element
  DeviceIdDto fromJson(Map<String, Object> json) {
    return DeviceIdDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DeviceIdDto = _$DeviceIdDtoTearOff();

/// @nodoc
mixin _$DeviceIdDto {
  String get id;
  String get email;
  String get tel;
  String get dName;
  String get dVer;
  bool get isTelPk;

  Map<String, dynamic> toJson();
  $DeviceIdDtoCopyWith<DeviceIdDto> get copyWith;
}

/// @nodoc
abstract class $DeviceIdDtoCopyWith<$Res> {
  factory $DeviceIdDtoCopyWith(
          DeviceIdDto value, $Res Function(DeviceIdDto) then) =
      _$DeviceIdDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      String tel,
      String dName,
      String dVer,
      bool isTelPk});
}

/// @nodoc
class _$DeviceIdDtoCopyWithImpl<$Res> implements $DeviceIdDtoCopyWith<$Res> {
  _$DeviceIdDtoCopyWithImpl(this._value, this._then);

  final DeviceIdDto _value;
  // ignore: unused_field
  final $Res Function(DeviceIdDto) _then;

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
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      tel: tel == freezed ? _value.tel : tel as String,
      dName: dName == freezed ? _value.dName : dName as String,
      dVer: dVer == freezed ? _value.dVer : dVer as String,
      isTelPk: isTelPk == freezed ? _value.isTelPk : isTelPk as bool,
    ));
  }
}

/// @nodoc
abstract class _$DeviceIdDtoCopyWith<$Res>
    implements $DeviceIdDtoCopyWith<$Res> {
  factory _$DeviceIdDtoCopyWith(
          _DeviceIdDto value, $Res Function(_DeviceIdDto) then) =
      __$DeviceIdDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      String tel,
      String dName,
      String dVer,
      bool isTelPk});
}

/// @nodoc
class __$DeviceIdDtoCopyWithImpl<$Res> extends _$DeviceIdDtoCopyWithImpl<$Res>
    implements _$DeviceIdDtoCopyWith<$Res> {
  __$DeviceIdDtoCopyWithImpl(
      _DeviceIdDto _value, $Res Function(_DeviceIdDto) _then)
      : super(_value, (v) => _then(v as _DeviceIdDto));

  @override
  _DeviceIdDto get _value => super._value as _DeviceIdDto;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object tel = freezed,
    Object dName = freezed,
    Object dVer = freezed,
    Object isTelPk = freezed,
  }) {
    return _then(_DeviceIdDto(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      tel: tel == freezed ? _value.tel : tel as String,
      dName: dName == freezed ? _value.dName : dName as String,
      dVer: dVer == freezed ? _value.dVer : dVer as String,
      isTelPk: isTelPk == freezed ? _value.isTelPk : isTelPk as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DeviceIdDto extends _DeviceIdDto with DiagnosticableTreeMixin {
  const _$_DeviceIdDto(
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

  factory _$_DeviceIdDto.fromJson(Map<String, dynamic> json) =>
      _$_$_DeviceIdDtoFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String tel;
  @override
  final String dName;
  @override
  final String dVer;
  @override
  final bool isTelPk;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceIdDto(id: $id, email: $email, tel: $tel, dName: $dName, dVer: $dVer, isTelPk: $isTelPk)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceIdDto'))
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
        (other is _DeviceIdDto &&
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
  _$DeviceIdDtoCopyWith<_DeviceIdDto> get copyWith =>
      __$DeviceIdDtoCopyWithImpl<_DeviceIdDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeviceIdDtoToJson(this);
  }
}

abstract class _DeviceIdDto extends DeviceIdDto {
  const _DeviceIdDto._() : super._();
  const factory _DeviceIdDto(
      {@required String id,
      @required String email,
      @required String tel,
      @required String dName,
      @required String dVer,
      @required bool isTelPk}) = _$_DeviceIdDto;

  factory _DeviceIdDto.fromJson(Map<String, dynamic> json) =
      _$_DeviceIdDto.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get tel;
  @override
  String get dName;
  @override
  String get dVer;
  @override
  bool get isTelPk;
  @override
  _$DeviceIdDtoCopyWith<_DeviceIdDto> get copyWith;
}
