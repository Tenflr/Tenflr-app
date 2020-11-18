// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

// ignore: unused_element
  AuthCheckRequested authCheckRequested() {
    return const AuthCheckRequested();
  }

// ignore: unused_element
  SignedOut signedOut() {
    return const SignedOut();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $AuthCheckRequestedCopyWith<$Res> {
  factory $AuthCheckRequestedCopyWith(
          AuthCheckRequested value, $Res Function(AuthCheckRequested) then) =
      _$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthCheckRequestedCopyWith<$Res> {
  _$AuthCheckRequestedCopyWithImpl(
      AuthCheckRequested _value, $Res Function(AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as AuthCheckRequested));

  @override
  AuthCheckRequested get _value => super._value as AuthCheckRequested;
}

/// @nodoc
class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'AuthenticationEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthenticationEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

/// @nodoc
abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignedOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

/// @nodoc
class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthenticationEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthenticationEvent {
  const factory SignedOut() = _$SignedOut;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  FirstTimeUser firstTimeUser() {
    return const FirstTimeUser();
  }

// ignore: unused_element
  MoreInfoPhone moreInfoPhone(User user) {
    return MoreInfoPhone(
      user,
    );
  }

// ignore: unused_element
  MoreInfoGoogle moreInfoGoogle(User user) {
    return MoreInfoGoogle(
      user,
    );
  }

// ignore: unused_element
  Authenticated authenticated(
      {User user, DeviceId deviceId, UserSettings userSettings}) {
    return Authenticated(
      user: user,
      deviceId: deviceId,
      userSettings: userSettings,
    );
  }

// ignore: unused_element
  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result firstTimeUser(),
    @required Result moreInfoPhone(User user),
    @required Result moreInfoGoogle(User user),
    @required
        Result authenticated(
            User user, DeviceId deviceId, UserSettings userSettings),
    @required Result unauthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result firstTimeUser(),
    Result moreInfoPhone(User user),
    Result moreInfoGoogle(User user),
    Result authenticated(
        User user, DeviceId deviceId, UserSettings userSettings),
    Result unauthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result firstTimeUser(FirstTimeUser value),
    @required Result moreInfoPhone(MoreInfoPhone value),
    @required Result moreInfoGoogle(MoreInfoGoogle value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result firstTimeUser(FirstTimeUser value),
    Result moreInfoPhone(MoreInfoPhone value),
    Result moreInfoGoogle(MoreInfoGoogle value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result firstTimeUser(),
    @required Result moreInfoPhone(User user),
    @required Result moreInfoGoogle(User user),
    @required
        Result authenticated(
            User user, DeviceId deviceId, UserSettings userSettings),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result firstTimeUser(),
    Result moreInfoPhone(User user),
    Result moreInfoGoogle(User user),
    Result authenticated(
        User user, DeviceId deviceId, UserSettings userSettings),
    Result unauthenticated(),
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
    @required Result initial(Initial value),
    @required Result firstTimeUser(FirstTimeUser value),
    @required Result moreInfoPhone(MoreInfoPhone value),
    @required Result moreInfoGoogle(MoreInfoGoogle value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result firstTimeUser(FirstTimeUser value),
    Result moreInfoPhone(MoreInfoPhone value),
    Result moreInfoGoogle(MoreInfoGoogle value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthenticationState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $FirstTimeUserCopyWith<$Res> {
  factory $FirstTimeUserCopyWith(
          FirstTimeUser value, $Res Function(FirstTimeUser) then) =
      _$FirstTimeUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirstTimeUserCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $FirstTimeUserCopyWith<$Res> {
  _$FirstTimeUserCopyWithImpl(
      FirstTimeUser _value, $Res Function(FirstTimeUser) _then)
      : super(_value, (v) => _then(v as FirstTimeUser));

  @override
  FirstTimeUser get _value => super._value as FirstTimeUser;
}

/// @nodoc
class _$FirstTimeUser implements FirstTimeUser {
  const _$FirstTimeUser();

  @override
  String toString() {
    return 'AuthenticationState.firstTimeUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FirstTimeUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result firstTimeUser(),
    @required Result moreInfoPhone(User user),
    @required Result moreInfoGoogle(User user),
    @required
        Result authenticated(
            User user, DeviceId deviceId, UserSettings userSettings),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return firstTimeUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result firstTimeUser(),
    Result moreInfoPhone(User user),
    Result moreInfoGoogle(User user),
    Result authenticated(
        User user, DeviceId deviceId, UserSettings userSettings),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstTimeUser != null) {
      return firstTimeUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result firstTimeUser(FirstTimeUser value),
    @required Result moreInfoPhone(MoreInfoPhone value),
    @required Result moreInfoGoogle(MoreInfoGoogle value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return firstTimeUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result firstTimeUser(FirstTimeUser value),
    Result moreInfoPhone(MoreInfoPhone value),
    Result moreInfoGoogle(MoreInfoGoogle value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstTimeUser != null) {
      return firstTimeUser(this);
    }
    return orElse();
  }
}

abstract class FirstTimeUser implements AuthenticationState {
  const factory FirstTimeUser() = _$FirstTimeUser;
}

/// @nodoc
abstract class $MoreInfoPhoneCopyWith<$Res> {
  factory $MoreInfoPhoneCopyWith(
          MoreInfoPhone value, $Res Function(MoreInfoPhone) then) =
      _$MoreInfoPhoneCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$MoreInfoPhoneCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $MoreInfoPhoneCopyWith<$Res> {
  _$MoreInfoPhoneCopyWithImpl(
      MoreInfoPhone _value, $Res Function(MoreInfoPhone) _then)
      : super(_value, (v) => _then(v as MoreInfoPhone));

  @override
  MoreInfoPhone get _value => super._value as MoreInfoPhone;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(MoreInfoPhone(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$MoreInfoPhone implements MoreInfoPhone {
  const _$MoreInfoPhone(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.moreInfoPhone(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MoreInfoPhone &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $MoreInfoPhoneCopyWith<MoreInfoPhone> get copyWith =>
      _$MoreInfoPhoneCopyWithImpl<MoreInfoPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result firstTimeUser(),
    @required Result moreInfoPhone(User user),
    @required Result moreInfoGoogle(User user),
    @required
        Result authenticated(
            User user, DeviceId deviceId, UserSettings userSettings),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return moreInfoPhone(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result firstTimeUser(),
    Result moreInfoPhone(User user),
    Result moreInfoGoogle(User user),
    Result authenticated(
        User user, DeviceId deviceId, UserSettings userSettings),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moreInfoPhone != null) {
      return moreInfoPhone(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result firstTimeUser(FirstTimeUser value),
    @required Result moreInfoPhone(MoreInfoPhone value),
    @required Result moreInfoGoogle(MoreInfoGoogle value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return moreInfoPhone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result firstTimeUser(FirstTimeUser value),
    Result moreInfoPhone(MoreInfoPhone value),
    Result moreInfoGoogle(MoreInfoGoogle value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moreInfoPhone != null) {
      return moreInfoPhone(this);
    }
    return orElse();
  }
}

abstract class MoreInfoPhone implements AuthenticationState {
  const factory MoreInfoPhone(User user) = _$MoreInfoPhone;

  User get user;
  $MoreInfoPhoneCopyWith<MoreInfoPhone> get copyWith;
}

/// @nodoc
abstract class $MoreInfoGoogleCopyWith<$Res> {
  factory $MoreInfoGoogleCopyWith(
          MoreInfoGoogle value, $Res Function(MoreInfoGoogle) then) =
      _$MoreInfoGoogleCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$MoreInfoGoogleCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $MoreInfoGoogleCopyWith<$Res> {
  _$MoreInfoGoogleCopyWithImpl(
      MoreInfoGoogle _value, $Res Function(MoreInfoGoogle) _then)
      : super(_value, (v) => _then(v as MoreInfoGoogle));

  @override
  MoreInfoGoogle get _value => super._value as MoreInfoGoogle;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(MoreInfoGoogle(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$MoreInfoGoogle implements MoreInfoGoogle {
  const _$MoreInfoGoogle(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.moreInfoGoogle(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MoreInfoGoogle &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $MoreInfoGoogleCopyWith<MoreInfoGoogle> get copyWith =>
      _$MoreInfoGoogleCopyWithImpl<MoreInfoGoogle>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result firstTimeUser(),
    @required Result moreInfoPhone(User user),
    @required Result moreInfoGoogle(User user),
    @required
        Result authenticated(
            User user, DeviceId deviceId, UserSettings userSettings),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return moreInfoGoogle(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result firstTimeUser(),
    Result moreInfoPhone(User user),
    Result moreInfoGoogle(User user),
    Result authenticated(
        User user, DeviceId deviceId, UserSettings userSettings),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moreInfoGoogle != null) {
      return moreInfoGoogle(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result firstTimeUser(FirstTimeUser value),
    @required Result moreInfoPhone(MoreInfoPhone value),
    @required Result moreInfoGoogle(MoreInfoGoogle value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return moreInfoGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result firstTimeUser(FirstTimeUser value),
    Result moreInfoPhone(MoreInfoPhone value),
    Result moreInfoGoogle(MoreInfoGoogle value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moreInfoGoogle != null) {
      return moreInfoGoogle(this);
    }
    return orElse();
  }
}

abstract class MoreInfoGoogle implements AuthenticationState {
  const factory MoreInfoGoogle(User user) = _$MoreInfoGoogle;

  User get user;
  $MoreInfoGoogleCopyWith<MoreInfoGoogle> get copyWith;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({User user, DeviceId deviceId, UserSettings userSettings});

  $UserCopyWith<$Res> get user;
  $DeviceIdCopyWith<$Res> get deviceId;
  $UserSettingsCopyWith<$Res> get userSettings;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object user = freezed,
    Object deviceId = freezed,
    Object userSettings = freezed,
  }) {
    return _then(Authenticated(
      user: user == freezed ? _value.user : user as User,
      deviceId: deviceId == freezed ? _value.deviceId : deviceId as DeviceId,
      userSettings: userSettings == freezed
          ? _value.userSettings
          : userSettings as UserSettings,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $DeviceIdCopyWith<$Res> get deviceId {
    if (_value.deviceId == null) {
      return null;
    }
    return $DeviceIdCopyWith<$Res>(_value.deviceId, (value) {
      return _then(_value.copyWith(deviceId: value));
    });
  }

  @override
  $UserSettingsCopyWith<$Res> get userSettings {
    if (_value.userSettings == null) {
      return null;
    }
    return $UserSettingsCopyWith<$Res>(_value.userSettings, (value) {
      return _then(_value.copyWith(userSettings: value));
    });
  }
}

/// @nodoc
class _$Authenticated implements Authenticated {
  const _$Authenticated({this.user, this.deviceId, this.userSettings});

  @override
  final User user;
  @override
  final DeviceId deviceId;
  @override
  final UserSettings userSettings;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(user: $user, deviceId: $deviceId, userSettings: $userSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.userSettings, userSettings) ||
                const DeepCollectionEquality()
                    .equals(other.userSettings, userSettings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(userSettings);

  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result firstTimeUser(),
    @required Result moreInfoPhone(User user),
    @required Result moreInfoGoogle(User user),
    @required
        Result authenticated(
            User user, DeviceId deviceId, UserSettings userSettings),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(user, deviceId, userSettings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result firstTimeUser(),
    Result moreInfoPhone(User user),
    Result moreInfoGoogle(User user),
    Result authenticated(
        User user, DeviceId deviceId, UserSettings userSettings),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user, deviceId, userSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result firstTimeUser(FirstTimeUser value),
    @required Result moreInfoPhone(MoreInfoPhone value),
    @required Result moreInfoGoogle(MoreInfoGoogle value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result firstTimeUser(FirstTimeUser value),
    Result moreInfoPhone(MoreInfoPhone value),
    Result moreInfoGoogle(MoreInfoGoogle value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthenticationState {
  const factory Authenticated(
      {User user,
      DeviceId deviceId,
      UserSettings userSettings}) = _$Authenticated;

  User get user;
  DeviceId get deviceId;
  UserSettings get userSettings;
  $AuthenticatedCopyWith<Authenticated> get copyWith;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

/// @nodoc
class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result firstTimeUser(),
    @required Result moreInfoPhone(User user),
    @required Result moreInfoGoogle(User user),
    @required
        Result authenticated(
            User user, DeviceId deviceId, UserSettings userSettings),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result firstTimeUser(),
    Result moreInfoPhone(User user),
    Result moreInfoGoogle(User user),
    Result authenticated(
        User user, DeviceId deviceId, UserSettings userSettings),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result firstTimeUser(FirstTimeUser value),
    @required Result moreInfoPhone(MoreInfoPhone value),
    @required Result moreInfoGoogle(MoreInfoGoogle value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(firstTimeUser != null);
    assert(moreInfoPhone != null);
    assert(moreInfoGoogle != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result firstTimeUser(FirstTimeUser value),
    Result moreInfoPhone(MoreInfoPhone value),
    Result moreInfoGoogle(MoreInfoGoogle value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthenticationState {
  const factory Unauthenticated() = _$Unauthenticated;
}
