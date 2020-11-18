// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_address_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserAddressDto _$UserAddressDtoFromJson(Map<String, dynamic> json) {
  return _UserAddressDto.fromJson(json);
}

/// @nodoc
class _$UserAddressDtoTearOff {
  const _$UserAddressDtoTearOff();

// ignore: unused_element
  _UserAddressDto call(
      {@required String id,
      @required String city,
      @required String address,
      @required String state,
      @required String zipcode}) {
    return _UserAddressDto(
      id: id,
      city: city,
      address: address,
      state: state,
      zipcode: zipcode,
    );
  }

// ignore: unused_element
  UserAddressDto fromJson(Map<String, Object> json) {
    return UserAddressDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserAddressDto = _$UserAddressDtoTearOff();

/// @nodoc
mixin _$UserAddressDto {
  String get id;
  String get city;
  String get address;
  String get state;
  String get zipcode;

  Map<String, dynamic> toJson();
  $UserAddressDtoCopyWith<UserAddressDto> get copyWith;
}

/// @nodoc
abstract class $UserAddressDtoCopyWith<$Res> {
  factory $UserAddressDtoCopyWith(
          UserAddressDto value, $Res Function(UserAddressDto) then) =
      _$UserAddressDtoCopyWithImpl<$Res>;
  $Res call(
      {String id, String city, String address, String state, String zipcode});
}

/// @nodoc
class _$UserAddressDtoCopyWithImpl<$Res>
    implements $UserAddressDtoCopyWith<$Res> {
  _$UserAddressDtoCopyWithImpl(this._value, this._then);

  final UserAddressDto _value;
  // ignore: unused_field
  final $Res Function(UserAddressDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object city = freezed,
    Object address = freezed,
    Object state = freezed,
    Object zipcode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      city: city == freezed ? _value.city : city as String,
      address: address == freezed ? _value.address : address as String,
      state: state == freezed ? _value.state : state as String,
      zipcode: zipcode == freezed ? _value.zipcode : zipcode as String,
    ));
  }
}

/// @nodoc
abstract class _$UserAddressDtoCopyWith<$Res>
    implements $UserAddressDtoCopyWith<$Res> {
  factory _$UserAddressDtoCopyWith(
          _UserAddressDto value, $Res Function(_UserAddressDto) then) =
      __$UserAddressDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String city, String address, String state, String zipcode});
}

/// @nodoc
class __$UserAddressDtoCopyWithImpl<$Res>
    extends _$UserAddressDtoCopyWithImpl<$Res>
    implements _$UserAddressDtoCopyWith<$Res> {
  __$UserAddressDtoCopyWithImpl(
      _UserAddressDto _value, $Res Function(_UserAddressDto) _then)
      : super(_value, (v) => _then(v as _UserAddressDto));

  @override
  _UserAddressDto get _value => super._value as _UserAddressDto;

  @override
  $Res call({
    Object id = freezed,
    Object city = freezed,
    Object address = freezed,
    Object state = freezed,
    Object zipcode = freezed,
  }) {
    return _then(_UserAddressDto(
      id: id == freezed ? _value.id : id as String,
      city: city == freezed ? _value.city : city as String,
      address: address == freezed ? _value.address : address as String,
      state: state == freezed ? _value.state : state as String,
      zipcode: zipcode == freezed ? _value.zipcode : zipcode as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserAddressDto extends _UserAddressDto with DiagnosticableTreeMixin {
  const _$_UserAddressDto(
      {@required this.id,
      @required this.city,
      @required this.address,
      @required this.state,
      @required this.zipcode})
      : assert(id != null),
        assert(city != null),
        assert(address != null),
        assert(state != null),
        assert(zipcode != null),
        super._();

  factory _$_UserAddressDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserAddressDtoFromJson(json);

  @override
  final String id;
  @override
  final String city;
  @override
  final String address;
  @override
  final String state;
  @override
  final String zipcode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserAddressDto(id: $id, city: $city, address: $address, state: $state, zipcode: $zipcode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserAddressDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('zipcode', zipcode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAddressDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.zipcode, zipcode) ||
                const DeepCollectionEquality().equals(other.zipcode, zipcode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(zipcode);

  @override
  _$UserAddressDtoCopyWith<_UserAddressDto> get copyWith =>
      __$UserAddressDtoCopyWithImpl<_UserAddressDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserAddressDtoToJson(this);
  }
}

abstract class _UserAddressDto extends UserAddressDto {
  const _UserAddressDto._() : super._();
  const factory _UserAddressDto(
      {@required String id,
      @required String city,
      @required String address,
      @required String state,
      @required String zipcode}) = _$_UserAddressDto;

  factory _UserAddressDto.fromJson(Map<String, dynamic> json) =
      _$_UserAddressDto.fromJson;

  @override
  String get id;
  @override
  String get city;
  @override
  String get address;
  @override
  String get state;
  @override
  String get zipcode;
  @override
  _$UserAddressDtoCopyWith<_UserAddressDto> get copyWith;
}
