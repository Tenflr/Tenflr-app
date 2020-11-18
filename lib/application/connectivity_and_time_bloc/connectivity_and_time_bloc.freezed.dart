// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'connectivity_and_time_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ConnectivityAndTimeStateTearOff {
  const _$ConnectivityAndTimeStateTearOff();

// ignore: unused_element
  _ConnectivityAndTimeState call(
      {@required bool isConnected, @required bool isSyncedTime}) {
    return _ConnectivityAndTimeState(
      isConnected: isConnected,
      isSyncedTime: isSyncedTime,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ConnectivityAndTimeState = _$ConnectivityAndTimeStateTearOff();

/// @nodoc
mixin _$ConnectivityAndTimeState {
  bool get isConnected;
  bool get isSyncedTime;

  $ConnectivityAndTimeStateCopyWith<ConnectivityAndTimeState> get copyWith;
}

/// @nodoc
abstract class $ConnectivityAndTimeStateCopyWith<$Res> {
  factory $ConnectivityAndTimeStateCopyWith(ConnectivityAndTimeState value,
          $Res Function(ConnectivityAndTimeState) then) =
      _$ConnectivityAndTimeStateCopyWithImpl<$Res>;
  $Res call({bool isConnected, bool isSyncedTime});
}

/// @nodoc
class _$ConnectivityAndTimeStateCopyWithImpl<$Res>
    implements $ConnectivityAndTimeStateCopyWith<$Res> {
  _$ConnectivityAndTimeStateCopyWithImpl(this._value, this._then);

  final ConnectivityAndTimeState _value;
  // ignore: unused_field
  final $Res Function(ConnectivityAndTimeState) _then;

  @override
  $Res call({
    Object isConnected = freezed,
    Object isSyncedTime = freezed,
  }) {
    return _then(_value.copyWith(
      isConnected:
          isConnected == freezed ? _value.isConnected : isConnected as bool,
      isSyncedTime:
          isSyncedTime == freezed ? _value.isSyncedTime : isSyncedTime as bool,
    ));
  }
}

/// @nodoc
abstract class _$ConnectivityAndTimeStateCopyWith<$Res>
    implements $ConnectivityAndTimeStateCopyWith<$Res> {
  factory _$ConnectivityAndTimeStateCopyWith(_ConnectivityAndTimeState value,
          $Res Function(_ConnectivityAndTimeState) then) =
      __$ConnectivityAndTimeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isConnected, bool isSyncedTime});
}

/// @nodoc
class __$ConnectivityAndTimeStateCopyWithImpl<$Res>
    extends _$ConnectivityAndTimeStateCopyWithImpl<$Res>
    implements _$ConnectivityAndTimeStateCopyWith<$Res> {
  __$ConnectivityAndTimeStateCopyWithImpl(_ConnectivityAndTimeState _value,
      $Res Function(_ConnectivityAndTimeState) _then)
      : super(_value, (v) => _then(v as _ConnectivityAndTimeState));

  @override
  _ConnectivityAndTimeState get _value =>
      super._value as _ConnectivityAndTimeState;

  @override
  $Res call({
    Object isConnected = freezed,
    Object isSyncedTime = freezed,
  }) {
    return _then(_ConnectivityAndTimeState(
      isConnected:
          isConnected == freezed ? _value.isConnected : isConnected as bool,
      isSyncedTime:
          isSyncedTime == freezed ? _value.isSyncedTime : isSyncedTime as bool,
    ));
  }
}

