// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'budgetlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BudgetListEventTearOff {
  const _$BudgetListEventTearOff();

// ignore: unused_element
  _WatchAll watchAll() {
    return const _WatchAll();
  }

// ignore: unused_element
  _InitList watchPersonal() {
    return const _InitList();
  }

// ignore: unused_element
  _InitSentList watchSent() {
    return const _InitSentList();
  }

// ignore: unused_element
  _InitReceiverList watchReceived() {
    return const _InitReceiverList();
  }

// ignore: unused_element
  _ListCompleted listCompleted(
      {@required Either<BudgetFailure, KtList<Budget>> failureOrbudgets}) {
    return _ListCompleted(
      failureOrbudgets: failureOrbudgets,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BudgetListEvent = _$BudgetListEventTearOff();

/// @nodoc
mixin _$BudgetListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required Result watchPersonal(),
    @required Result watchSent(),
    @required Result watchReceived(),
    @required
        Result listCompleted(
            Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result watchPersonal(),
    Result watchSent(),
    Result watchReceived(),
    Result listCompleted(
        Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result watchPersonal(_InitList value),
    @required Result watchSent(_InitSentList value),
    @required Result watchReceived(_InitReceiverList value),
    @required Result listCompleted(_ListCompleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result watchPersonal(_InitList value),
    Result watchSent(_InitSentList value),
    Result watchReceived(_InitReceiverList value),
    Result listCompleted(_ListCompleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $BudgetListEventCopyWith<$Res> {
  factory $BudgetListEventCopyWith(
          BudgetListEvent value, $Res Function(BudgetListEvent) then) =
      _$BudgetListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BudgetListEventCopyWithImpl<$Res>
    implements $BudgetListEventCopyWith<$Res> {
  _$BudgetListEventCopyWithImpl(this._value, this._then);

  final BudgetListEvent _value;
  // ignore: unused_field
  final $Res Function(BudgetListEvent) _then;
}

/// @nodoc
abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllCopyWithImpl<$Res> extends _$BudgetListEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;
}

/// @nodoc
class _$_WatchAll with DiagnosticableTreeMixin implements _WatchAll {
  const _$_WatchAll();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetListEvent.watchAll()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BudgetListEvent.watchAll'));
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
    @required Result watchPersonal(),
    @required Result watchSent(),
    @required Result watchReceived(),
    @required
        Result listCompleted(
            Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
  }) {
    assert(watchAll != null);
    assert(watchPersonal != null);
    assert(watchSent != null);
    assert(watchReceived != null);
    assert(listCompleted != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result watchPersonal(),
    Result watchSent(),
    Result watchReceived(),
    Result listCompleted(
        Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
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
    @required Result watchPersonal(_InitList value),
    @required Result watchSent(_InitSentList value),
    @required Result watchReceived(_InitReceiverList value),
    @required Result listCompleted(_ListCompleted value),
  }) {
    assert(watchAll != null);
    assert(watchPersonal != null);
    assert(watchSent != null);
    assert(watchReceived != null);
    assert(listCompleted != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result watchPersonal(_InitList value),
    Result watchSent(_InitSentList value),
    Result watchReceived(_InitReceiverList value),
    Result listCompleted(_ListCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements BudgetListEvent {
  const factory _WatchAll() = _$_WatchAll;
}

/// @nodoc
abstract class _$InitListCopyWith<$Res> {
  factory _$InitListCopyWith(_InitList value, $Res Function(_InitList) then) =
      __$InitListCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitListCopyWithImpl<$Res> extends _$BudgetListEventCopyWithImpl<$Res>
    implements _$InitListCopyWith<$Res> {
  __$InitListCopyWithImpl(_InitList _value, $Res Function(_InitList) _then)
      : super(_value, (v) => _then(v as _InitList));

  @override
  _InitList get _value => super._value as _InitList;
}

/// @nodoc
class _$_InitList with DiagnosticableTreeMixin implements _InitList {
  const _$_InitList();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetListEvent.watchPersonal()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BudgetListEvent.watchPersonal'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required Result watchPersonal(),
    @required Result watchSent(),
    @required Result watchReceived(),
    @required
        Result listCompleted(
            Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
  }) {
    assert(watchAll != null);
    assert(watchPersonal != null);
    assert(watchSent != null);
    assert(watchReceived != null);
    assert(listCompleted != null);
    return watchPersonal();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result watchPersonal(),
    Result watchSent(),
    Result watchReceived(),
    Result listCompleted(
        Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchPersonal != null) {
      return watchPersonal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result watchPersonal(_InitList value),
    @required Result watchSent(_InitSentList value),
    @required Result watchReceived(_InitReceiverList value),
    @required Result listCompleted(_ListCompleted value),
  }) {
    assert(watchAll != null);
    assert(watchPersonal != null);
    assert(watchSent != null);
    assert(watchReceived != null);
    assert(listCompleted != null);
    return watchPersonal(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result watchPersonal(_InitList value),
    Result watchSent(_InitSentList value),
    Result watchReceived(_InitReceiverList value),
    Result listCompleted(_ListCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchPersonal != null) {
      return watchPersonal(this);
    }
    return orElse();
  }
}

abstract class _InitList implements BudgetListEvent {
  const factory _InitList() = _$_InitList;
}

/// @nodoc
abstract class _$InitSentListCopyWith<$Res> {
  factory _$InitSentListCopyWith(
          _InitSentList value, $Res Function(_InitSentList) then) =
      __$InitSentListCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitSentListCopyWithImpl<$Res>
    extends _$BudgetListEventCopyWithImpl<$Res>
    implements _$InitSentListCopyWith<$Res> {
  __$InitSentListCopyWithImpl(
      _InitSentList _value, $Res Function(_InitSentList) _then)
      : super(_value, (v) => _then(v as _InitSentList));

  @override
  _InitSentList get _value => super._value as _InitSentList;
}

/// @nodoc
class _$_InitSentList with DiagnosticableTreeMixin implements _InitSentList {
  const _$_InitSentList();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetListEvent.watchSent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BudgetListEvent.watchSent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitSentList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required Result watchPersonal(),
    @required Result watchSent(),
    @required Result watchReceived(),
    @required
        Result listCompleted(
            Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
  }) {
    assert(watchAll != null);
    assert(watchPersonal != null);
    assert(watchSent != null);
    assert(watchReceived != null);
    assert(listCompleted != null);
    return watchSent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result watchPersonal(),
    Result watchSent(),
    Result watchReceived(),
    Result listCompleted(
        Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSent != null) {
      return watchSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result watchPersonal(_InitList value),
    @required Result watchSent(_InitSentList value),
    @required Result watchReceived(_InitReceiverList value),
    @required Result listCompleted(_ListCompleted value),
  }) {
    assert(watchAll != null);
    assert(watchPersonal != null);
    assert(watchSent != null);
    assert(watchReceived != null);
    assert(listCompleted != null);
    return watchSent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result watchPersonal(_InitList value),
    Result watchSent(_InitSentList value),
    Result watchReceived(_InitReceiverList value),
    Result listCompleted(_ListCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSent != null) {
      return watchSent(this);
    }
    return orElse();
  }
}

abstract class _InitSentList implements BudgetListEvent {
  const factory _InitSentList() = _$_InitSentList;
}

/// @nodoc
abstract class _$InitReceiverListCopyWith<$Res> {
  factory _$InitReceiverListCopyWith(
          _InitReceiverList value, $Res Function(_InitReceiverList) then) =
      __$InitReceiverListCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitReceiverListCopyWithImpl<$Res>
    extends _$BudgetListEventCopyWithImpl<$Res>
    implements _$InitReceiverListCopyWith<$Res> {
  __$InitReceiverListCopyWithImpl(
      _InitReceiverList _value, $Res Function(_InitReceiverList) _then)
      : super(_value, (v) => _then(v as _InitReceiverList));

  @override
  _InitReceiverList get _value => super._value as _InitReceiverList;
}

/// @nodoc
class _$_InitReceiverList
    with DiagnosticableTreeMixin
    implements _InitReceiverList {
  const _$_InitReceiverList();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetListEvent.watchReceived()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BudgetListEvent.watchReceived'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitReceiverList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required Result watchPersonal(),
    @required Result watchSent(),
    @required Result watchReceived(),
    @required
        Result listCompleted(
            Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
  }) {
    assert(watchAll != null);
    assert(watchPersonal != null);
    assert(watchSent != null);
    assert(watchReceived != null);
    assert(listCompleted != null);
    return watchReceived();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result watchPersonal(),
    Result watchSent(),
    Result watchReceived(),
    Result listCompleted(
        Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchReceived != null) {
      return watchReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result watchPersonal(_InitList value),
    @required Result watchSent(_InitSentList value),
    @required Result watchReceived(_InitReceiverList value),
    @required Result listCompleted(_ListCompleted value),
  }) {
    assert(watchAll != null);
    assert(watchPersonal != null);
    assert(watchSent != null);
    assert(watchReceived != null);
    assert(listCompleted != null);
    return watchReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result watchPersonal(_InitList value),
    Result watchSent(_InitSentList value),
    Result watchReceived(_InitReceiverList value),
    Result listCompleted(_ListCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchReceived != null) {
      return watchReceived(this);
    }
    return orElse();
  }
}

abstract class _InitReceiverList implements BudgetListEvent {
  const factory _InitReceiverList() = _$_InitReceiverList;
}

/// @nodoc
abstract class _$ListCompletedCopyWith<$Res> {
  factory _$ListCompletedCopyWith(
          _ListCompleted value, $Res Function(_ListCompleted) then) =
      __$ListCompletedCopyWithImpl<$Res>;
  $Res call({Either<BudgetFailure, KtList<Budget>> failureOrbudgets});
}

/// @nodoc
class __$ListCompletedCopyWithImpl<$Res>
    extends _$BudgetListEventCopyWithImpl<$Res>
    implements _$ListCompletedCopyWith<$Res> {
  __$ListCompletedCopyWithImpl(
      _ListCompleted _value, $Res Function(_ListCompleted) _then)
      : super(_value, (v) => _then(v as _ListCompleted));

  @override
  _ListCompleted get _value => super._value as _ListCompleted;

  @override
  $Res call({
    Object failureOrbudgets = freezed,
  }) {
    return _then(_ListCompleted(
      failureOrbudgets: failureOrbudgets == freezed
          ? _value.failureOrbudgets
          : failureOrbudgets as Either<BudgetFailure, KtList<Budget>>,
    ));
  }
}

/// @nodoc
class _$_ListCompleted with DiagnosticableTreeMixin implements _ListCompleted {
  const _$_ListCompleted({@required this.failureOrbudgets})
      : assert(failureOrbudgets != null);

  @override
  final Either<BudgetFailure, KtList<Budget>> failureOrbudgets;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetListEvent.listCompleted(failureOrbudgets: $failureOrbudgets)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BudgetListEvent.listCompleted'))
      ..add(DiagnosticsProperty('failureOrbudgets', failureOrbudgets));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListCompleted &&
            (identical(other.failureOrbudgets, failureOrbudgets) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrbudgets, failureOrbudgets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrbudgets);

  @override
  _$ListCompletedCopyWith<_ListCompleted> get copyWith =>
      __$ListCompletedCopyWithImpl<_ListCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required Result watchPersonal(),
    @required Result watchSent(),
    @required Result watchReceived(),
    @required
        Result listCompleted(
            Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
  }) {
    assert(watchAll != null);
    assert(watchPersonal != null);
    assert(watchSent != null);
    assert(watchReceived != null);
    assert(listCompleted != null);
    return listCompleted(failureOrbudgets);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result watchPersonal(),
    Result watchSent(),
    Result watchReceived(),
    Result listCompleted(
        Either<BudgetFailure, KtList<Budget>> failureOrbudgets),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listCompleted != null) {
      return listCompleted(failureOrbudgets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result watchPersonal(_InitList value),
    @required Result watchSent(_InitSentList value),
    @required Result watchReceived(_InitReceiverList value),
    @required Result listCompleted(_ListCompleted value),
  }) {
    assert(watchAll != null);
    assert(watchPersonal != null);
    assert(watchSent != null);
    assert(watchReceived != null);
    assert(listCompleted != null);
    return listCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result watchPersonal(_InitList value),
    Result watchSent(_InitSentList value),
    Result watchReceived(_InitReceiverList value),
    Result listCompleted(_ListCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listCompleted != null) {
      return listCompleted(this);
    }
    return orElse();
  }
}

abstract class _ListCompleted implements BudgetListEvent {
  const factory _ListCompleted(
          {@required Either<BudgetFailure, KtList<Budget>> failureOrbudgets}) =
      _$_ListCompleted;

  Either<BudgetFailure, KtList<Budget>> get failureOrbudgets;
  _$ListCompletedCopyWith<_ListCompleted> get copyWith;
}

/// @nodoc
class _$BudgetListStateTearOff {
  const _$BudgetListStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _ListLoaded listLoaded({@required KtList<Budget> budgets}) {
    return _ListLoaded(
      budgets: budgets,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure({@required BudgetFailure failure}) {
    return _LoadFailure(
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BudgetListState = _$BudgetListStateTearOff();

/// @nodoc
mixin _$BudgetListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result listLoaded(KtList<Budget> budgets),
    @required Result loadFailure(BudgetFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result listLoaded(KtList<Budget> budgets),
    Result loadFailure(BudgetFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result listLoaded(_ListLoaded value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result listLoaded(_ListLoaded value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $BudgetListStateCopyWith<$Res> {
  factory $BudgetListStateCopyWith(
          BudgetListState value, $Res Function(BudgetListState) then) =
      _$BudgetListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BudgetListStateCopyWithImpl<$Res>
    implements $BudgetListStateCopyWith<$Res> {
  _$BudgetListStateCopyWithImpl(this._value, this._then);

  final BudgetListState _value;
  // ignore: unused_field
  final $Res Function(BudgetListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BudgetListStateCopyWithImpl<$Res>
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
    return 'BudgetListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BudgetListState.initial'));
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
    @required Result listLoaded(KtList<Budget> budgets),
    @required Result loadFailure(BudgetFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(listLoaded != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result listLoaded(KtList<Budget> budgets),
    Result loadFailure(BudgetFailure failure),
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
    @required Result listLoaded(_ListLoaded value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(listLoaded != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result listLoaded(_ListLoaded value),
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

abstract class _Initial implements BudgetListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$BudgetListStateCopyWithImpl<$Res>
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
    return 'BudgetListState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BudgetListState.loading'));
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
    @required Result listLoaded(KtList<Budget> budgets),
    @required Result loadFailure(BudgetFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(listLoaded != null);
    assert(loadFailure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result listLoaded(KtList<Budget> budgets),
    Result loadFailure(BudgetFailure failure),
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
    @required Result listLoaded(_ListLoaded value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(listLoaded != null);
    assert(loadFailure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result listLoaded(_ListLoaded value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BudgetListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ListLoadedCopyWith<$Res> {
  factory _$ListLoadedCopyWith(
          _ListLoaded value, $Res Function(_ListLoaded) then) =
      __$ListLoadedCopyWithImpl<$Res>;
  $Res call({KtList<Budget> budgets});
}

/// @nodoc
class __$ListLoadedCopyWithImpl<$Res>
    extends _$BudgetListStateCopyWithImpl<$Res>
    implements _$ListLoadedCopyWith<$Res> {
  __$ListLoadedCopyWithImpl(
      _ListLoaded _value, $Res Function(_ListLoaded) _then)
      : super(_value, (v) => _then(v as _ListLoaded));

  @override
  _ListLoaded get _value => super._value as _ListLoaded;

  @override
  $Res call({
    Object budgets = freezed,
  }) {
    return _then(_ListLoaded(
      budgets: budgets == freezed ? _value.budgets : budgets as KtList<Budget>,
    ));
  }
}

/// @nodoc
class _$_ListLoaded with DiagnosticableTreeMixin implements _ListLoaded {
  const _$_ListLoaded({@required this.budgets}) : assert(budgets != null);

  @override
  final KtList<Budget> budgets;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetListState.listLoaded(budgets: $budgets)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BudgetListState.listLoaded'))
      ..add(DiagnosticsProperty('budgets', budgets));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListLoaded &&
            (identical(other.budgets, budgets) ||
                const DeepCollectionEquality().equals(other.budgets, budgets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(budgets);

  @override
  _$ListLoadedCopyWith<_ListLoaded> get copyWith =>
      __$ListLoadedCopyWithImpl<_ListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result listLoaded(KtList<Budget> budgets),
    @required Result loadFailure(BudgetFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(listLoaded != null);
    assert(loadFailure != null);
    return listLoaded(budgets);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result listLoaded(KtList<Budget> budgets),
    Result loadFailure(BudgetFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listLoaded != null) {
      return listLoaded(budgets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result listLoaded(_ListLoaded value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(listLoaded != null);
    assert(loadFailure != null);
    return listLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result listLoaded(_ListLoaded value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listLoaded != null) {
      return listLoaded(this);
    }
    return orElse();
  }
}

abstract class _ListLoaded implements BudgetListState {
  const factory _ListLoaded({@required KtList<Budget> budgets}) = _$_ListLoaded;

  KtList<Budget> get budgets;
  _$ListLoadedCopyWith<_ListLoaded> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({BudgetFailure failure});

  $BudgetFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$BudgetListStateCopyWithImpl<$Res>
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
      failure: failure == freezed ? _value.failure : failure as BudgetFailure,
    ));
  }

  @override
  $BudgetFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $BudgetFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure with DiagnosticableTreeMixin implements _LoadFailure {
  const _$_LoadFailure({@required this.failure}) : assert(failure != null);

  @override
  final BudgetFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetListState.loadFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BudgetListState.loadFailure'))
      ..add(DiagnosticsProperty('failure', failure));
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
    @required Result listLoaded(KtList<Budget> budgets),
    @required Result loadFailure(BudgetFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(listLoaded != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result listLoaded(KtList<Budget> budgets),
    Result loadFailure(BudgetFailure failure),
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
    @required Result listLoaded(_ListLoaded value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(listLoaded != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result listLoaded(_ListLoaded value),
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

abstract class _LoadFailure implements BudgetListState {
  const factory _LoadFailure({@required BudgetFailure failure}) =
      _$_LoadFailure;

  BudgetFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
