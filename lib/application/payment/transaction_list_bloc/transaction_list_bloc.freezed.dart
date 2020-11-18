// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionListEventTearOff {
  const _$TransactionListEventTearOff();

// ignore: unused_element
  _WatchReceived watchReceived() {
    return const _WatchReceived();
  }

// ignore: unused_element
  _WatchSent watchSent() {
    return const _WatchSent();
  }

// ignore: unused_element
  _WatchAll watchAll() {
    return const _WatchAll();
  }

// ignore: unused_element
  _LoadCompleteE loadCompleted(
      {@required Either<PaymentFailure, KtList<Payment>> failureOrpayments}) {
    return _LoadCompleteE(
      failureOrpayments: failureOrpayments,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionListEvent = _$TransactionListEventTearOff();

/// @nodoc
mixin _$TransactionListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchReceived(),
    @required Result watchSent(),
    @required Result watchAll(),
    @required
        Result loadCompleted(
            Either<PaymentFailure, KtList<Payment>> failureOrpayments),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchReceived(),
    Result watchSent(),
    Result watchAll(),
    Result loadCompleted(
        Either<PaymentFailure, KtList<Payment>> failureOrpayments),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchReceived(_WatchReceived value),
    @required Result watchSent(_WatchSent value),
    @required Result watchAll(_WatchAll value),
    @required Result loadCompleted(_LoadCompleteE value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchReceived(_WatchReceived value),
    Result watchSent(_WatchSent value),
    Result watchAll(_WatchAll value),
    Result loadCompleted(_LoadCompleteE value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TransactionListEventCopyWith<$Res> {
  factory $TransactionListEventCopyWith(TransactionListEvent value,
          $Res Function(TransactionListEvent) then) =
      _$TransactionListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionListEventCopyWithImpl<$Res>
    implements $TransactionListEventCopyWith<$Res> {
  _$TransactionListEventCopyWithImpl(this._value, this._then);

  final TransactionListEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionListEvent) _then;
}

/// @nodoc
abstract class _$WatchReceivedCopyWith<$Res> {
  factory _$WatchReceivedCopyWith(
          _WatchReceived value, $Res Function(_WatchReceived) then) =
      __$WatchReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchReceivedCopyWithImpl<$Res>
    extends _$TransactionListEventCopyWithImpl<$Res>
    implements _$WatchReceivedCopyWith<$Res> {
  __$WatchReceivedCopyWithImpl(
      _WatchReceived _value, $Res Function(_WatchReceived) _then)
      : super(_value, (v) => _then(v as _WatchReceived));

  @override
  _WatchReceived get _value => super._value as _WatchReceived;
}

/// @nodoc
class _$_WatchReceived with DiagnosticableTreeMixin implements _WatchReceived {
  const _$_WatchReceived();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionListEvent.watchReceived()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionListEvent.watchReceived'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchReceived(),
    @required Result watchSent(),
    @required Result watchAll(),
    @required
        Result loadCompleted(
            Either<PaymentFailure, KtList<Payment>> failureOrpayments),
  }) {
    assert(watchReceived != null);
    assert(watchSent != null);
    assert(watchAll != null);
    assert(loadCompleted != null);
    return watchReceived();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchReceived(),
    Result watchSent(),
    Result watchAll(),
    Result loadCompleted(
        Either<PaymentFailure, KtList<Payment>> failureOrpayments),
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
    @required Result watchReceived(_WatchReceived value),
    @required Result watchSent(_WatchSent value),
    @required Result watchAll(_WatchAll value),
    @required Result loadCompleted(_LoadCompleteE value),
  }) {
    assert(watchReceived != null);
    assert(watchSent != null);
    assert(watchAll != null);
    assert(loadCompleted != null);
    return watchReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchReceived(_WatchReceived value),
    Result watchSent(_WatchSent value),
    Result watchAll(_WatchAll value),
    Result loadCompleted(_LoadCompleteE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchReceived != null) {
      return watchReceived(this);
    }
    return orElse();
  }
}

abstract class _WatchReceived implements TransactionListEvent {
  const factory _WatchReceived() = _$_WatchReceived;
}

/// @nodoc
abstract class _$WatchSentCopyWith<$Res> {
  factory _$WatchSentCopyWith(
          _WatchSent value, $Res Function(_WatchSent) then) =
      __$WatchSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchSentCopyWithImpl<$Res>
    extends _$TransactionListEventCopyWithImpl<$Res>
    implements _$WatchSentCopyWith<$Res> {
  __$WatchSentCopyWithImpl(_WatchSent _value, $Res Function(_WatchSent) _then)
      : super(_value, (v) => _then(v as _WatchSent));

  @override
  _WatchSent get _value => super._value as _WatchSent;
}

/// @nodoc
class _$_WatchSent with DiagnosticableTreeMixin implements _WatchSent {
  const _$_WatchSent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionListEvent.watchSent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionListEvent.watchSent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchReceived(),
    @required Result watchSent(),
    @required Result watchAll(),
    @required
        Result loadCompleted(
            Either<PaymentFailure, KtList<Payment>> failureOrpayments),
  }) {
    assert(watchReceived != null);
    assert(watchSent != null);
    assert(watchAll != null);
    assert(loadCompleted != null);
    return watchSent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchReceived(),
    Result watchSent(),
    Result watchAll(),
    Result loadCompleted(
        Either<PaymentFailure, KtList<Payment>> failureOrpayments),
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
    @required Result watchReceived(_WatchReceived value),
    @required Result watchSent(_WatchSent value),
    @required Result watchAll(_WatchAll value),
    @required Result loadCompleted(_LoadCompleteE value),
  }) {
    assert(watchReceived != null);
    assert(watchSent != null);
    assert(watchAll != null);
    assert(loadCompleted != null);
    return watchSent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchReceived(_WatchReceived value),
    Result watchSent(_WatchSent value),
    Result watchAll(_WatchAll value),
    Result loadCompleted(_LoadCompleteE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSent != null) {
      return watchSent(this);
    }
    return orElse();
  }
}

