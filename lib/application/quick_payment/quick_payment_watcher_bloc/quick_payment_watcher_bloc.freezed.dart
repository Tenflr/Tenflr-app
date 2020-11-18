// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quick_payment_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QuickPaymentWatcherStateTearOff {
  const _$QuickPaymentWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess({@required KtList<QuickPayment> quickPayment}) {
    return _LoadSuccess(
      quickPayment: quickPayment,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure({@required QuickPaymentFailure failure}) {
    return _LoadFailure(
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuickPaymentWatcherState = _$QuickPaymentWatcherStateTearOff();

/// @nodoc
mixin _$QuickPaymentWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<QuickPayment> quickPayment),
    @required Result loadFailure(QuickPaymentFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<QuickPayment> quickPayment),
    Result loadFailure(QuickPaymentFailure failure),
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
abstract class $QuickPaymentWatcherStateCopyWith<$Res> {
  factory $QuickPaymentWatcherStateCopyWith(QuickPaymentWatcherState value,
          $Res Function(QuickPaymentWatcherState) then) =
      _$QuickPaymentWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuickPaymentWatcherStateCopyWithImpl<$Res>
    implements $QuickPaymentWatcherStateCopyWith<$Res> {
  _$QuickPaymentWatcherStateCopyWithImpl(this._value, this._then);

  final QuickPaymentWatcherState _value;
  // ignore: unused_field
  final $Res Function(QuickPaymentWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$QuickPaymentWatcherStateCopyWithImpl<$Res>
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
    return 'QuickPaymentWatcherState.initial()';
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
    @required Result loadSuccess(KtList<QuickPayment> quickPayment),
    @required Result loadFailure(QuickPaymentFailure failure),
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
    Result loadSuccess(KtList<QuickPayment> quickPayment),
    Result loadFailure(QuickPaymentFailure failure),
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

abstract class _Initial implements QuickPaymentWatcherState {
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
    extends _$QuickPaymentWatcherStateCopyWithImpl<$Res>
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
    return 'QuickPaymentWatcherState.loadInProgress()';
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
    @required Result loadSuccess(KtList<QuickPayment> quickPayment),
    @required Result loadFailure(QuickPaymentFailure failure),
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
    Result loadSuccess(KtList<QuickPayment> quickPayment),
    Result loadFailure(QuickPaymentFailure failure),
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

abstract class _LoadInProgress implements QuickPaymentWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<QuickPayment> quickPayment});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$QuickPaymentWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object quickPayment = freezed,
  }) {
    return _then(_LoadSuccess(
      quickPayment: quickPayment == freezed
          ? _value.quickPayment
          : quickPayment as KtList<QuickPayment>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess({@required this.quickPayment})
      : assert(quickPayment != null);

  @override
  final KtList<QuickPayment> quickPayment;

  @override
  String toString() {
    return 'QuickPaymentWatcherState.loadSuccess(quickPayment: $quickPayment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.quickPayment, quickPayment) ||
                const DeepCollectionEquality()
                    .equals(other.quickPayment, quickPayment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quickPayment);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<QuickPayment> quickPayment),
    @required Result loadFailure(QuickPaymentFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(quickPayment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<QuickPayment> quickPayment),
    Result loadFailure(QuickPaymentFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(quickPayment);
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

abstract class _LoadSuccess implements QuickPaymentWatcherState {
  const factory _LoadSuccess({@required KtList<QuickPayment> quickPayment}) =
      _$_LoadSuccess;

  KtList<QuickPayment> get quickPayment;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({QuickPaymentFailure failure});

  $QuickPaymentFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$QuickPaymentWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure:
          failure == freezed ? _value.failure : failure as QuickPaymentFailure,
    ));
  }

  @override
  $QuickPaymentFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $QuickPaymentFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure({@required this.failure}) : assert(failure != null);

  @override
  final QuickPaymentFailure failure;

  @override
  String toString() {
    return 'QuickPaymentWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<QuickPayment> quickPayment),
    @required Result loadFailure(QuickPaymentFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<QuickPayment> quickPayment),
    Result loadFailure(QuickPaymentFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
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

abstract class _LoadFailure implements QuickPaymentWatcherState {
  const factory _LoadFailure({@required QuickPaymentFailure failure}) =
      _$_LoadFailure;

  QuickPaymentFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}

/// @nodoc
class _$QuickPaymentWatcherEventTearOff {
  const _$QuickPaymentWatcherEventTearOff();

// ignore: unused_element
  _WatchAll watchAll() {
    return const _WatchAll();
  }

// ignore: unused_element
  _LoadComplete listCompleted(
      {@required
          Either<QuickPaymentFailure, KtList<QuickPayment>>
              failureOrQuickPayment}) {
    return _LoadComplete(
      failureOrQuickPayment: failureOrQuickPayment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuickPaymentWatcherEvent = _$QuickPaymentWatcherEventTearOff();

/// @nodoc
mixin _$QuickPaymentWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required
        Result listCompleted(
            Either<QuickPaymentFailure, KtList<QuickPayment>>
                failureOrQuickPayment),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result listCompleted(
        Either<QuickPaymentFailure, KtList<QuickPayment>>
            failureOrQuickPayment),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result listCompleted(_LoadComplete value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result listCompleted(_LoadComplete value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $QuickPaymentWatcherEventCopyWith<$Res> {
  factory $QuickPaymentWatcherEventCopyWith(QuickPaymentWatcherEvent value,
          $Res Function(QuickPaymentWatcherEvent) then) =
      _$QuickPaymentWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuickPaymentWatcherEventCopyWithImpl<$Res>
    implements $QuickPaymentWatcherEventCopyWith<$Res> {
  _$QuickPaymentWatcherEventCopyWithImpl(this._value, this._then);

  final QuickPaymentWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(QuickPaymentWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllCopyWithImpl<$Res>
    extends _$QuickPaymentWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;
}

/// @nodoc
class _$_WatchAll implements _WatchAll {
  const _$_WatchAll();

  @override
  String toString() {
    return 'QuickPaymentWatcherEvent.watchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required
        Result listCompleted(
            Either<QuickPaymentFailure, KtList<QuickPayment>>
                failureOrQuickPayment),
  }) {
    assert(watchAll != null);
    assert(listCompleted != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result listCompleted(
        Either<QuickPaymentFailure, KtList<QuickPayment>>
            failureOrQuickPayment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result listCompleted(_LoadComplete value),
  }) {
    assert(watchAll != null);
    assert(listCompleted != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result listCompleted(_LoadComplete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements QuickPaymentWatcherEvent {
  const factory _WatchAll() = _$_WatchAll;
}

/// @nodoc
abstract class _$LoadCompleteCopyWith<$Res> {
  factory _$LoadCompleteCopyWith(
          _LoadComplete value, $Res Function(_LoadComplete) then) =
      __$LoadCompleteCopyWithImpl<$Res>;
  $Res call(
      {Either<QuickPaymentFailure, KtList<QuickPayment>>
          failureOrQuickPayment});
}

/// @nodoc
class __$LoadCompleteCopyWithImpl<$Res>
    extends _$QuickPaymentWatcherEventCopyWithImpl<$Res>
    implements _$LoadCompleteCopyWith<$Res> {
  __$LoadCompleteCopyWithImpl(
      _LoadComplete _value, $Res Function(_LoadComplete) _then)
      : super(_value, (v) => _then(v as _LoadComplete));

  @override
  _LoadComplete get _value => super._value as _LoadComplete;

  @override
  $Res call({
    Object failureOrQuickPayment = freezed,
  }) {
    return _then(_LoadComplete(
      failureOrQuickPayment: failureOrQuickPayment == freezed
          ? _value.failureOrQuickPayment
          : failureOrQuickPayment
              as Either<QuickPaymentFailure, KtList<QuickPayment>>,
    ));
  }
}

/// @nodoc
class _$_LoadComplete implements _LoadComplete {
  const _$_LoadComplete({@required this.failureOrQuickPayment})
      : assert(failureOrQuickPayment != null);

  @override
  final Either<QuickPaymentFailure, KtList<QuickPayment>> failureOrQuickPayment;

  @override
  String toString() {
    return 'QuickPaymentWatcherEvent.listCompleted(failureOrQuickPayment: $failureOrQuickPayment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadComplete &&
            (identical(other.failureOrQuickPayment, failureOrQuickPayment) ||
                const DeepCollectionEquality().equals(
                    other.failureOrQuickPayment, failureOrQuickPayment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrQuickPayment);

  @override
  _$LoadCompleteCopyWith<_LoadComplete> get copyWith =>
      __$LoadCompleteCopyWithImpl<_LoadComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required
        Result listCompleted(
            Either<QuickPaymentFailure, KtList<QuickPayment>>
                failureOrQuickPayment),
  }) {
    assert(watchAll != null);
    assert(listCompleted != null);
    return listCompleted(failureOrQuickPayment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result listCompleted(
        Either<QuickPaymentFailure, KtList<QuickPayment>>
            failureOrQuickPayment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listCompleted != null) {
      return listCompleted(failureOrQuickPayment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result listCompleted(_LoadComplete value),
  }) {
    assert(watchAll != null);
    assert(listCompleted != null);
    return listCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result listCompleted(_LoadComplete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listCompleted != null) {
      return listCompleted(this);
    }
    return orElse();
  }
}

abstract class _LoadComplete implements QuickPaymentWatcherEvent {
  const factory _LoadComplete(
      {@required
          Either<QuickPaymentFailure, KtList<QuickPayment>>
              failureOrQuickPayment}) = _$_LoadComplete;

  Either<QuickPaymentFailure, KtList<QuickPayment>> get failureOrQuickPayment;
  _$LoadCompleteCopyWith<_LoadComplete> get copyWith;
}
