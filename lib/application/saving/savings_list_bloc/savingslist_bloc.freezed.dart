// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'savingslist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SavingsListEventTearOff {
  const _$SavingsListEventTearOff();

// ignore: unused_element
  _WatchAll watchAll() {
    return const _WatchAll();
  }

// ignore: unused_element
  _LoadCompleted loadCompleted(
      {@required Either<SavingsFailure, KtList<Savings>> failureOrsavings}) {
    return _LoadCompleted(
      failureOrsavings: failureOrsavings,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SavingsListEvent = _$SavingsListEventTearOff();

/// @nodoc
mixin _$SavingsListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required
        Result loadCompleted(
            Either<SavingsFailure, KtList<Savings>> failureOrsavings),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result loadCompleted(
        Either<SavingsFailure, KtList<Savings>> failureOrsavings),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result loadCompleted(_LoadCompleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result loadCompleted(_LoadCompleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SavingsListEventCopyWith<$Res> {
  factory $SavingsListEventCopyWith(
          SavingsListEvent value, $Res Function(SavingsListEvent) then) =
      _$SavingsListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavingsListEventCopyWithImpl<$Res>
    implements $SavingsListEventCopyWith<$Res> {
  _$SavingsListEventCopyWithImpl(this._value, this._then);

  final SavingsListEvent _value;
  // ignore: unused_field
  final $Res Function(SavingsListEvent) _then;
}

/// @nodoc
abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllCopyWithImpl<$Res> extends _$SavingsListEventCopyWithImpl<$Res>
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
    return 'SavingsListEvent.watchAll()';
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
        Result loadCompleted(
            Either<SavingsFailure, KtList<Savings>> failureOrsavings),
  }) {
    assert(watchAll != null);
    assert(loadCompleted != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result loadCompleted(
        Either<SavingsFailure, KtList<Savings>> failureOrsavings),
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
    @required Result loadCompleted(_LoadCompleted value),
  }) {
    assert(watchAll != null);
    assert(loadCompleted != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result loadCompleted(_LoadCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements SavingsListEvent {
  const factory _WatchAll() = _$_WatchAll;
}

/// @nodoc
abstract class _$LoadCompletedCopyWith<$Res> {
  factory _$LoadCompletedCopyWith(
          _LoadCompleted value, $Res Function(_LoadCompleted) then) =
      __$LoadCompletedCopyWithImpl<$Res>;
  $Res call({Either<SavingsFailure, KtList<Savings>> failureOrsavings});
}

/// @nodoc
class __$LoadCompletedCopyWithImpl<$Res>
    extends _$SavingsListEventCopyWithImpl<$Res>
    implements _$LoadCompletedCopyWith<$Res> {
  __$LoadCompletedCopyWithImpl(
      _LoadCompleted _value, $Res Function(_LoadCompleted) _then)
      : super(_value, (v) => _then(v as _LoadCompleted));

  @override
  _LoadCompleted get _value => super._value as _LoadCompleted;

  @override
  $Res call({
    Object failureOrsavings = freezed,
  }) {
    return _then(_LoadCompleted(
      failureOrsavings: failureOrsavings == freezed
          ? _value.failureOrsavings
          : failureOrsavings as Either<SavingsFailure, KtList<Savings>>,
    ));
  }
}

/// @nodoc
class _$_LoadCompleted implements _LoadCompleted {
  const _$_LoadCompleted({@required this.failureOrsavings})
      : assert(failureOrsavings != null);

  @override
  final Either<SavingsFailure, KtList<Savings>> failureOrsavings;

  @override
  String toString() {
    return 'SavingsListEvent.loadCompleted(failureOrsavings: $failureOrsavings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadCompleted &&
            (identical(other.failureOrsavings, failureOrsavings) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrsavings, failureOrsavings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrsavings);

  @override
  _$LoadCompletedCopyWith<_LoadCompleted> get copyWith =>
      __$LoadCompletedCopyWithImpl<_LoadCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required
        Result loadCompleted(
            Either<SavingsFailure, KtList<Savings>> failureOrsavings),
  }) {
    assert(watchAll != null);
    assert(loadCompleted != null);
    return loadCompleted(failureOrsavings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result loadCompleted(
        Either<SavingsFailure, KtList<Savings>> failureOrsavings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCompleted != null) {
      return loadCompleted(failureOrsavings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result loadCompleted(_LoadCompleted value),
  }) {
    assert(watchAll != null);
    assert(loadCompleted != null);
    return loadCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result loadCompleted(_LoadCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCompleted != null) {
      return loadCompleted(this);
    }
    return orElse();
  }
}

abstract class _LoadCompleted implements SavingsListEvent {
  const factory _LoadCompleted(
          {@required
              Either<SavingsFailure, KtList<Savings>> failureOrsavings}) =
      _$_LoadCompleted;

  Either<SavingsFailure, KtList<Savings>> get failureOrsavings;
  _$LoadCompletedCopyWith<_LoadCompleted> get copyWith;
}

/// @nodoc
class _$SavingsListStateTearOff {
  const _$SavingsListStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _LoadFailure loadFailure({@required SavingsFailure failure}) {
    return _LoadFailure(
      failure: failure,
    );
  }

// ignore: unused_element
  _ListLoaded loadComplete({@required KtList<Savings> savings}) {
    return _ListLoaded(
      savings: savings,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SavingsListState = _$SavingsListStateTearOff();

/// @nodoc
mixin _$SavingsListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadFailure(SavingsFailure failure),
    @required Result loadComplete(KtList<Savings> savings),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(SavingsFailure failure),
    Result loadComplete(KtList<Savings> savings),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadFailure(_LoadFailure value),
    @required Result loadComplete(_ListLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadFailure(_LoadFailure value),
    Result loadComplete(_ListLoaded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SavingsListStateCopyWith<$Res> {
  factory $SavingsListStateCopyWith(
          SavingsListState value, $Res Function(SavingsListState) then) =
      _$SavingsListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavingsListStateCopyWithImpl<$Res>
    implements $SavingsListStateCopyWith<$Res> {
  _$SavingsListStateCopyWithImpl(this._value, this._then);

  final SavingsListState _value;
  // ignore: unused_field
  final $Res Function(SavingsListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SavingsListStateCopyWithImpl<$Res>
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
    return 'SavingsListState.initial()';
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
    @required Result loadFailure(SavingsFailure failure),
    @required Result loadComplete(KtList<Savings> savings),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadComplete != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(SavingsFailure failure),
    Result loadComplete(KtList<Savings> savings),
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
    @required Result loadFailure(_LoadFailure value),
    @required Result loadComplete(_ListLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadComplete != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadFailure(_LoadFailure value),
    Result loadComplete(_ListLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SavingsListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SavingsListStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SavingsListState.loading()';
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
    @required Result loadFailure(SavingsFailure failure),
    @required Result loadComplete(KtList<Savings> savings),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadComplete != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(SavingsFailure failure),
    Result loadComplete(KtList<Savings> savings),
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
    @required Result loadFailure(_LoadFailure value),
    @required Result loadComplete(_ListLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadComplete != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadFailure(_LoadFailure value),
    Result loadComplete(_ListLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SavingsListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({SavingsFailure failure});

  $SavingsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$SavingsListStateCopyWithImpl<$Res>
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
      failure: failure == freezed ? _value.failure : failure as SavingsFailure,
    ));
  }

  @override
  $SavingsFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $SavingsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure({@required this.failure}) : assert(failure != null);

  @override
  final SavingsFailure failure;

  @override
  String toString() {
    return 'SavingsListState.loadFailure(failure: $failure)';
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
    @required Result loading(),
    @required Result loadFailure(SavingsFailure failure),
    @required Result loadComplete(KtList<Savings> savings),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadComplete != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(SavingsFailure failure),
    Result loadComplete(KtList<Savings> savings),
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
    @required Result loading(_Loading value),
    @required Result loadFailure(_LoadFailure value),
    @required Result loadComplete(_ListLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadComplete != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadFailure(_LoadFailure value),
    Result loadComplete(_ListLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements SavingsListState {
  const factory _LoadFailure({@required SavingsFailure failure}) =
      _$_LoadFailure;

  SavingsFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}

/// @nodoc
abstract class _$ListLoadedCopyWith<$Res> {
  factory _$ListLoadedCopyWith(
          _ListLoaded value, $Res Function(_ListLoaded) then) =
      __$ListLoadedCopyWithImpl<$Res>;
  $Res call({KtList<Savings> savings});
}

/// @nodoc
class __$ListLoadedCopyWithImpl<$Res>
    extends _$SavingsListStateCopyWithImpl<$Res>
    implements _$ListLoadedCopyWith<$Res> {
  __$ListLoadedCopyWithImpl(
      _ListLoaded _value, $Res Function(_ListLoaded) _then)
      : super(_value, (v) => _then(v as _ListLoaded));

  @override
  _ListLoaded get _value => super._value as _ListLoaded;

  @override
  $Res call({
    Object savings = freezed,
  }) {
    return _then(_ListLoaded(
      savings: savings == freezed ? _value.savings : savings as KtList<Savings>,
    ));
  }
}

/// @nodoc
class _$_ListLoaded implements _ListLoaded {
  const _$_ListLoaded({@required this.savings}) : assert(savings != null);

  @override
  final KtList<Savings> savings;

  @override
  String toString() {
    return 'SavingsListState.loadComplete(savings: $savings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListLoaded &&
            (identical(other.savings, savings) ||
                const DeepCollectionEquality().equals(other.savings, savings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(savings);

  @override
  _$ListLoadedCopyWith<_ListLoaded> get copyWith =>
      __$ListLoadedCopyWithImpl<_ListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadFailure(SavingsFailure failure),
    @required Result loadComplete(KtList<Savings> savings),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadComplete != null);
    return loadComplete(savings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(SavingsFailure failure),
    Result loadComplete(KtList<Savings> savings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadComplete != null) {
      return loadComplete(savings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadFailure(_LoadFailure value),
    @required Result loadComplete(_ListLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadComplete != null);
    return loadComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadFailure(_LoadFailure value),
    Result loadComplete(_ListLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadComplete != null) {
      return loadComplete(this);
    }
    return orElse();
  }
}

abstract class _ListLoaded implements SavingsListState {
  const factory _ListLoaded({@required KtList<Savings> savings}) =
      _$_ListLoaded;

  KtList<Savings> get savings;
  _$ListLoadedCopyWith<_ListLoaded> get copyWith;
}
