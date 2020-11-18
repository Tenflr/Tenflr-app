// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'phone_init_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PhoneInitEventTearOff {
  const _$PhoneInitEventTearOff();

// ignore: unused_element
  _InitPhoneE initComplete({@required Map<String, dynamic> info}) {
    return _InitPhoneE(
      info: info,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PhoneInitEvent = _$PhoneInitEventTearOff();

/// @nodoc
mixin _$PhoneInitEvent {
  Map<String, dynamic> get info;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initComplete(Map<String, dynamic> info),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initComplete(Map<String, dynamic> info),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initComplete(_InitPhoneE value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initComplete(_InitPhoneE value),
    @required Result orElse(),
  });

  $PhoneInitEventCopyWith<PhoneInitEvent> get copyWith;
}

/// @nodoc
abstract class $PhoneInitEventCopyWith<$Res> {
  factory $PhoneInitEventCopyWith(
          PhoneInitEvent value, $Res Function(PhoneInitEvent) then) =
      _$PhoneInitEventCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> info});
}

/// @nodoc
class _$PhoneInitEventCopyWithImpl<$Res>
    implements $PhoneInitEventCopyWith<$Res> {
  _$PhoneInitEventCopyWithImpl(this._value, this._then);

  final PhoneInitEvent _value;
  // ignore: unused_field
  final $Res Function(PhoneInitEvent) _then;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed ? _value.info : info as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$InitPhoneECopyWith<$Res>
    implements $PhoneInitEventCopyWith<$Res> {
  factory _$InitPhoneECopyWith(
          _InitPhoneE value, $Res Function(_InitPhoneE) then) =
      __$InitPhoneECopyWithImpl<$Res>;
  @override
  $Res call({Map<String, dynamic> info});
}

/// @nodoc
class __$InitPhoneECopyWithImpl<$Res> extends _$PhoneInitEventCopyWithImpl<$Res>
    implements _$InitPhoneECopyWith<$Res> {
  __$InitPhoneECopyWithImpl(
      _InitPhoneE _value, $Res Function(_InitPhoneE) _then)
      : super(_value, (v) => _then(v as _InitPhoneE));

  @override
  _InitPhoneE get _value => super._value as _InitPhoneE;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(_InitPhoneE(
      info: info == freezed ? _value.info : info as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
class _$_InitPhoneE with DiagnosticableTreeMixin implements _InitPhoneE {
  const _$_InitPhoneE({@required this.info}) : assert(info != null);

  @override
  final Map<String, dynamic> info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneInitEvent.initComplete(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneInitEvent.initComplete'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitPhoneE &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @override
  _$InitPhoneECopyWith<_InitPhoneE> get copyWith =>
      __$InitPhoneECopyWithImpl<_InitPhoneE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initComplete(Map<String, dynamic> info),
  }) {
    assert(initComplete != null);
    return initComplete(info);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initComplete(Map<String, dynamic> info),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initComplete != null) {
      return initComplete(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initComplete(_InitPhoneE value),
  }) {
    assert(initComplete != null);
    return initComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initComplete(_InitPhoneE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initComplete != null) {
      return initComplete(this);
    }
    return orElse();
  }
}

abstract class _InitPhoneE implements PhoneInitEvent {
  const factory _InitPhoneE({@required Map<String, dynamic> info}) =
      _$_InitPhoneE;

  @override
  Map<String, dynamic> get info;
  @override
  _$InitPhoneECopyWith<_InitPhoneE> get copyWith;
}

/// @nodoc
class _$PhoneInitStateTearOff {
  const _$PhoneInitStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Completed completed({@required Map<String, dynamic> info}) {
    return _Completed(
      info: info,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PhoneInitState = _$PhoneInitStateTearOff();

/// @nodoc
mixin _$PhoneInitState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result completed(Map<String, dynamic> info),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result completed(Map<String, dynamic> info),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result completed(_Completed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result completed(_Completed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PhoneInitStateCopyWith<$Res> {
  factory $PhoneInitStateCopyWith(
          PhoneInitState value, $Res Function(PhoneInitState) then) =
      _$PhoneInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneInitStateCopyWithImpl<$Res>
    implements $PhoneInitStateCopyWith<$Res> {
  _$PhoneInitStateCopyWithImpl(this._value, this._then);

  final PhoneInitState _value;
  // ignore: unused_field
  final $Res Function(PhoneInitState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PhoneInitStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneInitState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PhoneInitState.initial'));
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
    @required Result loading(),
    @required Result completed(Map<String, dynamic> info),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(completed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result completed(Map<String, dynamic> info),
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
    @required Result loading(_Loading value),
    @required Result completed(_Completed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(completed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result completed(_Completed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PhoneInitState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PhoneInitStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneInitState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PhoneInitState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result completed(Map<String, dynamic> info),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(completed != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result completed(Map<String, dynamic> info),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result completed(_Completed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(completed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result completed(_Completed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PhoneInitState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$CompletedCopyWith<$Res> {
  factory _$CompletedCopyWith(
          _Completed value, $Res Function(_Completed) then) =
      __$CompletedCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> info});
}

/// @nodoc
class __$CompletedCopyWithImpl<$Res> extends _$PhoneInitStateCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(_Completed _value, $Res Function(_Completed) _then)
      : super(_value, (v) => _then(v as _Completed));

  @override
  _Completed get _value => super._value as _Completed;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(_Completed(
      info: info == freezed ? _value.info : info as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
class _$_Completed with DiagnosticableTreeMixin implements _Completed {
  const _$_Completed({@required this.info}) : assert(info != null);

  @override
  final Map<String, dynamic> info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneInitState.completed(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneInitState.completed'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Completed &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @override
  _$CompletedCopyWith<_Completed> get copyWith =>
      __$CompletedCopyWithImpl<_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result completed(Map<String, dynamic> info),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(completed != null);
    return completed(info);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result completed(Map<String, dynamic> info),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result completed(_Completed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(completed != null);
    return completed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result completed(_Completed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements PhoneInitState {
  const factory _Completed({@required Map<String, dynamic> info}) =
      _$_Completed;

  Map<String, dynamic> get info;
  _$CompletedCopyWith<_Completed> get copyWith;
}
