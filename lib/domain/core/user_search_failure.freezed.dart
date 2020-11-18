// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_search_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserSearchFailureTearOff {
  const _$UserSearchFailureTearOff();

// ignore: unused_element
  _UserNotFound userNotFound() {
    return const _UserNotFound();
  }

// ignore: unused_element
  _UserNotActive userNotActive() {
    return const _UserNotActive();
  }
}

/// @nodoc
// ignore: unused_element
const $UserSearchFailure = _$UserSearchFailureTearOff();

/// @nodoc
mixin _$UserSearchFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userNotActive(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userNotActive(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(_UserNotFound value),
    @required Result userNotActive(_UserNotActive value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(_UserNotFound value),
    Result userNotActive(_UserNotActive value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UserSearchFailureCopyWith<$Res> {
  factory $UserSearchFailureCopyWith(
          UserSearchFailure value, $Res Function(UserSearchFailure) then) =
      _$UserSearchFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSearchFailureCopyWithImpl<$Res>
    implements $UserSearchFailureCopyWith<$Res> {
  _$UserSearchFailureCopyWithImpl(this._value, this._then);

  final UserSearchFailure _value;
  // ignore: unused_field
  final $Res Function(UserSearchFailure) _then;
}

/// @nodoc
abstract class _$UserNotFoundCopyWith<$Res> {
  factory _$UserNotFoundCopyWith(
          _UserNotFound value, $Res Function(_UserNotFound) then) =
      __$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserNotFoundCopyWithImpl<$Res>
    extends _$UserSearchFailureCopyWithImpl<$Res>
    implements _$UserNotFoundCopyWith<$Res> {
  __$UserNotFoundCopyWithImpl(
      _UserNotFound _value, $Res Function(_UserNotFound) _then)
      : super(_value, (v) => _then(v as _UserNotFound));

  @override
  _UserNotFound get _value => super._value as _UserNotFound;
}

/// @nodoc
class _$_UserNotFound implements _UserNotFound {
  const _$_UserNotFound();

  @override
  String toString() {
    return 'UserSearchFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userNotActive(),
  }) {
    assert(userNotFound != null);
    assert(userNotActive != null);
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userNotActive(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(_UserNotFound value),
    @required Result userNotActive(_UserNotActive value),
  }) {
    assert(userNotFound != null);
    assert(userNotActive != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(_UserNotFound value),
    Result userNotActive(_UserNotActive value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements UserSearchFailure {
  const factory _UserNotFound() = _$_UserNotFound;
}

/// @nodoc
abstract class _$UserNotActiveCopyWith<$Res> {
  factory _$UserNotActiveCopyWith(
          _UserNotActive value, $Res Function(_UserNotActive) then) =
      __$UserNotActiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserNotActiveCopyWithImpl<$Res>
    extends _$UserSearchFailureCopyWithImpl<$Res>
    implements _$UserNotActiveCopyWith<$Res> {
  __$UserNotActiveCopyWithImpl(
      _UserNotActive _value, $Res Function(_UserNotActive) _then)
      : super(_value, (v) => _then(v as _UserNotActive));

  @override
  _UserNotActive get _value => super._value as _UserNotActive;
}

/// @nodoc
class _$_UserNotActive implements _UserNotActive {
  const _$_UserNotActive();

  @override
  String toString() {
    return 'UserSearchFailure.userNotActive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserNotActive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userNotActive(),
  }) {
    assert(userNotFound != null);
    assert(userNotActive != null);
    return userNotActive();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userNotActive(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotActive != null) {
      return userNotActive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(_UserNotFound value),
    @required Result userNotActive(_UserNotActive value),
  }) {
    assert(userNotFound != null);
    assert(userNotActive != null);
    return userNotActive(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(_UserNotFound value),
    Result userNotActive(_UserNotActive value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotActive != null) {
      return userNotActive(this);
    }
    return orElse();
  }
}

abstract class _UserNotActive implements UserSearchFailure {
  const factory _UserNotActive() = _$_UserNotActive;
}