abstract class _WatchSent implements TransactionListEvent {
  const factory _WatchSent() = _$_WatchSent;
}

/// @nodoc
abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllCopyWithImpl<$Res>
    extends _$TransactionListEventCopyWithImpl<$Res>
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
    return 'TransactionListEvent.watchAll()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionListEvent.watchAll'));
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
    @required Result watchReceived(),
    @required Result watchSent(),
    @required Result watchAll(),
    @required
        Result loadCompleted(
            Either<PaymentFailure, KtList<Payment>> failureOrpayments),
  }) {
    assert(watchReceived != null);
    assert(watchSent != null);
    assert(watchAll != null);
    assert(loadCompleted != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchReceived(),
    Result watchSent(),
    Result watchAll(),
    Result loadCompleted(
        Either<PaymentFailure, KtList<Payment>> failureOrpayments),
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
    @required Result watchReceived(_WatchReceived value),
    @required Result watchSent(_WatchSent value),
    @required Result watchAll(_WatchAll value),
    @required Result loadCompleted(_LoadCompleteE value),
  }) {
    assert(watchReceived != null);
    assert(watchSent != null);
    assert(watchAll != null);
    assert(loadCompleted != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchReceived(_WatchReceived value),
    Result watchSent(_WatchSent value),
    Result watchAll(_WatchAll value),
    Result loadCompleted(_LoadCompleteE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements TransactionListEvent {
  const factory _WatchAll() = _$_WatchAll;
}

/// @nodoc
abstract class _$LoadCompleteECopyWith<$Res> {
  factory _$LoadCompleteECopyWith(
          _LoadCompleteE value, $Res Function(_LoadCompleteE) then) =
      __$LoadCompleteECopyWithImpl<$Res>;
  $Res call({Either<PaymentFailure, KtList<Payment>> failureOrpayments});
}

/// @nodoc
class __$LoadCompleteECopyWithImpl<$Res>
    extends _$TransactionListEventCopyWithImpl<$Res>
    implements _$LoadCompleteECopyWith<$Res> {
  __$LoadCompleteECopyWithImpl(
      _LoadCompleteE _value, $Res Function(_LoadCompleteE) _then)
      : super(_value, (v) => _then(v as _LoadCompleteE));

  @override
  _LoadCompleteE get _value => super._value as _LoadCompleteE;

  @override
  $Res call({
    Object failureOrpayments = freezed,
  }) {
    return _then(_LoadCompleteE(
      failureOrpayments: failureOrpayments == freezed
          ? _value.failureOrpayments
          : failureOrpayments as Either<PaymentFailure, KtList<Payment>>,
    ));
  }
}

/// @nodoc
class _$_LoadCompleteE with DiagnosticableTreeMixin implements _LoadCompleteE {
  const _$_LoadCompleteE({@required this.failureOrpayments})
      : assert(failureOrpayments != null);

  @override
  final Either<PaymentFailure, KtList<Payment>> failureOrpayments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionListEvent.loadCompleted(failureOrpayments: $failureOrpayments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionListEvent.loadCompleted'))
      ..add(DiagnosticsProperty('failureOrpayments', failureOrpayments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadCompleteE &&
            (identical(other.failureOrpayments, failureOrpayments) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrpayments, failureOrpayments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrpayments);

  @override
  _$LoadCompleteECopyWith<_LoadCompleteE> get copyWith =>
      __$LoadCompleteECopyWithImpl<_LoadCompleteE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchReceived(),
    @required Result watchSent(),
    @required Result watchAll(),
    @required
        Result loadCompleted(
            Either<PaymentFailure, KtList<Payment>> failureOrpayments),
  }) {
    assert(watchReceived != null);
    assert(watchSent != null);
    assert(watchAll != null);
    assert(loadCompleted != null);
    return loadCompleted(failureOrpayments);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchReceived(),
    Result watchSent(),
    Result watchAll(),
    Result loadCompleted(
        Either<PaymentFailure, KtList<Payment>> failureOrpayments),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCompleted != null) {
      return loadCompleted(failureOrpayments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchReceived(_WatchReceived value),
    @required Result watchSent(_WatchSent value),
    @required Result watchAll(_WatchAll value),
    @required Result loadCompleted(_LoadCompleteE value),
  }) {
    assert(watchReceived != null);
    assert(watchSent != null);
    assert(watchAll != null);
    assert(loadCompleted != null);
    return loadCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchReceived(_WatchReceived value),
    Result watchSent(_WatchSent value),
    Result watchAll(_WatchAll value),
    Result loadCompleted(_LoadCompleteE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCompleted != null) {
      return loadCompleted(this);
    }
    return orElse();
  }
}

abstract class _LoadCompleteE implements TransactionListEvent {
  const factory _LoadCompleteE(
          {@required
              Either<PaymentFailure, KtList<Payment>> failureOrpayments}) =
      _$_LoadCompleteE;

  Either<PaymentFailure, KtList<Payment>> get failureOrpayments;
  _$LoadCompleteECopyWith<_LoadCompleteE> get copyWith;
}

/// @nodoc
class _$TransactionListStateTearOff {
  const _$TransactionListStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _LoadFailureS loadFailure({@required PaymentFailure failure}) {
    return _LoadFailureS(
      failure: failure,
    );
  }

// ignore: unused_element
  _PaymentLoaded loadComplete({@required KtList<Payment> payments}) {
    return _PaymentLoaded(
      payments: payments,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionListState = _$TransactionListStateTearOff();

/// @nodoc
mixin _$TransactionListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadFailure(PaymentFailure failure),
    @required Result loadComplete(KtList<Payment> payments),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(PaymentFailure failure),
    Result loadComplete(KtList<Payment> payments),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadFailure(_LoadFailureS value),
    @required Result loadComplete(_PaymentLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadFailure(_LoadFailureS value),
    Result loadComplete(_PaymentLoaded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TransactionListStateCopyWith<$Res> {
  factory $TransactionListStateCopyWith(TransactionListState value,
          $Res Function(TransactionListState) then) =
      _$TransactionListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionListStateCopyWithImpl<$Res>
    implements $TransactionListStateCopyWith<$Res> {
  _$TransactionListStateCopyWithImpl(this._value, this._then);

  final TransactionListState _value;
  // ignore: unused_field
  final $Res Function(TransactionListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$TransactionListStateCopyWithImpl<$Res>
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
    return 'TransactionListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionListState.initial'));
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
    @required Result loadFailure(PaymentFailure failure),
    @required Result loadComplete(KtList<Payment> payments),
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
    Result loadFailure(PaymentFailure failure),
    Result loadComplete(KtList<Payment> payments),
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
    @required Result loadFailure(_LoadFailureS value),
    @required Result loadComplete(_PaymentLoaded value),
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
    Result loadFailure(_LoadFailureS value),
    Result loadComplete(_PaymentLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransactionListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$TransactionListStateCopyWithImpl<$Res>
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
    return 'TransactionListState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionListState.loading'));
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
    @required Result loadFailure(PaymentFailure failure),
    @required Result loadComplete(KtList<Payment> payments),
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
    Result loadFailure(PaymentFailure failure),
    Result loadComplete(KtList<Payment> payments),
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
    @required Result loadFailure(_LoadFailureS value),
    @required Result loadComplete(_PaymentLoaded value),
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
    Result loadFailure(_LoadFailureS value),
    Result loadComplete(_PaymentLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TransactionListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadFailureSCopyWith<$Res> {
  factory _$LoadFailureSCopyWith(
          _LoadFailureS value, $Res Function(_LoadFailureS) then) =
      __$LoadFailureSCopyWithImpl<$Res>;
  $Res call({PaymentFailure failure});

  $PaymentFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureSCopyWithImpl<$Res>
    extends _$TransactionListStateCopyWithImpl<$Res>
    implements _$LoadFailureSCopyWith<$Res> {
  __$LoadFailureSCopyWithImpl(
      _LoadFailureS _value, $Res Function(_LoadFailureS) _then)
      : super(_value, (v) => _then(v as _LoadFailureS));

  @override
  _LoadFailureS get _value => super._value as _LoadFailureS;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadFailureS(
      failure: failure == freezed ? _value.failure : failure as PaymentFailure,
    ));
  }

  @override
  $PaymentFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $PaymentFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailureS with DiagnosticableTreeMixin implements _LoadFailureS {
  const _$_LoadFailureS({@required this.failure}) : assert(failure != null);

  @override
  final PaymentFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionListState.loadFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionListState.loadFailure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailureS &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureSCopyWith<_LoadFailureS> get copyWith =>
      __$LoadFailureSCopyWithImpl<_LoadFailureS>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadFailure(PaymentFailure failure),
    @required Result loadComplete(KtList<Payment> payments),
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
    Result loadFailure(PaymentFailure failure),
    Result loadComplete(KtList<Payment> payments),
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
    @required Result loadFailure(_LoadFailureS value),
    @required Result loadComplete(_PaymentLoaded value),
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
    Result loadFailure(_LoadFailureS value),
    Result loadComplete(_PaymentLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailureS implements TransactionListState {
  const factory _LoadFailureS({@required PaymentFailure failure}) =
      _$_LoadFailureS;

  PaymentFailure get failure;
  _$LoadFailureSCopyWith<_LoadFailureS> get copyWith;
}

/// @nodoc
abstract class _$PaymentLoadedCopyWith<$Res> {
  factory _$PaymentLoadedCopyWith(
          _PaymentLoaded value, $Res Function(_PaymentLoaded) then) =
      __$PaymentLoadedCopyWithImpl<$Res>;
  $Res call({KtList<Payment> payments});
}

/// @nodoc
class __$PaymentLoadedCopyWithImpl<$Res>
    extends _$TransactionListStateCopyWithImpl<$Res>
    implements _$PaymentLoadedCopyWith<$Res> {
  __$PaymentLoadedCopyWithImpl(
      _PaymentLoaded _value, $Res Function(_PaymentLoaded) _then)
      : super(_value, (v) => _then(v as _PaymentLoaded));

  @override
  _PaymentLoaded get _value => super._value as _PaymentLoaded;

  @override
  $Res call({
    Object payments = freezed,
  }) {
    return _then(_PaymentLoaded(
      payments:
          payments == freezed ? _value.payments : payments as KtList<Payment>,
    ));
  }
}

/// @nodoc
class _$_PaymentLoaded with DiagnosticableTreeMixin implements _PaymentLoaded {
  const _$_PaymentLoaded({@required this.payments}) : assert(payments != null);

  @override
  final KtList<Payment> payments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionListState.loadComplete(payments: $payments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionListState.loadComplete'))
      ..add(DiagnosticsProperty('payments', payments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentLoaded &&
            (identical(other.payments, payments) ||
                const DeepCollectionEquality()
                    .equals(other.payments, payments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payments);

  @override
  _$PaymentLoadedCopyWith<_PaymentLoaded> get copyWith =>
      __$PaymentLoadedCopyWithImpl<_PaymentLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadFailure(PaymentFailure failure),
    @required Result loadComplete(KtList<Payment> payments),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadComplete != null);
    return loadComplete(payments);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(PaymentFailure failure),
    Result loadComplete(KtList<Payment> payments),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadComplete != null) {
      return loadComplete(payments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadFailure(_LoadFailureS value),
    @required Result loadComplete(_PaymentLoaded value),
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
    Result loadFailure(_LoadFailureS value),
    Result loadComplete(_PaymentLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadComplete != null) {
      return loadComplete(this);
    }
    return orElse();
  }
}

abstract class _PaymentLoaded implements TransactionListState {
  const factory _PaymentLoaded({@required KtList<Payment> payments}) =
      _$_PaymentLoaded;

  KtList<Payment> get payments;
  _$PaymentLoadedCopyWith<_PaymentLoaded> get copyWith;
}
