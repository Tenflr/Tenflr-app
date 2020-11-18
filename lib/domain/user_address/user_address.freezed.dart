// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserAddressTearOff {
  const _$UserAddressTearOff();

// ignore: unused_element
  _UserAddress call(
      {@required UniqueId id,
      @required ValidCity city,
      @required ValidAddress address,
      @required ValidState state,
      @required ValidZipCode zipcode}) {
    return _UserAddress(
      id: id,
      city: city,
      address: address,
      state: state,
      zipcode: zipcode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserAddress = _$UserAddressTearOff();

/// @nodoc
mixin _$UserAddress {
  UniqueId get id;
  ValidCity get city;
  ValidAddress get address;
  ValidState get state;
  ValidZipCode get zipcode;

  $UserAddressCopyWith<UserAddress> get copyWith;
}

/// @nodoc
abstract class $UserAddressCopyWith<$Res> {
  factory $UserAddressCopyWith(
          UserAddress value, $Res Function(UserAddress) then) =
      _$UserAddressCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ValidCity city,
      ValidAddress address,
      ValidState state,
      ValidZipCode zipcode});
}

/// @nodoc
class _$UserAddressCopyWithImpl<$Res> implements $UserAddressCopyWith<$Res> {
  _$UserAddressCopyWithImpl(this._value, this._then);

  final UserAddress _value;
  // ignore: unused_field
  final $Res Function(UserAddress) _then;

  @override
  $Res call({
    Object id = freezed,
    Object city = freezed,
    Object address = freezed,
    Object state = freezed,
    Object zipcode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      city: city == freezed ? _value.city : city as ValidCity,
      address: address == freezed ? _value.address : address as ValidAddress,
      state: state == freezed ? _value.state : state as ValidState,
      zipcode: zipcode == freezed ? _value.zipcode : zipcode as ValidZipCode,
    ));
  }
}

/// @nodoc
abstract class _$UserAddressCopyWith<$Res>
    implements $UserAddressCopyWith<$Res> {
  factory _$UserAddressCopyWith(
          _UserAddress value, $Res Function(_UserAddress) then) =
      __$UserAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ValidCity city,
      ValidAddress address,
      ValidState state,
      ValidZipCode zipcode});
}

/// @nodoc
class __$UserAddressCopyWithImpl<$Res> extends _$UserAddressCopyWithImpl<$Res>
    implements _$UserAddressCopyWith<$Res> {
  __$UserAddressCopyWithImpl(
      _UserAddress _value, $Res Function(_UserAddress) _then)
      : super(_value, (v) => _then(v as _UserAddress));

  @override
  _UserAddress get _value => super._value as _UserAddress;

  @override
  $Res call({
    Object id = freezed,
    Object city = freezed,
    Object address = freezed,
    Object state = freezed,
    Object zipcode = freezed,
  }) {
    return _then(_UserAddress(
      id: id == freezed ? _value.id : id as UniqueId,
      city: city == freezed ? _value.city : city as ValidCity,
      address: address == freezed ? _value.address : address as ValidAddress,
      state: state == freezed ? _value.state : state as ValidState,
      zipcode: zipcode == freezed ? _value.zipcode : zipcode as ValidZipCode,
    ));
  }
}

/// @nodoc
class _$_UserAddress extends _UserAddress {
  const _$_UserAddress(
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

  @override
  final UniqueId id;
  @override
  final ValidCity city;
  @override
  final ValidAddress address;
  @override
  final ValidState state;
  @override
  final ValidZipCode zipcode;

  @override
  String toString() {
    return 'UserAddress(id: $id, city: $city, address: $address, state: $state, zipcode: $zipcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAddress &&
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
  _$UserAddressCopyWith<_UserAddress> get copyWith =>
      __$UserAddressCopyWithImpl<_UserAddress>(this, _$identity);
}

abstract class _UserAddress extends UserAddress {
  const _UserAddress._() : super._();
  const factory _UserAddress(
      {@required UniqueId id,
      @required ValidCity city,
      @required ValidAddress address,
      @required ValidState state,
      @required ValidZipCode zipcode}) = _$_UserAddress;

  @override
  UniqueId get id;
  @override
  ValidCity get city;
  @override
  ValidAddress get address;
  @override
  ValidState get state;
  @override
  ValidZipCode get zipcode;
  @override
  _$UserAddressCopyWith<_UserAddress> get copyWith;
}
