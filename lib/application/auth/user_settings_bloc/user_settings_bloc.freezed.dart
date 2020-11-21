// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserSettingsEventTearOff {
  const _$UserSettingsEventTearOff();

// ignore: unused_element
  _Initialized initialize() {
    return const _Initialized();
  }

// ignore: unused_element
  _AddressChangedE addressChanged({@required ValidAddress address}) {
    return _AddressChangedE(
      address: address,
    );
  }

// ignore: unused_element
  _StateChangedE stateChanged({@required ValidState state}) {
    return _StateChangedE(
      state: state,
    );
  }

// ignore: unused_element
  _ZipCodeChangedE zipcodeChanged({@required ValidZipCode zipCode}) {
    return _ZipCodeChangedE(
      zipCode: zipCode,
    );
  }

// ignore: unused_element
  _CityChangedE cityChanged({@required ValidCity city}) {
    return _CityChangedE(
      city: city,
    );
  }

// ignore: unused_element
  _EmailChangedE emailChanged({@required EmailAddress email}) {
    return _EmailChangedE(
      email: email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserSettingsEvent = _$UserSettingsEventTearOff();

/// @nodoc
mixin _$UserSettingsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result addressChanged(ValidAddress address),
    @required Result stateChanged(ValidState state),
    @required Result zipcodeChanged(ValidZipCode zipCode),
    @required Result cityChanged(ValidCity city),
    @required Result emailChanged(EmailAddress email),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result addressChanged(ValidAddress address),
    Result stateChanged(ValidState state),
    Result zipcodeChanged(ValidZipCode zipCode),
    Result cityChanged(ValidCity city),
    Result emailChanged(EmailAddress email),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result addressChanged(_AddressChangedE value),
    @required Result stateChanged(_StateChangedE value),
    @required Result zipcodeChanged(_ZipCodeChangedE value),
    @required Result cityChanged(_CityChangedE value),
    @required Result emailChanged(_EmailChangedE value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result addressChanged(_AddressChangedE value),
    Result stateChanged(_StateChangedE value),
    Result zipcodeChanged(_ZipCodeChangedE value),
    Result cityChanged(_CityChangedE value),
    Result emailChanged(_EmailChangedE value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UserSettingsEventCopyWith<$Res> {
  factory $UserSettingsEventCopyWith(
          UserSettingsEvent value, $Res Function(UserSettingsEvent) then) =
      _$UserSettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSettingsEventCopyWithImpl<$Res>
    implements $UserSettingsEventCopyWith<$Res> {
  _$UserSettingsEventCopyWithImpl(this._value, this._then);

  final UserSettingsEvent _value;
  // ignore: unused_field
  final $Res Function(UserSettingsEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$UserSettingsEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'UserSettingsEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result addressChanged(ValidAddress address),
    @required Result stateChanged(ValidState state),
    @required Result zipcodeChanged(ValidZipCode zipCode),
    @required Result cityChanged(ValidCity city),
    @required Result emailChanged(EmailAddress email),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return initialize();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result addressChanged(ValidAddress address),
    Result stateChanged(ValidState state),
    Result zipcodeChanged(ValidZipCode zipCode),
    Result cityChanged(ValidCity city),
    Result emailChanged(EmailAddress email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result addressChanged(_AddressChangedE value),
    @required Result stateChanged(_StateChangedE value),
    @required Result zipcodeChanged(_ZipCodeChangedE value),
    @required Result cityChanged(_CityChangedE value),
    @required Result emailChanged(_EmailChangedE value),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result addressChanged(_AddressChangedE value),
    Result stateChanged(_StateChangedE value),
    Result zipcodeChanged(_ZipCodeChangedE value),
    Result cityChanged(_CityChangedE value),
    Result emailChanged(_EmailChangedE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements UserSettingsEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$AddressChangedECopyWith<$Res> {
  factory _$AddressChangedECopyWith(
          _AddressChangedE value, $Res Function(_AddressChangedE) then) =
      __$AddressChangedECopyWithImpl<$Res>;
  $Res call({ValidAddress address});
}

/// @nodoc
class __$AddressChangedECopyWithImpl<$Res>
    extends _$UserSettingsEventCopyWithImpl<$Res>
    implements _$AddressChangedECopyWith<$Res> {
  __$AddressChangedECopyWithImpl(
      _AddressChangedE _value, $Res Function(_AddressChangedE) _then)
      : super(_value, (v) => _then(v as _AddressChangedE));

  @override
  _AddressChangedE get _value => super._value as _AddressChangedE;

  @override
  $Res call({
    Object address = freezed,
  }) {
    return _then(_AddressChangedE(
      address: address == freezed ? _value.address : address as ValidAddress,
    ));
  }
}

/// @nodoc
class _$_AddressChangedE implements _AddressChangedE {
  const _$_AddressChangedE({@required this.address}) : assert(address != null);

  @override
  final ValidAddress address;

  @override
  String toString() {
    return 'UserSettingsEvent.addressChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressChangedE &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @override
  _$AddressChangedECopyWith<_AddressChangedE> get copyWith =>
      __$AddressChangedECopyWithImpl<_AddressChangedE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result addressChanged(ValidAddress address),
    @required Result stateChanged(ValidState state),
    @required Result zipcodeChanged(ValidZipCode zipCode),
    @required Result cityChanged(ValidCity city),
    @required Result emailChanged(EmailAddress email),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return addressChanged(address);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result addressChanged(ValidAddress address),
    Result stateChanged(ValidState state),
    Result zipcodeChanged(ValidZipCode zipCode),
    Result cityChanged(ValidCity city),
    Result emailChanged(EmailAddress email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressChanged != null) {
      return addressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result addressChanged(_AddressChangedE value),
    @required Result stateChanged(_StateChangedE value),
    @required Result zipcodeChanged(_ZipCodeChangedE value),
    @required Result cityChanged(_CityChangedE value),
    @required Result emailChanged(_EmailChangedE value),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result addressChanged(_AddressChangedE value),
    Result stateChanged(_StateChangedE value),
    Result zipcodeChanged(_ZipCodeChangedE value),
    Result cityChanged(_CityChangedE value),
    Result emailChanged(_EmailChangedE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class _AddressChangedE implements UserSettingsEvent {
  const factory _AddressChangedE({@required ValidAddress address}) =
      _$_AddressChangedE;

  ValidAddress get address;
  _$AddressChangedECopyWith<_AddressChangedE> get copyWith;
}

/// @nodoc
abstract class _$StateChangedECopyWith<$Res> {
  factory _$StateChangedECopyWith(
          _StateChangedE value, $Res Function(_StateChangedE) then) =
      __$StateChangedECopyWithImpl<$Res>;
  $Res call({ValidState state});
}

/// @nodoc
class __$StateChangedECopyWithImpl<$Res>
    extends _$UserSettingsEventCopyWithImpl<$Res>
    implements _$StateChangedECopyWith<$Res> {
  __$StateChangedECopyWithImpl(
      _StateChangedE _value, $Res Function(_StateChangedE) _then)
      : super(_value, (v) => _then(v as _StateChangedE));

  @override
  _StateChangedE get _value => super._value as _StateChangedE;

  @override
  $Res call({
    Object state = freezed,
  }) {
    return _then(_StateChangedE(
      state: state == freezed ? _value.state : state as ValidState,
    ));
  }
}

/// @nodoc
class _$_StateChangedE implements _StateChangedE {
  const _$_StateChangedE({@required this.state}) : assert(state != null);

  @override
  final ValidState state;

  @override
  String toString() {
    return 'UserSettingsEvent.stateChanged(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StateChangedE &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(state);

  @override
  _$StateChangedECopyWith<_StateChangedE> get copyWith =>
      __$StateChangedECopyWithImpl<_StateChangedE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result addressChanged(ValidAddress address),
    @required Result stateChanged(ValidState state),
    @required Result zipcodeChanged(ValidZipCode zipCode),
    @required Result cityChanged(ValidCity city),
    @required Result emailChanged(EmailAddress email),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return stateChanged(state);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result addressChanged(ValidAddress address),
    Result stateChanged(ValidState state),
    Result zipcodeChanged(ValidZipCode zipCode),
    Result cityChanged(ValidCity city),
    Result emailChanged(EmailAddress email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stateChanged != null) {
      return stateChanged(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result addressChanged(_AddressChangedE value),
    @required Result stateChanged(_StateChangedE value),
    @required Result zipcodeChanged(_ZipCodeChangedE value),
    @required Result cityChanged(_CityChangedE value),
    @required Result emailChanged(_EmailChangedE value),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return stateChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result addressChanged(_AddressChangedE value),
    Result stateChanged(_StateChangedE value),
    Result zipcodeChanged(_ZipCodeChangedE value),
    Result cityChanged(_CityChangedE value),
    Result emailChanged(_EmailChangedE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stateChanged != null) {
      return stateChanged(this);
    }
    return orElse();
  }
}

abstract class _StateChangedE implements UserSettingsEvent {
  const factory _StateChangedE({@required ValidState state}) = _$_StateChangedE;

  ValidState get state;
  _$StateChangedECopyWith<_StateChangedE> get copyWith;
}

/// @nodoc
abstract class _$ZipCodeChangedECopyWith<$Res> {
  factory _$ZipCodeChangedECopyWith(
          _ZipCodeChangedE value, $Res Function(_ZipCodeChangedE) then) =
      __$ZipCodeChangedECopyWithImpl<$Res>;
  $Res call({ValidZipCode zipCode});
}

/// @nodoc
class __$ZipCodeChangedECopyWithImpl<$Res>
    extends _$UserSettingsEventCopyWithImpl<$Res>
    implements _$ZipCodeChangedECopyWith<$Res> {
  __$ZipCodeChangedECopyWithImpl(
      _ZipCodeChangedE _value, $Res Function(_ZipCodeChangedE) _then)
      : super(_value, (v) => _then(v as _ZipCodeChangedE));

  @override
  _ZipCodeChangedE get _value => super._value as _ZipCodeChangedE;

  @override
  $Res call({
    Object zipCode = freezed,
  }) {
    return _then(_ZipCodeChangedE(
      zipCode: zipCode == freezed ? _value.zipCode : zipCode as ValidZipCode,
    ));
  }
}

/// @nodoc
class _$_ZipCodeChangedE implements _ZipCodeChangedE {
  const _$_ZipCodeChangedE({@required this.zipCode}) : assert(zipCode != null);

  @override
  final ValidZipCode zipCode;

  @override
  String toString() {
    return 'UserSettingsEvent.zipcodeChanged(zipCode: $zipCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ZipCodeChangedE &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality().equals(other.zipCode, zipCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(zipCode);

  @override
  _$ZipCodeChangedECopyWith<_ZipCodeChangedE> get copyWith =>
      __$ZipCodeChangedECopyWithImpl<_ZipCodeChangedE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result addressChanged(ValidAddress address),
    @required Result stateChanged(ValidState state),
    @required Result zipcodeChanged(ValidZipCode zipCode),
    @required Result cityChanged(ValidCity city),
    @required Result emailChanged(EmailAddress email),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return zipcodeChanged(zipCode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result addressChanged(ValidAddress address),
    Result stateChanged(ValidState state),
    Result zipcodeChanged(ValidZipCode zipCode),
    Result cityChanged(ValidCity city),
    Result emailChanged(EmailAddress email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (zipcodeChanged != null) {
      return zipcodeChanged(zipCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result addressChanged(_AddressChangedE value),
    @required Result stateChanged(_StateChangedE value),
    @required Result zipcodeChanged(_ZipCodeChangedE value),
    @required Result cityChanged(_CityChangedE value),
    @required Result emailChanged(_EmailChangedE value),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return zipcodeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result addressChanged(_AddressChangedE value),
    Result stateChanged(_StateChangedE value),
    Result zipcodeChanged(_ZipCodeChangedE value),
    Result cityChanged(_CityChangedE value),
    Result emailChanged(_EmailChangedE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (zipcodeChanged != null) {
      return zipcodeChanged(this);
    }
    return orElse();
  }
}

abstract class _ZipCodeChangedE implements UserSettingsEvent {
  const factory _ZipCodeChangedE({@required ValidZipCode zipCode}) =
      _$_ZipCodeChangedE;

  ValidZipCode get zipCode;
  _$ZipCodeChangedECopyWith<_ZipCodeChangedE> get copyWith;
}

/// @nodoc
abstract class _$CityChangedECopyWith<$Res> {
  factory _$CityChangedECopyWith(
          _CityChangedE value, $Res Function(_CityChangedE) then) =
      __$CityChangedECopyWithImpl<$Res>;
  $Res call({ValidCity city});
}

/// @nodoc
class __$CityChangedECopyWithImpl<$Res>
    extends _$UserSettingsEventCopyWithImpl<$Res>
    implements _$CityChangedECopyWith<$Res> {
  __$CityChangedECopyWithImpl(
      _CityChangedE _value, $Res Function(_CityChangedE) _then)
      : super(_value, (v) => _then(v as _CityChangedE));

  @override
  _CityChangedE get _value => super._value as _CityChangedE;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(_CityChangedE(
      city: city == freezed ? _value.city : city as ValidCity,
    ));
  }
}

/// @nodoc
class _$_CityChangedE implements _CityChangedE {
  const _$_CityChangedE({@required this.city}) : assert(city != null);

  @override
  final ValidCity city;

  @override
  String toString() {
    return 'UserSettingsEvent.cityChanged(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CityChangedE &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @override
  _$CityChangedECopyWith<_CityChangedE> get copyWith =>
      __$CityChangedECopyWithImpl<_CityChangedE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result addressChanged(ValidAddress address),
    @required Result stateChanged(ValidState state),
    @required Result zipcodeChanged(ValidZipCode zipCode),
    @required Result cityChanged(ValidCity city),
    @required Result emailChanged(EmailAddress email),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return cityChanged(city);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result addressChanged(ValidAddress address),
    Result stateChanged(ValidState state),
    Result zipcodeChanged(ValidZipCode zipCode),
    Result cityChanged(ValidCity city),
    Result emailChanged(EmailAddress email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityChanged != null) {
      return cityChanged(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result addressChanged(_AddressChangedE value),
    @required Result stateChanged(_StateChangedE value),
    @required Result zipcodeChanged(_ZipCodeChangedE value),
    @required Result cityChanged(_CityChangedE value),
    @required Result emailChanged(_EmailChangedE value),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return cityChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result addressChanged(_AddressChangedE value),
    Result stateChanged(_StateChangedE value),
    Result zipcodeChanged(_ZipCodeChangedE value),
    Result cityChanged(_CityChangedE value),
    Result emailChanged(_EmailChangedE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityChanged != null) {
      return cityChanged(this);
    }
    return orElse();
  }
}

abstract class _CityChangedE implements UserSettingsEvent {
  const factory _CityChangedE({@required ValidCity city}) = _$_CityChangedE;

  ValidCity get city;
  _$CityChangedECopyWith<_CityChangedE> get copyWith;
}

/// @nodoc
abstract class _$EmailChangedECopyWith<$Res> {
  factory _$EmailChangedECopyWith(
          _EmailChangedE value, $Res Function(_EmailChangedE) then) =
      __$EmailChangedECopyWithImpl<$Res>;
  $Res call({EmailAddress email});
}

/// @nodoc
class __$EmailChangedECopyWithImpl<$Res>
    extends _$UserSettingsEventCopyWithImpl<$Res>
    implements _$EmailChangedECopyWith<$Res> {
  __$EmailChangedECopyWithImpl(
      _EmailChangedE _value, $Res Function(_EmailChangedE) _then)
      : super(_value, (v) => _then(v as _EmailChangedE));

  @override
  _EmailChangedE get _value => super._value as _EmailChangedE;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_EmailChangedE(
      email: email == freezed ? _value.email : email as EmailAddress,
    ));
  }
}

/// @nodoc
class _$_EmailChangedE implements _EmailChangedE {
  const _$_EmailChangedE({@required this.email}) : assert(email != null);

  @override
  final EmailAddress email;

  @override
  String toString() {
    return 'UserSettingsEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChangedE &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$EmailChangedECopyWith<_EmailChangedE> get copyWith =>
      __$EmailChangedECopyWithImpl<_EmailChangedE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
    @required Result addressChanged(ValidAddress address),
    @required Result stateChanged(ValidState state),
    @required Result zipcodeChanged(ValidZipCode zipCode),
    @required Result cityChanged(ValidCity city),
    @required Result emailChanged(EmailAddress email),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    Result addressChanged(ValidAddress address),
    Result stateChanged(ValidState state),
    Result zipcodeChanged(ValidZipCode zipCode),
    Result cityChanged(ValidCity city),
    Result emailChanged(EmailAddress email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result addressChanged(_AddressChangedE value),
    @required Result stateChanged(_StateChangedE value),
    @required Result zipcodeChanged(_ZipCodeChangedE value),
    @required Result cityChanged(_CityChangedE value),
    @required Result emailChanged(_EmailChangedE value),
  }) {
    assert(initialize != null);
    assert(addressChanged != null);
    assert(stateChanged != null);
    assert(zipcodeChanged != null);
    assert(cityChanged != null);
    assert(emailChanged != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result addressChanged(_AddressChangedE value),
    Result stateChanged(_StateChangedE value),
    Result zipcodeChanged(_ZipCodeChangedE value),
    Result cityChanged(_CityChangedE value),
    Result emailChanged(_EmailChangedE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChangedE implements UserSettingsEvent {
  const factory _EmailChangedE({@required EmailAddress email}) =
      _$_EmailChangedE;

  EmailAddress get email;
  _$EmailChangedECopyWith<_EmailChangedE> get copyWith;
}

/// @nodoc
class _$UserSettingsStateTearOff {
  const _$UserSettingsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess() {
    return const _LoadSuccess();
  }

// ignore: unused_element
  _LoadFailure loadFailure() {
    return const _LoadFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $UserSettingsState = _$UserSettingsStateTearOff();

/// @nodoc
mixin _$UserSettingsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(),
    @required Result loadFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(),
    Result loadFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UserSettingsStateCopyWith<$Res> {
  factory $UserSettingsStateCopyWith(
          UserSettingsState value, $Res Function(UserSettingsState) then) =
      _$UserSettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSettingsStateCopyWithImpl<$Res>
    implements $UserSettingsStateCopyWith<$Res> {
  _$UserSettingsStateCopyWithImpl(this._value, this._then);

  final UserSettingsState _value;
  // ignore: unused_field
  final $Res Function(UserSettingsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserSettingsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserSettingsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserSettingsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$UserSettingsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'UserSettingsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements UserSettingsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$UserSettingsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess();

  @override
  String toString() {
    return 'UserSettingsState.loadSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements UserSettingsState {
  const factory _LoadSuccess() = _$_LoadSuccess;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$UserSettingsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure();

  @override
  String toString() {
    return 'UserSettingsState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements UserSettingsState {
  const factory _LoadFailure() = _$_LoadFailure;
}
