// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trusted_funds_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TrustedFundsEventTearOff {
  const _$TrustedFundsEventTearOff();

// ignore: unused_element
  _WatchFunds watchFunds() {
    return const _WatchFunds();
  }

// ignore: unused_element
  _LoadComplete loadComplete({@required MoneyAmount amount}) {
    return _LoadComplete(
      amount: amount,
    );
  }

// ignore: unused_element
  _LoadFailureE loadFailure({@required PaymentFailure failure}) {
    return _LoadFailureE(
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TrustedFundsEvent = _$TrustedFundsEventTearOff();

/// @nodoc
mixin _$TrustedFundsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchFunds(),
    @required Result loadComplete(MoneyAmount amount),
    @required Result loadFailure(PaymentFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchFunds(),
    Result loadComplete(MoneyAmount amount),
    Result loadFailure(PaymentFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchFunds(_WatchFunds value),
    @required Result loadComplete(_LoadComplete value),
    @required Result loadFailure(_LoadFailureE value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchFunds(_WatchFunds value),
    Result loadComplete(_LoadComplete value),
    Result loadFailure(_LoadFailureE value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TrustedFundsEventCopyWith<$Res> {
  factory $TrustedFundsEventCopyWith(
          TrustedFundsEvent value, $Res Function(TrustedFundsEvent) then) =
      _$TrustedFundsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrustedFundsEventCopyWithImpl<$Res>
    implements $TrustedFundsEventCopyWith<$Res> {
  _$TrustedFundsEventCopyWithImpl(this._value, this._then);

  final TrustedFundsEvent _value;
  // ignore: unused_field
  final $Res Function(TrustedFundsEvent) _then;
}

/// @nodoc
abstract class _$WatchFundsCopyWith<$Res> {
  factory _$WatchFundsCopyWith(
          _WatchFunds value, $Res Function(_WatchFunds) then) =
      __$WatchFundsCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchFundsCopyWithImpl<$Res>
    extends _$TrustedFundsEventCopyWithImpl<$Res>
    implements _$WatchFundsCopyWith<$Res> {
  __$WatchFundsCopyWithImpl(
      _WatchFunds _value, $Res Function(_WatchFunds) _then)
      : super(_value, (v) => _then(v as _WatchFunds));

  @override
  _WatchFunds get _value => super._value as _WatchFunds;
}

/// @nodoc
class _$_WatchFunds with DiagnosticableTreeMixin implements _WatchFunds {
  const _$_WatchFunds();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedFundsEvent.watchFunds()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrustedFundsEvent.watchFunds'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchFunds);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchFunds(),
    @required Result loadComplete(MoneyAmount amount),
    @required Result loadFailure(PaymentFailure failure),
  }) {
    assert(watchFunds != null);
    assert(loadComplete != null);
    assert(loadFailure != null);
    return watchFunds();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchFunds(),
    Result loadComplete(MoneyAmount amount),
    Result loadFailure(PaymentFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFunds != null) {
      return watchFunds();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchFunds(_WatchFunds value),
    @required Result loadComplete(_LoadComplete value),
    @required Result loadFailure(_LoadFailureE value),
  }) {
    assert(watchFunds != null);
    assert(loadComplete != null);
    assert(loadFailure != null);
    return watchFunds(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchFunds(_WatchFunds value),
    Result loadComplete(_LoadComplete value),
    Result loadFailure(_LoadFailureE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFunds != null) {
      return watchFunds(this);
    }
    return orElse();
  }
}

abstract class _WatchFunds implements TrustedFundsEvent {
  const factory _WatchFunds() = _$_WatchFunds;
}

/// @nodoc
abstract class _$LoadCompleteCopyWith<$Res> {
  factory _$LoadCompleteCopyWith(
          _LoadComplete value, $Res Function(_LoadComplete) then) =
      __$LoadCompleteCopyWithImpl<$Res>;
  $Res call({MoneyAmount amount});
}

/// @nodoc
class __$LoadCompleteCopyWithImpl<$Res>
    extends _$TrustedFundsEventCopyWithImpl<$Res>
    implements _$LoadCompleteCopyWith<$Res> {
  __$LoadCompleteCopyWithImpl(
      _LoadComplete _value, $Res Function(_LoadComplete) _then)
      : super(_value, (v) => _then(v as _LoadComplete));

  @override
  _LoadComplete get _value => super._value as _LoadComplete;

  @override
  $Res call({
    Object amount = freezed,
  }) {
    return _then(_LoadComplete(
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
    ));
  }
}

/// @nodoc
class _$_LoadComplete with DiagnosticableTreeMixin implements _LoadComplete {
  const _$_LoadComplete({@required this.amount}) : assert(amount != null);

  @override
  final MoneyAmount amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedFundsEvent.loadComplete(amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrustedFundsEvent.loadComplete'))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadComplete &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @override
  _$LoadCompleteCopyWith<_LoadComplete> get copyWith =>
      __$LoadCompleteCopyWithImpl<_LoadComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchFunds(),
    @required Result loadComplete(MoneyAmount amount),
    @required Result loadFailure(PaymentFailure failure),
  }) {
    assert(watchFunds != null);
    assert(loadComplete != null);
    assert(loadFailure != null);
    return loadComplete(amount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchFunds(),
    Result loadComplete(MoneyAmount amount),
    Result loadFailure(PaymentFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadComplete != null) {
      return loadComplete(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchFunds(_WatchFunds value),
    @required Result loadComplete(_LoadComplete value),
    @required Result loadFailure(_LoadFailureE value),
  }) {
    assert(watchFunds != null);
    assert(loadComplete != null);
    assert(loadFailure != null);
    return loadComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchFunds(_WatchFunds value),
    Result loadComplete(_LoadComplete value),
    Result loadFailure(_LoadFailureE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadComplete != null) {
      return loadComplete(this);
    }
    return orElse();
  }
}

abstract class _LoadComplete implements TrustedFundsEvent {
  const factory _LoadComplete({@required MoneyAmount amount}) = _$_LoadComplete;

  MoneyAmount get amount;
  _$LoadCompleteCopyWith<_LoadComplete> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureECopyWith<$Res> {
  factory _$LoadFailureECopyWith(
          _LoadFailureE value, $Res Function(_LoadFailureE) then) =
      __$LoadFailureECopyWithImpl<$Res>;
  $Res call({PaymentFailure failure});

  $PaymentFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureECopyWithImpl<$Res>
    extends _$TrustedFundsEventCopyWithImpl<$Res>
    implements _$LoadFailureECopyWith<$Res> {
  __$LoadFailureECopyWithImpl(
      _LoadFailureE _value, $Res Function(_LoadFailureE) _then)
      : super(_value, (v) => _then(v as _LoadFailureE));

  @override
  _LoadFailureE get _value => super._value as _LoadFailureE;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadFailureE(
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
class _$_LoadFailureE with DiagnosticableTreeMixin implements _LoadFailureE {
  const _$_LoadFailureE({@required this.failure}) : assert(failure != null);

  @override
  final PaymentFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedFundsEvent.loadFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrustedFundsEvent.loadFailure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailureE &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureECopyWith<_LoadFailureE> get copyWith =>
      __$LoadFailureECopyWithImpl<_LoadFailureE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchFunds(),
    @required Result loadComplete(MoneyAmount amount),
    @required Result loadFailure(PaymentFailure failure),
  }) {
    assert(watchFunds != null);
    assert(loadComplete != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchFunds(),
    Result loadComplete(MoneyAmount amount),
    Result loadFailure(PaymentFailure failure),
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
    @required Result watchFunds(_WatchFunds value),
    @required Result loadComplete(_LoadComplete value),
    @required Result loadFailure(_LoadFailureE value),
  }) {
    assert(watchFunds != null);
    assert(loadComplete != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchFunds(_WatchFunds value),
    Result loadComplete(_LoadComplete value),
    Result loadFailure(_LoadFailureE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailureE implements TrustedFundsEvent {
  const factory _LoadFailureE({@required PaymentFailure failure}) =
      _$_LoadFailureE;

  PaymentFailure get failure;
  _$LoadFailureECopyWith<_LoadFailureE> get copyWith;
}

/// @nodoc
class _$TrustedFundsStateTearOff {
  const _$TrustedFundsStateTearOff();

// ignore: unused_element
  _Inital initial() {
    return const _Inital();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess({@required MoneyAmount amount}) {
    return _LoadSuccess(
      amount: amount,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure({@required PaymentFailure failure}) {
    return _LoadFailure(
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TrustedFundsState = _$TrustedFundsStateTearOff();

/// @nodoc
mixin _$TrustedFundsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(MoneyAmount amount),
    @required Result loadFailure(PaymentFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(MoneyAmount amount),
    Result loadFailure(PaymentFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Inital value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Inital value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TrustedFundsStateCopyWith<$Res> {
  factory $TrustedFundsStateCopyWith(
          TrustedFundsState value, $Res Function(TrustedFundsState) then) =
      _$TrustedFundsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrustedFundsStateCopyWithImpl<$Res>
    implements $TrustedFundsStateCopyWith<$Res> {
  _$TrustedFundsStateCopyWithImpl(this._value, this._then);

  final TrustedFundsState _value;
  // ignore: unused_field
  final $Res Function(TrustedFundsState) _then;
}

/// @nodoc
abstract class _$InitalCopyWith<$Res> {
  factory _$InitalCopyWith(_Inital value, $Res Function(_Inital) then) =
      __$InitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitalCopyWithImpl<$Res> extends _$TrustedFundsStateCopyWithImpl<$Res>
    implements _$InitalCopyWith<$Res> {
  __$InitalCopyWithImpl(_Inital _value, $Res Function(_Inital) _then)
      : super(_value, (v) => _then(v as _Inital));

  @override
  _Inital get _value => super._value as _Inital;
}

/// @nodoc
class _$_Inital with DiagnosticableTreeMixin implements _Inital {
  const _$_Inital();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedFundsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TrustedFundsState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Inital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(MoneyAmount amount),
    @required Result loadFailure(PaymentFailure failure),
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
    Result loadSuccess(MoneyAmount amount),
    Result loadFailure(PaymentFailure failure),
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
    @required Result initial(_Inital value),
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
    Result initial(_Inital value),
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

abstract class _Inital implements TrustedFundsState {
  const factory _Inital() = _$_Inital;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$TrustedFundsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress
    with DiagnosticableTreeMixin
    implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedFundsState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrustedFundsState.loadInProgress'));
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
    @required Result loadSuccess(MoneyAmount amount),
    @required Result loadFailure(PaymentFailure failure),
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
    Result loadSuccess(MoneyAmount amount),
    Result loadFailure(PaymentFailure failure),
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
    @required Result initial(_Inital value),
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
    Result initial(_Inital value),
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

abstract class _LoadInProgress implements TrustedFundsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({MoneyAmount amount});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$TrustedFundsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object amount = freezed,
  }) {
    return _then(_LoadSuccess(
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess with DiagnosticableTreeMixin implements _LoadSuccess {
  const _$_LoadSuccess({@required this.amount}) : assert(amount != null);

  @override
  final MoneyAmount amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedFundsState.loadSuccess(amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrustedFundsState.loadSuccess'))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(MoneyAmount amount),
    @required Result loadFailure(PaymentFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(amount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(MoneyAmount amount),
    Result loadFailure(PaymentFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Inital value),
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
    Result initial(_Inital value),
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

abstract class _LoadSuccess implements TrustedFundsState {
  const factory _LoadSuccess({@required MoneyAmount amount}) = _$_LoadSuccess;

  MoneyAmount get amount;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({PaymentFailure failure});

  $PaymentFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$TrustedFundsStateCopyWithImpl<$Res>
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
class _$_LoadFailure with DiagnosticableTreeMixin implements _LoadFailure {
  const _$_LoadFailure({@required this.failure}) : assert(failure != null);

  @override
  final PaymentFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedFundsState.loadFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrustedFundsState.loadFailure'))
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
    @required Result loadInProgress(),
    @required Result loadSuccess(MoneyAmount amount),
    @required Result loadFailure(PaymentFailure failure),
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
    Result loadSuccess(MoneyAmount amount),
    Result loadFailure(PaymentFailure failure),
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
    @required Result initial(_Inital value),
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
    Result initial(_Inital value),
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

abstract class _LoadFailure implements TrustedFundsState {
  const factory _LoadFailure({@required PaymentFailure failure}) =
      _$_LoadFailure;

  PaymentFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
