// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lock_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LockScreenEventTearOff {
  const _$LockScreenEventTearOff();

// ignore: unused_element
  _Lock lock() {
    return const _Lock();
  }

// ignore: unused_element
  _ShouldPaused shouldPaused(bool paused) {
    return _ShouldPaused(
      paused,
    );
  }

// ignore: unused_element
  _Unlock unlock(String pin) {
    return _Unlock(
      pin,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LockScreenEvent = _$LockScreenEventTearOff();

/// @nodoc
mixin _$LockScreenEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result lock(),
    @required Result shouldPaused(bool paused),
    @required Result unlock(String pin),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result lock(),
    Result shouldPaused(bool paused),
    Result unlock(String pin),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result lock(_Lock value),
    @required Result shouldPaused(_ShouldPaused value),
    @required Result unlock(_Unlock value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result lock(_Lock value),
    Result shouldPaused(_ShouldPaused value),
    Result unlock(_Unlock value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LockScreenEventCopyWith<$Res> {
  factory $LockScreenEventCopyWith(
          LockScreenEvent value, $Res Function(LockScreenEvent) then) =
      _$LockScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LockScreenEventCopyWithImpl<$Res>
    implements $LockScreenEventCopyWith<$Res> {
  _$LockScreenEventCopyWithImpl(this._value, this._then);

  final LockScreenEvent _value;
  // ignore: unused_field
  final $Res Function(LockScreenEvent) _then;
}

/// @nodoc
abstract class _$LockCopyWith<$Res> {
  factory _$LockCopyWith(_Lock value, $Res Function(_Lock) then) =
      __$LockCopyWithImpl<$Res>;
}

/// @nodoc
class __$LockCopyWithImpl<$Res> extends _$LockScreenEventCopyWithImpl<$Res>
    implements _$LockCopyWith<$Res> {
  __$LockCopyWithImpl(_Lock _value, $Res Function(_Lock) _then)
      : super(_value, (v) => _then(v as _Lock));

  @override
  _Lock get _value => super._value as _Lock;
}

/// @nodoc
class _$_Lock implements _Lock {
  const _$_Lock();

  @override
  String toString() {
    return 'LockScreenEvent.lock()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Lock);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result lock(),
    @required Result shouldPaused(bool paused),
    @required Result unlock(String pin),
  }) {
    assert(lock != null);
    assert(shouldPaused != null);
    assert(unlock != null);
    return lock();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result lock(),
    Result shouldPaused(bool paused),
    Result unlock(String pin),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lock != null) {
      return lock();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result lock(_Lock value),
    @required Result shouldPaused(_ShouldPaused value),
    @required Result unlock(_Unlock value),
  }) {
    assert(lock != null);
    assert(shouldPaused != null);
    assert(unlock != null);
    return lock(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result lock(_Lock value),
    Result shouldPaused(_ShouldPaused value),
    Result unlock(_Unlock value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lock != null) {
      return lock(this);
    }
    return orElse();
  }
}

abstract class _Lock implements LockScreenEvent {
  const factory _Lock() = _$_Lock;
}

/// @nodoc
abstract class _$ShouldPausedCopyWith<$Res> {
  factory _$ShouldPausedCopyWith(
          _ShouldPaused value, $Res Function(_ShouldPaused) then) =
      __$ShouldPausedCopyWithImpl<$Res>;
  $Res call({bool paused});
}

/// @nodoc
class __$ShouldPausedCopyWithImpl<$Res>
    extends _$LockScreenEventCopyWithImpl<$Res>
    implements _$ShouldPausedCopyWith<$Res> {
  __$ShouldPausedCopyWithImpl(
      _ShouldPaused _value, $Res Function(_ShouldPaused) _then)
      : super(_value, (v) => _then(v as _ShouldPaused));

  @override
  _ShouldPaused get _value => super._value as _ShouldPaused;

  @override
  $Res call({
    Object paused = freezed,
  }) {
    return _then(_ShouldPaused(
      paused == freezed ? _value.paused : paused as bool,
    ));
  }
}

/// @nodoc
class _$_ShouldPaused implements _ShouldPaused {
  const _$_ShouldPaused(this.paused) : assert(paused != null);

  @override
  final bool paused;

  @override
  String toString() {
    return 'LockScreenEvent.shouldPaused(paused: $paused)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShouldPaused &&
            (identical(other.paused, paused) ||
                const DeepCollectionEquality().equals(other.paused, paused)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(paused);

  @override
  _$ShouldPausedCopyWith<_ShouldPaused> get copyWith =>
      __$ShouldPausedCopyWithImpl<_ShouldPaused>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result lock(),
    @required Result shouldPaused(bool paused),
    @required Result unlock(String pin),
  }) {
    assert(lock != null);
    assert(shouldPaused != null);
    assert(unlock != null);
    return shouldPaused(paused);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result lock(),
    Result shouldPaused(bool paused),
    Result unlock(String pin),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shouldPaused != null) {
      return shouldPaused(paused);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result lock(_Lock value),
    @required Result shouldPaused(_ShouldPaused value),
    @required Result unlock(_Unlock value),
  }) {
    assert(lock != null);
    assert(shouldPaused != null);
    assert(unlock != null);
    return shouldPaused(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result lock(_Lock value),
    Result shouldPaused(_ShouldPaused value),
    Result unlock(_Unlock value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shouldPaused != null) {
      return shouldPaused(this);
    }
    return orElse();
  }
}

abstract class _ShouldPaused implements LockScreenEvent {
  const factory _ShouldPaused(bool paused) = _$_ShouldPaused;

  bool get paused;
  _$ShouldPausedCopyWith<_ShouldPaused> get copyWith;
}

/// @nodoc
abstract class _$UnlockCopyWith<$Res> {
  factory _$UnlockCopyWith(_Unlock value, $Res Function(_Unlock) then) =
      __$UnlockCopyWithImpl<$Res>;
  $Res call({String pin});
}

/// @nodoc
class __$UnlockCopyWithImpl<$Res> extends _$LockScreenEventCopyWithImpl<$Res>
    implements _$UnlockCopyWith<$Res> {
  __$UnlockCopyWithImpl(_Unlock _value, $Res Function(_Unlock) _then)
      : super(_value, (v) => _then(v as _Unlock));

  @override
  _Unlock get _value => super._value as _Unlock;

  @override
  $Res call({
    Object pin = freezed,
  }) {
    return _then(_Unlock(
      pin == freezed ? _value.pin : pin as String,
    ));
  }
}

/// @nodoc
class _$_Unlock implements _Unlock {
  const _$_Unlock(this.pin) : assert(pin != null);

  @override
  final String pin;

  @override
  String toString() {
    return 'LockScreenEvent.unlock(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unlock &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pin);

  @override
  _$UnlockCopyWith<_Unlock> get copyWith =>
      __$UnlockCopyWithImpl<_Unlock>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result lock(),
    @required Result shouldPaused(bool paused),
    @required Result unlock(String pin),
  }) {
    assert(lock != null);
    assert(shouldPaused != null);
    assert(unlock != null);
    return unlock(pin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result lock(),
    Result shouldPaused(bool paused),
    Result unlock(String pin),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unlock != null) {
      return unlock(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result lock(_Lock value),
    @required Result shouldPaused(_ShouldPaused value),
    @required Result unlock(_Unlock value),
  }) {
    assert(lock != null);
    assert(shouldPaused != null);
    assert(unlock != null);
    return unlock(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result lock(_Lock value),
    Result shouldPaused(_ShouldPaused value),
    Result unlock(_Unlock value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unlock != null) {
      return unlock(this);
    }
    return orElse();
  }
}

abstract class _Unlock implements LockScreenEvent {
  const factory _Unlock(String pin) = _$_Unlock;

  String get pin;
  _$UnlockCopyWith<_Unlock> get copyWith;
}

/// @nodoc
class _$LockScreenStateTearOff {
  const _$LockScreenStateTearOff();

// ignore: unused_element
  _LockScreenState call({@required bool isLocked, @required bool pausedLock}) {
    return _LockScreenState(
      isLocked: isLocked,
      pausedLock: pausedLock,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LockScreenState = _$LockScreenStateTearOff();

/// @nodoc
mixin _$LockScreenState {
  bool get isLocked;
  bool get pausedLock;

  $LockScreenStateCopyWith<LockScreenState> get copyWith;
}

/// @nodoc
abstract class $LockScreenStateCopyWith<$Res> {
  factory $LockScreenStateCopyWith(
          LockScreenState value, $Res Function(LockScreenState) then) =
      _$LockScreenStateCopyWithImpl<$Res>;
  $Res call({bool isLocked, bool pausedLock});
}

/// @nodoc
class _$LockScreenStateCopyWithImpl<$Res>
    implements $LockScreenStateCopyWith<$Res> {
  _$LockScreenStateCopyWithImpl(this._value, this._then);

  final LockScreenState _value;
  // ignore: unused_field
  final $Res Function(LockScreenState) _then;

  @override
  $Res call({
    Object isLocked = freezed,
    Object pausedLock = freezed,
  }) {
    return _then(_value.copyWith(
      isLocked: isLocked == freezed ? _value.isLocked : isLocked as bool,
      pausedLock:
          pausedLock == freezed ? _value.pausedLock : pausedLock as bool,
    ));
  }
}

/// @nodoc
abstract class _$LockScreenStateCopyWith<$Res>
    implements $LockScreenStateCopyWith<$Res> {
  factory _$LockScreenStateCopyWith(
          _LockScreenState value, $Res Function(_LockScreenState) then) =
      __$LockScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLocked, bool pausedLock});
}

/// @nodoc
class __$LockScreenStateCopyWithImpl<$Res>
    extends _$LockScreenStateCopyWithImpl<$Res>
    implements _$LockScreenStateCopyWith<$Res> {
  __$LockScreenStateCopyWithImpl(
      _LockScreenState _value, $Res Function(_LockScreenState) _then)
      : super(_value, (v) => _then(v as _LockScreenState));

  @override
  _LockScreenState get _value => super._value as _LockScreenState;

  @override
  $Res call({
    Object isLocked = freezed,
    Object pausedLock = freezed,
  }) {
    return _then(_LockScreenState(
      isLocked: isLocked == freezed ? _value.isLocked : isLocked as bool,
      pausedLock:
          pausedLock == freezed ? _value.pausedLock : pausedLock as bool,
    ));
  }
}

/// @nodoc
class _$_LockScreenState implements _LockScreenState {
  const _$_LockScreenState({@required this.isLocked, @required this.pausedLock})
      : assert(isLocked != null),
        assert(pausedLock != null);

  @override
  final bool isLocked;
  @override
  final bool pausedLock;

  @override
  String toString() {
    return 'LockScreenState(isLocked: $isLocked, pausedLock: $pausedLock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LockScreenState &&
            (identical(other.isLocked, isLocked) ||
                const DeepCollectionEquality()
                    .equals(other.isLocked, isLocked)) &&
            (identical(other.pausedLock, pausedLock) ||
                const DeepCollectionEquality()
                    .equals(other.pausedLock, pausedLock)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLocked) ^
      const DeepCollectionEquality().hash(pausedLock);

  @override
  _$LockScreenStateCopyWith<_LockScreenState> get copyWith =>
      __$LockScreenStateCopyWithImpl<_LockScreenState>(this, _$identity);
}

abstract class _LockScreenState implements LockScreenState {
  const factory _LockScreenState(
      {@required bool isLocked,
      @required bool pausedLock}) = _$_LockScreenState;

  @override
  bool get isLocked;
  @override
  bool get pausedLock;
  @override
  _$LockScreenStateCopyWith<_LockScreenState> get copyWith;
}
