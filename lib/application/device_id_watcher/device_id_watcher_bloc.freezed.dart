// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'device_id_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DeviceIdWatcherEventTearOff {
  const _$DeviceIdWatcherEventTearOff();

// ignore: unused_element
  _WatchDeviceId watchDeviceId() {
    return const _WatchDeviceId();
  }

// ignore: unused_element
  _DeviceIdLoaded loadComplete(
      {@required Either<AuthFailure, DeviceId> failureOrDeviceId}) {
    return _DeviceIdLoaded(
      failureOrDeviceId: failureOrDeviceId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeviceIdWatcherEvent = _$DeviceIdWatcherEventTearOff();

/// @nodoc
mixin _$DeviceIdWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchDeviceId(),
    @required
        Result loadComplete(Either<AuthFailure, DeviceId> failureOrDeviceId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchDeviceId(),
    Result loadComplete(Either<AuthFailure, DeviceId> failureOrDeviceId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchDeviceId(_WatchDeviceId value),
    @required Result loadComplete(_DeviceIdLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchDeviceId(_WatchDeviceId value),
    Result loadComplete(_DeviceIdLoaded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $DeviceIdWatcherEventCopyWith<$Res> {
  factory $DeviceIdWatcherEventCopyWith(DeviceIdWatcherEvent value,
          $Res Function(DeviceIdWatcherEvent) then) =
      _$DeviceIdWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceIdWatcherEventCopyWithImpl<$Res>
    implements $DeviceIdWatcherEventCopyWith<$Res> {
  _$DeviceIdWatcherEventCopyWithImpl(this._value, this._then);

  final DeviceIdWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(DeviceIdWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchDeviceIdCopyWith<$Res> {
  factory _$WatchDeviceIdCopyWith(
          _WatchDeviceId value, $Res Function(_WatchDeviceId) then) =
      __$WatchDeviceIdCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchDeviceIdCopyWithImpl<$Res>
    extends _$DeviceIdWatcherEventCopyWithImpl<$Res>
    implements _$WatchDeviceIdCopyWith<$Res> {
  __$WatchDeviceIdCopyWithImpl(
      _WatchDeviceId _value, $Res Function(_WatchDeviceId) _then)
      : super(_value, (v) => _then(v as _WatchDeviceId));

  @override
  _WatchDeviceId get _value => super._value as _WatchDeviceId;
}

/// @nodoc
class _$_WatchDeviceId implements _WatchDeviceId {
  const _$_WatchDeviceId();

  @override
  String toString() {
    return 'DeviceIdWatcherEvent.watchDeviceId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchDeviceId);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchDeviceId(),
    @required
        Result loadComplete(Either<AuthFailure, DeviceId> failureOrDeviceId),
  }) {
    assert(watchDeviceId != null);
    assert(loadComplete != null);
    return watchDeviceId();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchDeviceId(),
    Result loadComplete(Either<AuthFailure, DeviceId> failureOrDeviceId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchDeviceId != null) {
      return watchDeviceId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchDeviceId(_WatchDeviceId value),
    @required Result loadComplete(_DeviceIdLoaded value),
  }) {
    assert(watchDeviceId != null);
    assert(loadComplete != null);
    return watchDeviceId(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchDeviceId(_WatchDeviceId value),
    Result loadComplete(_DeviceIdLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchDeviceId != null) {
      return watchDeviceId(this);
    }
    return orElse();
  }
}

abstract class _WatchDeviceId implements DeviceIdWatcherEvent {
  const factory _WatchDeviceId() = _$_WatchDeviceId;
}

/// @nodoc
abstract class _$DeviceIdLoadedCopyWith<$Res> {
  factory _$DeviceIdLoadedCopyWith(
          _DeviceIdLoaded value, $Res Function(_DeviceIdLoaded) then) =
      __$DeviceIdLoadedCopyWithImpl<$Res>;
  $Res call({Either<AuthFailure, DeviceId> failureOrDeviceId});
}

/// @nodoc
class __$DeviceIdLoadedCopyWithImpl<$Res>
    extends _$DeviceIdWatcherEventCopyWithImpl<$Res>
    implements _$DeviceIdLoadedCopyWith<$Res> {
  __$DeviceIdLoadedCopyWithImpl(
      _DeviceIdLoaded _value, $Res Function(_DeviceIdLoaded) _then)
      : super(_value, (v) => _then(v as _DeviceIdLoaded));

  @override
  _DeviceIdLoaded get _value => super._value as _DeviceIdLoaded;

  @override
  $Res call({
    Object failureOrDeviceId = freezed,
  }) {
    return _then(_DeviceIdLoaded(
      failureOrDeviceId: failureOrDeviceId == freezed
          ? _value.failureOrDeviceId
          : failureOrDeviceId as Either<AuthFailure, DeviceId>,
    ));
  }
}

/// @nodoc
class _$_DeviceIdLoaded implements _DeviceIdLoaded {
  const _$_DeviceIdLoaded({@required this.failureOrDeviceId})
      : assert(failureOrDeviceId != null);

  @override
  final Either<AuthFailure, DeviceId> failureOrDeviceId;

  @override
  String toString() {
    return 'DeviceIdWatcherEvent.loadComplete(failureOrDeviceId: $failureOrDeviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceIdLoaded &&
            (identical(other.failureOrDeviceId, failureOrDeviceId) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrDeviceId, failureOrDeviceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrDeviceId);

  @override
  _$DeviceIdLoadedCopyWith<_DeviceIdLoaded> get copyWith =>
      __$DeviceIdLoadedCopyWithImpl<_DeviceIdLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchDeviceId(),
    @required
        Result loadComplete(Either<AuthFailure, DeviceId> failureOrDeviceId),
  }) {
    assert(watchDeviceId != null);
    assert(loadComplete != null);
    return loadComplete(failureOrDeviceId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchDeviceId(),
    Result loadComplete(Either<AuthFailure, DeviceId> failureOrDeviceId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadComplete != null) {
      return loadComplete(failureOrDeviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchDeviceId(_WatchDeviceId value),
    @required Result loadComplete(_DeviceIdLoaded value),
  }) {
    assert(watchDeviceId != null);
    assert(loadComplete != null);
    return loadComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchDeviceId(_WatchDeviceId value),
    Result loadComplete(_DeviceIdLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadComplete != null) {
      return loadComplete(this);
    }
    return orElse();
  }
}

abstract class _DeviceIdLoaded implements DeviceIdWatcherEvent {
  const factory _DeviceIdLoaded(
          {@required Either<AuthFailure, DeviceId> failureOrDeviceId}) =
      _$_DeviceIdLoaded;

  Either<AuthFailure, DeviceId> get failureOrDeviceId;
  _$DeviceIdLoadedCopyWith<_DeviceIdLoaded> get copyWith;
}

/// @nodoc
class _$DeviceIdWatcherStateTearOff {
  const _$DeviceIdWatcherStateTearOff();

// ignore: unused_element
  _DeviceIdWatcherState call(
      {@required UniqueId deviceId,
      @required EmailAddress email,
      @required ValidPhoneNumber tel,
      @required Option<Either<AuthFailure, DeviceId>> successOrFailureOption}) {
    return _DeviceIdWatcherState(
      deviceId: deviceId,
      email: email,
      tel: tel,
      successOrFailureOption: successOrFailureOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeviceIdWatcherState = _$DeviceIdWatcherStateTearOff();

/// @nodoc
mixin _$DeviceIdWatcherState {
  UniqueId get deviceId;
  EmailAddress get email;
  ValidPhoneNumber get tel;
  Option<Either<AuthFailure, DeviceId>> get successOrFailureOption;

  $DeviceIdWatcherStateCopyWith<DeviceIdWatcherState> get copyWith;
}

/// @nodoc
abstract class $DeviceIdWatcherStateCopyWith<$Res> {
  factory $DeviceIdWatcherStateCopyWith(DeviceIdWatcherState value,
          $Res Function(DeviceIdWatcherState) then) =
      _$DeviceIdWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {UniqueId deviceId,
      EmailAddress email,
      ValidPhoneNumber tel,
      Option<Either<AuthFailure, DeviceId>> successOrFailureOption});
}

/// @nodoc
class _$DeviceIdWatcherStateCopyWithImpl<$Res>
    implements $DeviceIdWatcherStateCopyWith<$Res> {
  _$DeviceIdWatcherStateCopyWithImpl(this._value, this._then);

  final DeviceIdWatcherState _value;
  // ignore: unused_field
  final $Res Function(DeviceIdWatcherState) _then;

  @override
  $Res call({
    Object deviceId = freezed,
    Object email = freezed,
    Object tel = freezed,
    Object successOrFailureOption = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: deviceId == freezed ? _value.deviceId : deviceId as UniqueId,
      email: email == freezed ? _value.email : email as EmailAddress,
      tel: tel == freezed ? _value.tel : tel as ValidPhoneNumber,
      successOrFailureOption: successOrFailureOption == freezed
          ? _value.successOrFailureOption
          : successOrFailureOption as Option<Either<AuthFailure, DeviceId>>,
    ));
  }
}

/// @nodoc
abstract class _$DeviceIdWatcherStateCopyWith<$Res>
    implements $DeviceIdWatcherStateCopyWith<$Res> {
  factory _$DeviceIdWatcherStateCopyWith(_DeviceIdWatcherState value,
          $Res Function(_DeviceIdWatcherState) then) =
      __$DeviceIdWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId deviceId,
      EmailAddress email,
      ValidPhoneNumber tel,
      Option<Either<AuthFailure, DeviceId>> successOrFailureOption});
}

/// @nodoc
class __$DeviceIdWatcherStateCopyWithImpl<$Res>
    extends _$DeviceIdWatcherStateCopyWithImpl<$Res>
    implements _$DeviceIdWatcherStateCopyWith<$Res> {
  __$DeviceIdWatcherStateCopyWithImpl(
      _DeviceIdWatcherState _value, $Res Function(_DeviceIdWatcherState) _then)
      : super(_value, (v) => _then(v as _DeviceIdWatcherState));

  @override
  _DeviceIdWatcherState get _value => super._value as _DeviceIdWatcherState;

  @override
  $Res call({
    Object deviceId = freezed,
    Object email = freezed,
    Object tel = freezed,
    Object successOrFailureOption = freezed,
  }) {
    return _then(_DeviceIdWatcherState(
      deviceId: deviceId == freezed ? _value.deviceId : deviceId as UniqueId,
      email: email == freezed ? _value.email : email as EmailAddress,
      tel: tel == freezed ? _value.tel : tel as ValidPhoneNumber,
      successOrFailureOption: successOrFailureOption == freezed
          ? _value.successOrFailureOption
          : successOrFailureOption as Option<Either<AuthFailure, DeviceId>>,
    ));
  }
}

/// @nodoc
class _$_DeviceIdWatcherState implements _DeviceIdWatcherState {
  const _$_DeviceIdWatcherState(
      {@required this.deviceId,
      @required this.email,
      @required this.tel,
      @required this.successOrFailureOption})
      : assert(deviceId != null),
        assert(email != null),
        assert(tel != null),
        assert(successOrFailureOption != null);

  @override
  final UniqueId deviceId;
  @override
  final EmailAddress email;
  @override
  final ValidPhoneNumber tel;
  @override
  final Option<Either<AuthFailure, DeviceId>> successOrFailureOption;

  @override
  String toString() {
    return 'DeviceIdWatcherState(deviceId: $deviceId, email: $email, tel: $tel, successOrFailureOption: $successOrFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceIdWatcherState &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.tel, tel) ||
                const DeepCollectionEquality().equals(other.tel, tel)) &&
            (identical(other.successOrFailureOption, successOrFailureOption) ||
                const DeepCollectionEquality().equals(
                    other.successOrFailureOption, successOrFailureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(tel) ^
      const DeepCollectionEquality().hash(successOrFailureOption);

  @override
  _$DeviceIdWatcherStateCopyWith<_DeviceIdWatcherState> get copyWith =>
      __$DeviceIdWatcherStateCopyWithImpl<_DeviceIdWatcherState>(
          this, _$identity);
}

abstract class _DeviceIdWatcherState implements DeviceIdWatcherState {
  const factory _DeviceIdWatcherState(
          {@required
              UniqueId deviceId,
          @required
              EmailAddress email,
          @required
              ValidPhoneNumber tel,
          @required
              Option<Either<AuthFailure, DeviceId>> successOrFailureOption}) =
      _$_DeviceIdWatcherState;

  @override
  UniqueId get deviceId;
  @override
  EmailAddress get email;
  @override
  ValidPhoneNumber get tel;
  @override
  Option<Either<AuthFailure, DeviceId>> get successOrFailureOption;
  @override
  _$DeviceIdWatcherStateCopyWith<_DeviceIdWatcherState> get copyWith;
}