/// @nodoc
class _$_ConnectivityAndTimeState extends _ConnectivityAndTimeState
    with DiagnosticableTreeMixin {
  _$_ConnectivityAndTimeState(
      {@required this.isConnected, @required this.isSyncedTime})
      : assert(isConnected != null),
        assert(isSyncedTime != null),
        super._();

  @override
  final bool isConnected;
  @override
  final bool isSyncedTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityAndTimeState(isConnected: $isConnected, isSyncedTime: $isSyncedTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectivityAndTimeState'))
      ..add(DiagnosticsProperty('isConnected', isConnected))
      ..add(DiagnosticsProperty('isSyncedTime', isSyncedTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConnectivityAndTimeState &&
            (identical(other.isConnected, isConnected) ||
                const DeepCollectionEquality()
                    .equals(other.isConnected, isConnected)) &&
            (identical(other.isSyncedTime, isSyncedTime) ||
                const DeepCollectionEquality()
                    .equals(other.isSyncedTime, isSyncedTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isConnected) ^
      const DeepCollectionEquality().hash(isSyncedTime);

  @override
  _$ConnectivityAndTimeStateCopyWith<_ConnectivityAndTimeState> get copyWith =>
      __$ConnectivityAndTimeStateCopyWithImpl<_ConnectivityAndTimeState>(
          this, _$identity);
}

abstract class _ConnectivityAndTimeState extends ConnectivityAndTimeState {
  _ConnectivityAndTimeState._() : super._();
  factory _ConnectivityAndTimeState(
      {@required bool isConnected,
      @required bool isSyncedTime}) = _$_ConnectivityAndTimeState;

  @override
  bool get isConnected;
  @override
  bool get isSyncedTime;
  @override
  _$ConnectivityAndTimeStateCopyWith<_ConnectivityAndTimeState> get copyWith;
}

/// @nodoc
class _$ConnectivityAndTimeEventTearOff {
  const _$ConnectivityAndTimeEventTearOff();

// ignore: unused_element
  _CheckInternet checkInternet() {
    return const _CheckInternet();
  }

// ignore: unused_element
  _InternetUP internetUp() {
    return const _InternetUP();
  }

// ignore: unused_element
  _InternetDown internetDown() {
    return const _InternetDown();
  }

// ignore: unused_element
  _InSync inSync() {
    return const _InSync();
  }

// ignore: unused_element
  _OutOfSync outOfSync() {
    return const _OutOfSync();
  }

// ignore: unused_element
  _CheckSynchronizedTime checkSynchronizedTime() {
    return const _CheckSynchronizedTime();
  }
}

/// @nodoc
// ignore: unused_element
const $ConnectivityAndTimeEvent = _$ConnectivityAndTimeEventTearOff();

/// @nodoc
mixin _$ConnectivityAndTimeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkInternet(),
    @required Result internetUp(),
    @required Result internetDown(),
    @required Result inSync(),
    @required Result outOfSync(),
    @required Result checkSynchronizedTime(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkInternet(),
    Result internetUp(),
    Result internetDown(),
    Result inSync(),
    Result outOfSync(),
    Result checkSynchronizedTime(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkInternet(_CheckInternet value),
    @required Result internetUp(_InternetUP value),
    @required Result internetDown(_InternetDown value),
    @required Result inSync(_InSync value),
    @required Result outOfSync(_OutOfSync value),
    @required Result checkSynchronizedTime(_CheckSynchronizedTime value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkInternet(_CheckInternet value),
    Result internetUp(_InternetUP value),
    Result internetDown(_InternetDown value),
    Result inSync(_InSync value),
    Result outOfSync(_OutOfSync value),
    Result checkSynchronizedTime(_CheckSynchronizedTime value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ConnectivityAndTimeEventCopyWith<$Res> {
  factory $ConnectivityAndTimeEventCopyWith(ConnectivityAndTimeEvent value,
          $Res Function(ConnectivityAndTimeEvent) then) =
      _$ConnectivityAndTimeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectivityAndTimeEventCopyWithImpl<$Res>
    implements $ConnectivityAndTimeEventCopyWith<$Res> {
  _$ConnectivityAndTimeEventCopyWithImpl(this._value, this._then);

  final ConnectivityAndTimeEvent _value;
  // ignore: unused_field
  final $Res Function(ConnectivityAndTimeEvent) _then;
}

/// @nodoc
abstract class _$CheckInternetCopyWith<$Res> {
  factory _$CheckInternetCopyWith(
          _CheckInternet value, $Res Function(_CheckInternet) then) =
      __$CheckInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckInternetCopyWithImpl<$Res>
    extends _$ConnectivityAndTimeEventCopyWithImpl<$Res>
    implements _$CheckInternetCopyWith<$Res> {
  __$CheckInternetCopyWithImpl(
      _CheckInternet _value, $Res Function(_CheckInternet) _then)
      : super(_value, (v) => _then(v as _CheckInternet));

  @override
  _CheckInternet get _value => super._value as _CheckInternet;
}

/// @nodoc
class _$_CheckInternet with DiagnosticableTreeMixin implements _CheckInternet {
  const _$_CheckInternet();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityAndTimeEvent.checkInternet()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ConnectivityAndTimeEvent.checkInternet'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkInternet(),
    @required Result internetUp(),
    @required Result internetDown(),
    @required Result inSync(),
    @required Result outOfSync(),
    @required Result checkSynchronizedTime(),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return checkInternet();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkInternet(),
    Result internetUp(),
    Result internetDown(),
    Result inSync(),
    Result outOfSync(),
    Result checkSynchronizedTime(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkInternet != null) {
      return checkInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkInternet(_CheckInternet value),
    @required Result internetUp(_InternetUP value),
    @required Result internetDown(_InternetDown value),
    @required Result inSync(_InSync value),
    @required Result outOfSync(_OutOfSync value),
    @required Result checkSynchronizedTime(_CheckSynchronizedTime value),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return checkInternet(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkInternet(_CheckInternet value),
    Result internetUp(_InternetUP value),
    Result internetDown(_InternetDown value),
    Result inSync(_InSync value),
    Result outOfSync(_OutOfSync value),
    Result checkSynchronizedTime(_CheckSynchronizedTime value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkInternet != null) {
      return checkInternet(this);
    }
    return orElse();
  }
}

abstract class _CheckInternet implements ConnectivityAndTimeEvent {
  const factory _CheckInternet() = _$_CheckInternet;
}

/// @nodoc
abstract class _$InternetUPCopyWith<$Res> {
  factory _$InternetUPCopyWith(
          _InternetUP value, $Res Function(_InternetUP) then) =
      __$InternetUPCopyWithImpl<$Res>;
}

/// @nodoc
class __$InternetUPCopyWithImpl<$Res>
    extends _$ConnectivityAndTimeEventCopyWithImpl<$Res>
    implements _$InternetUPCopyWith<$Res> {
  __$InternetUPCopyWithImpl(
      _InternetUP _value, $Res Function(_InternetUP) _then)
      : super(_value, (v) => _then(v as _InternetUP));

  @override
  _InternetUP get _value => super._value as _InternetUP;
}

/// @nodoc
class _$_InternetUP with DiagnosticableTreeMixin implements _InternetUP {
  const _$_InternetUP();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityAndTimeEvent.internetUp()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectivityAndTimeEvent.internetUp'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InternetUP);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkInternet(),
    @required Result internetUp(),
    @required Result internetDown(),
    @required Result inSync(),
    @required Result outOfSync(),
    @required Result checkSynchronizedTime(),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return internetUp();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkInternet(),
    Result internetUp(),
    Result internetDown(),
    Result inSync(),
    Result outOfSync(),
    Result checkSynchronizedTime(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internetUp != null) {
      return internetUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkInternet(_CheckInternet value),
    @required Result internetUp(_InternetUP value),
    @required Result internetDown(_InternetDown value),
    @required Result inSync(_InSync value),
    @required Result outOfSync(_OutOfSync value),
    @required Result checkSynchronizedTime(_CheckSynchronizedTime value),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return internetUp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkInternet(_CheckInternet value),
    Result internetUp(_InternetUP value),
    Result internetDown(_InternetDown value),
    Result inSync(_InSync value),
    Result outOfSync(_OutOfSync value),
    Result checkSynchronizedTime(_CheckSynchronizedTime value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internetUp != null) {
      return internetUp(this);
    }
    return orElse();
  }
}

abstract class _InternetUP implements ConnectivityAndTimeEvent {
  const factory _InternetUP() = _$_InternetUP;
}

/// @nodoc
abstract class _$InternetDownCopyWith<$Res> {
  factory _$InternetDownCopyWith(
          _InternetDown value, $Res Function(_InternetDown) then) =
      __$InternetDownCopyWithImpl<$Res>;
}

/// @nodoc
class __$InternetDownCopyWithImpl<$Res>
    extends _$ConnectivityAndTimeEventCopyWithImpl<$Res>
    implements _$InternetDownCopyWith<$Res> {
  __$InternetDownCopyWithImpl(
      _InternetDown _value, $Res Function(_InternetDown) _then)
      : super(_value, (v) => _then(v as _InternetDown));

  @override
  _InternetDown get _value => super._value as _InternetDown;
}

/// @nodoc
class _$_InternetDown with DiagnosticableTreeMixin implements _InternetDown {
  const _$_InternetDown();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityAndTimeEvent.internetDown()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ConnectivityAndTimeEvent.internetDown'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InternetDown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkInternet(),
    @required Result internetUp(),
    @required Result internetDown(),
    @required Result inSync(),
    @required Result outOfSync(),
    @required Result checkSynchronizedTime(),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return internetDown();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkInternet(),
    Result internetUp(),
    Result internetDown(),
    Result inSync(),
    Result outOfSync(),
    Result checkSynchronizedTime(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internetDown != null) {
      return internetDown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkInternet(_CheckInternet value),
    @required Result internetUp(_InternetUP value),
    @required Result internetDown(_InternetDown value),
    @required Result inSync(_InSync value),
    @required Result outOfSync(_OutOfSync value),
    @required Result checkSynchronizedTime(_CheckSynchronizedTime value),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return internetDown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkInternet(_CheckInternet value),
    Result internetUp(_InternetUP value),
    Result internetDown(_InternetDown value),
    Result inSync(_InSync value),
    Result outOfSync(_OutOfSync value),
    Result checkSynchronizedTime(_CheckSynchronizedTime value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internetDown != null) {
      return internetDown(this);
    }
    return orElse();
  }
}

abstract class _InternetDown implements ConnectivityAndTimeEvent {
  const factory _InternetDown() = _$_InternetDown;
}

/// @nodoc
abstract class _$InSyncCopyWith<$Res> {
  factory _$InSyncCopyWith(_InSync value, $Res Function(_InSync) then) =
      __$InSyncCopyWithImpl<$Res>;
}

/// @nodoc
class __$InSyncCopyWithImpl<$Res>
    extends _$ConnectivityAndTimeEventCopyWithImpl<$Res>
    implements _$InSyncCopyWith<$Res> {
  __$InSyncCopyWithImpl(_InSync _value, $Res Function(_InSync) _then)
      : super(_value, (v) => _then(v as _InSync));

  @override
  _InSync get _value => super._value as _InSync;
}

/// @nodoc
class _$_InSync with DiagnosticableTreeMixin implements _InSync {
  const _$_InSync();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityAndTimeEvent.inSync()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectivityAndTimeEvent.inSync'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InSync);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkInternet(),
    @required Result internetUp(),
    @required Result internetDown(),
    @required Result inSync(),
    @required Result outOfSync(),
    @required Result checkSynchronizedTime(),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return inSync();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkInternet(),
    Result internetUp(),
    Result internetDown(),
    Result inSync(),
    Result outOfSync(),
    Result checkSynchronizedTime(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inSync != null) {
      return inSync();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkInternet(_CheckInternet value),
    @required Result internetUp(_InternetUP value),
    @required Result internetDown(_InternetDown value),
    @required Result inSync(_InSync value),
    @required Result outOfSync(_OutOfSync value),
    @required Result checkSynchronizedTime(_CheckSynchronizedTime value),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return inSync(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkInternet(_CheckInternet value),
    Result internetUp(_InternetUP value),
    Result internetDown(_InternetDown value),
    Result inSync(_InSync value),
    Result outOfSync(_OutOfSync value),
    Result checkSynchronizedTime(_CheckSynchronizedTime value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inSync != null) {
      return inSync(this);
    }
    return orElse();
  }
}

abstract class _InSync implements ConnectivityAndTimeEvent {
  const factory _InSync() = _$_InSync;
}

/// @nodoc
abstract class _$OutOfSyncCopyWith<$Res> {
  factory _$OutOfSyncCopyWith(
          _OutOfSync value, $Res Function(_OutOfSync) then) =
      __$OutOfSyncCopyWithImpl<$Res>;
}

/// @nodoc
class __$OutOfSyncCopyWithImpl<$Res>
    extends _$ConnectivityAndTimeEventCopyWithImpl<$Res>
    implements _$OutOfSyncCopyWith<$Res> {
  __$OutOfSyncCopyWithImpl(_OutOfSync _value, $Res Function(_OutOfSync) _then)
      : super(_value, (v) => _then(v as _OutOfSync));

  @override
  _OutOfSync get _value => super._value as _OutOfSync;
}

/// @nodoc
class _$_OutOfSync with DiagnosticableTreeMixin implements _OutOfSync {
  const _$_OutOfSync();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityAndTimeEvent.outOfSync()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectivityAndTimeEvent.outOfSync'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OutOfSync);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkInternet(),
    @required Result internetUp(),
    @required Result internetDown(),
    @required Result inSync(),
    @required Result outOfSync(),
    @required Result checkSynchronizedTime(),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return outOfSync();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkInternet(),
    Result internetUp(),
    Result internetDown(),
    Result inSync(),
    Result outOfSync(),
    Result checkSynchronizedTime(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (outOfSync != null) {
      return outOfSync();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkInternet(_CheckInternet value),
    @required Result internetUp(_InternetUP value),
    @required Result internetDown(_InternetDown value),
    @required Result inSync(_InSync value),
    @required Result outOfSync(_OutOfSync value),
    @required Result checkSynchronizedTime(_CheckSynchronizedTime value),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return outOfSync(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkInternet(_CheckInternet value),
    Result internetUp(_InternetUP value),
    Result internetDown(_InternetDown value),
    Result inSync(_InSync value),
    Result outOfSync(_OutOfSync value),
    Result checkSynchronizedTime(_CheckSynchronizedTime value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (outOfSync != null) {
      return outOfSync(this);
    }
    return orElse();
  }
}

abstract class _OutOfSync implements ConnectivityAndTimeEvent {
  const factory _OutOfSync() = _$_OutOfSync;
}

/// @nodoc
abstract class _$CheckSynchronizedTimeCopyWith<$Res> {
  factory _$CheckSynchronizedTimeCopyWith(_CheckSynchronizedTime value,
          $Res Function(_CheckSynchronizedTime) then) =
      __$CheckSynchronizedTimeCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckSynchronizedTimeCopyWithImpl<$Res>
    extends _$ConnectivityAndTimeEventCopyWithImpl<$Res>
    implements _$CheckSynchronizedTimeCopyWith<$Res> {
  __$CheckSynchronizedTimeCopyWithImpl(_CheckSynchronizedTime _value,
      $Res Function(_CheckSynchronizedTime) _then)
      : super(_value, (v) => _then(v as _CheckSynchronizedTime));

  @override
  _CheckSynchronizedTime get _value => super._value as _CheckSynchronizedTime;
}

/// @nodoc
class _$_CheckSynchronizedTime
    with DiagnosticableTreeMixin
    implements _CheckSynchronizedTime {
  const _$_CheckSynchronizedTime();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityAndTimeEvent.checkSynchronizedTime()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ConnectivityAndTimeEvent.checkSynchronizedTime'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckSynchronizedTime);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkInternet(),
    @required Result internetUp(),
    @required Result internetDown(),
    @required Result inSync(),
    @required Result outOfSync(),
    @required Result checkSynchronizedTime(),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return checkSynchronizedTime();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkInternet(),
    Result internetUp(),
    Result internetDown(),
    Result inSync(),
    Result outOfSync(),
    Result checkSynchronizedTime(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkSynchronizedTime != null) {
      return checkSynchronizedTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkInternet(_CheckInternet value),
    @required Result internetUp(_InternetUP value),
    @required Result internetDown(_InternetDown value),
    @required Result inSync(_InSync value),
    @required Result outOfSync(_OutOfSync value),
    @required Result checkSynchronizedTime(_CheckSynchronizedTime value),
  }) {
    assert(checkInternet != null);
    assert(internetUp != null);
    assert(internetDown != null);
    assert(inSync != null);
    assert(outOfSync != null);
    assert(checkSynchronizedTime != null);
    return checkSynchronizedTime(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkInternet(_CheckInternet value),
    Result internetUp(_InternetUP value),
    Result internetDown(_InternetDown value),
    Result inSync(_InSync value),
    Result outOfSync(_OutOfSync value),
    Result checkSynchronizedTime(_CheckSynchronizedTime value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkSynchronizedTime != null) {
      return checkSynchronizedTime(this);
    }
    return orElse();
  }
}

abstract class _CheckSynchronizedTime implements ConnectivityAndTimeEvent {
  const factory _CheckSynchronizedTime() = _$_CheckSynchronizedTime;
}
