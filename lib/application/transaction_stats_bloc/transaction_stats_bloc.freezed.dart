// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_stats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionStatsEventTearOff {
  const _$TransactionStatsEventTearOff();

// ignore: unused_element
  _WatchTransactionStatistics watchTransactionStatistics() {
    return const _WatchTransactionStatistics();
  }

// ignore: unused_element
  _LoadCompleted loadCompleted(
      {@required Either<PaymentStatsFailure, KtList<Day>> failureOrDays}) {
    return _LoadCompleted(
      failureOrDays: failureOrDays,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionStatsEvent = _$TransactionStatsEventTearOff();

/// @nodoc
mixin _$TransactionStatsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchTransactionStatistics(),
    @required
        Result loadCompleted(
            Either<PaymentStatsFailure, KtList<Day>> failureOrDays),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchTransactionStatistics(),
    Result loadCompleted(
        Either<PaymentStatsFailure, KtList<Day>> failureOrDays),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result watchTransactionStatistics(_WatchTransactionStatistics value),
    @required Result loadCompleted(_LoadCompleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchTransactionStatistics(_WatchTransactionStatistics value),
    Result loadCompleted(_LoadCompleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TransactionStatsEventCopyWith<$Res> {
  factory $TransactionStatsEventCopyWith(TransactionStatsEvent value,
          $Res Function(TransactionStatsEvent) then) =
      _$TransactionStatsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionStatsEventCopyWithImpl<$Res>
    implements $TransactionStatsEventCopyWith<$Res> {
  _$TransactionStatsEventCopyWithImpl(this._value, this._then);

  final TransactionStatsEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionStatsEvent) _then;
}

/// @nodoc
abstract class _$WatchTransactionStatisticsCopyWith<$Res> {
  factory _$WatchTransactionStatisticsCopyWith(
          _WatchTransactionStatistics value,
          $Res Function(_WatchTransactionStatistics) then) =
      __$WatchTransactionStatisticsCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchTransactionStatisticsCopyWithImpl<$Res>
    extends _$TransactionStatsEventCopyWithImpl<$Res>
    implements _$WatchTransactionStatisticsCopyWith<$Res> {
  __$WatchTransactionStatisticsCopyWithImpl(_WatchTransactionStatistics _value,
      $Res Function(_WatchTransactionStatistics) _then)
      : super(_value, (v) => _then(v as _WatchTransactionStatistics));

  @override
  _WatchTransactionStatistics get _value =>
      super._value as _WatchTransactionStatistics;
}

/// @nodoc
class _$_WatchTransactionStatistics
    with DiagnosticableTreeMixin
    implements _WatchTransactionStatistics {
  const _$_WatchTransactionStatistics();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionStatsEvent.watchTransactionStatistics()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TransactionStatsEvent.watchTransactionStatistics'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchTransactionStatistics);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchTransactionStatistics(),
    @required
        Result loadCompleted(
            Either<PaymentStatsFailure, KtList<Day>> failureOrDays),
  }) {
    assert(watchTransactionStatistics != null);
    assert(loadCompleted != null);
    return watchTransactionStatistics();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchTransactionStatistics(),
    Result loadCompleted(
        Either<PaymentStatsFailure, KtList<Day>> failureOrDays),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchTransactionStatistics != null) {
      return watchTransactionStatistics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result watchTransactionStatistics(_WatchTransactionStatistics value),
    @required Result loadCompleted(_LoadCompleted value),
  }) {
    assert(watchTransactionStatistics != null);
    assert(loadCompleted != null);
    return watchTransactionStatistics(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchTransactionStatistics(_WatchTransactionStatistics value),
    Result loadCompleted(_LoadCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchTransactionStatistics != null) {
      return watchTransactionStatistics(this);
    }
    return orElse();
  }
}

abstract class _WatchTransactionStatistics implements TransactionStatsEvent {
  const factory _WatchTransactionStatistics() = _$_WatchTransactionStatistics;
}

/// @nodoc
abstract class _$LoadCompletedCopyWith<$Res> {
  factory _$LoadCompletedCopyWith(
          _LoadCompleted value, $Res Function(_LoadCompleted) then) =
      __$LoadCompletedCopyWithImpl<$Res>;
  $Res call({Either<PaymentStatsFailure, KtList<Day>> failureOrDays});
}

/// @nodoc
class __$LoadCompletedCopyWithImpl<$Res>
    extends _$TransactionStatsEventCopyWithImpl<$Res>
    implements _$LoadCompletedCopyWith<$Res> {
  __$LoadCompletedCopyWithImpl(
      _LoadCompleted _value, $Res Function(_LoadCompleted) _then)
      : super(_value, (v) => _then(v as _LoadCompleted));

  @override
  _LoadCompleted get _value => super._value as _LoadCompleted;

  @override
  $Res call({
    Object failureOrDays = freezed,
  }) {
    return _then(_LoadCompleted(
      failureOrDays: failureOrDays == freezed
          ? _value.failureOrDays
          : failureOrDays as Either<PaymentStatsFailure, KtList<Day>>,
    ));
  }
}

/// @nodoc
class _$_LoadCompleted with DiagnosticableTreeMixin implements _LoadCompleted {
  const _$_LoadCompleted({@required this.failureOrDays})
      : assert(failureOrDays != null);

  @override
  final Either<PaymentStatsFailure, KtList<Day>> failureOrDays;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionStatsEvent.loadCompleted(failureOrDays: $failureOrDays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionStatsEvent.loadCompleted'))
      ..add(DiagnosticsProperty('failureOrDays', failureOrDays));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadCompleted &&
            (identical(other.failureOrDays, failureOrDays) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrDays, failureOrDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrDays);

  @override
  _$LoadCompletedCopyWith<_LoadCompleted> get copyWith =>
      __$LoadCompletedCopyWithImpl<_LoadCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchTransactionStatistics(),
    @required
        Result loadCompleted(
            Either<PaymentStatsFailure, KtList<Day>> failureOrDays),
  }) {
    assert(watchTransactionStatistics != null);
    assert(loadCompleted != null);
    return loadCompleted(failureOrDays);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchTransactionStatistics(),
    Result loadCompleted(
        Either<PaymentStatsFailure, KtList<Day>> failureOrDays),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCompleted != null) {
      return loadCompleted(failureOrDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result watchTransactionStatistics(_WatchTransactionStatistics value),
    @required Result loadCompleted(_LoadCompleted value),
  }) {
    assert(watchTransactionStatistics != null);
    assert(loadCompleted != null);
    return loadCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchTransactionStatistics(_WatchTransactionStatistics value),
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

abstract class _LoadCompleted implements TransactionStatsEvent {
  const factory _LoadCompleted(
          {@required Either<PaymentStatsFailure, KtList<Day>> failureOrDays}) =
      _$_LoadCompleted;

  Either<PaymentStatsFailure, KtList<Day>> get failureOrDays;
  _$LoadCompletedCopyWith<_LoadCompleted> get copyWith;
}

/// @nodoc
class _$TransactionStatStateTearOff {
  const _$TransactionStatStateTearOff();

// ignore: unused_element
  _TransactionStatState call(
      {@required PaymentStats paymentStats, @required bool errorPresent}) {
    return _TransactionStatState(
      paymentStats: paymentStats,
      errorPresent: errorPresent,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionStatState = _$TransactionStatStateTearOff();

/// @nodoc
mixin _$TransactionStatState {
  PaymentStats get paymentStats;
  bool get errorPresent;

  $TransactionStatStateCopyWith<TransactionStatState> get copyWith;
}

/// @nodoc
abstract class $TransactionStatStateCopyWith<$Res> {
  factory $TransactionStatStateCopyWith(TransactionStatState value,
          $Res Function(TransactionStatState) then) =
      _$TransactionStatStateCopyWithImpl<$Res>;
  $Res call({PaymentStats paymentStats, bool errorPresent});

  $PaymentStatsCopyWith<$Res> get paymentStats;
}

/// @nodoc
class _$TransactionStatStateCopyWithImpl<$Res>
    implements $TransactionStatStateCopyWith<$Res> {
  _$TransactionStatStateCopyWithImpl(this._value, this._then);

  final TransactionStatState _value;
  // ignore: unused_field
  final $Res Function(TransactionStatState) _then;

  @override
  $Res call({
    Object paymentStats = freezed,
    Object errorPresent = freezed,
  }) {
    return _then(_value.copyWith(
      paymentStats: paymentStats == freezed
          ? _value.paymentStats
          : paymentStats as PaymentStats,
      errorPresent:
          errorPresent == freezed ? _value.errorPresent : errorPresent as bool,
    ));
  }

  @override
  $PaymentStatsCopyWith<$Res> get paymentStats {
    if (_value.paymentStats == null) {
      return null;
    }
    return $PaymentStatsCopyWith<$Res>(_value.paymentStats, (value) {
      return _then(_value.copyWith(paymentStats: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionStatStateCopyWith<$Res>
    implements $TransactionStatStateCopyWith<$Res> {
  factory _$TransactionStatStateCopyWith(_TransactionStatState value,
          $Res Function(_TransactionStatState) then) =
      __$TransactionStatStateCopyWithImpl<$Res>;
  @override
  $Res call({PaymentStats paymentStats, bool errorPresent});

  @override
  $PaymentStatsCopyWith<$Res> get paymentStats;
}

/// @nodoc
class __$TransactionStatStateCopyWithImpl<$Res>
    extends _$TransactionStatStateCopyWithImpl<$Res>
    implements _$TransactionStatStateCopyWith<$Res> {
  __$TransactionStatStateCopyWithImpl(
      _TransactionStatState _value, $Res Function(_TransactionStatState) _then)
      : super(_value, (v) => _then(v as _TransactionStatState));

  @override
  _TransactionStatState get _value => super._value as _TransactionStatState;

  @override
  $Res call({
    Object paymentStats = freezed,
    Object errorPresent = freezed,
  }) {
    return _then(_TransactionStatState(
      paymentStats: paymentStats == freezed
          ? _value.paymentStats
          : paymentStats as PaymentStats,
      errorPresent:
          errorPresent == freezed ? _value.errorPresent : errorPresent as bool,
    ));
  }
}

/// @nodoc
class _$_TransactionStatState extends _TransactionStatState
    with DiagnosticableTreeMixin {
  _$_TransactionStatState(
      {@required this.paymentStats, @required this.errorPresent})
      : assert(paymentStats != null),
        assert(errorPresent != null),
        super._();

  @override
  final PaymentStats paymentStats;
  @override
  final bool errorPresent;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionStatState(paymentStats: $paymentStats, errorPresent: $errorPresent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionStatState'))
      ..add(DiagnosticsProperty('paymentStats', paymentStats))
      ..add(DiagnosticsProperty('errorPresent', errorPresent));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionStatState &&
            (identical(other.paymentStats, paymentStats) ||
                const DeepCollectionEquality()
                    .equals(other.paymentStats, paymentStats)) &&
            (identical(other.errorPresent, errorPresent) ||
                const DeepCollectionEquality()
                    .equals(other.errorPresent, errorPresent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentStats) ^
      const DeepCollectionEquality().hash(errorPresent);

  @override
  _$TransactionStatStateCopyWith<_TransactionStatState> get copyWith =>
      __$TransactionStatStateCopyWithImpl<_TransactionStatState>(
          this, _$identity);
}

abstract class _TransactionStatState extends TransactionStatState {
  _TransactionStatState._() : super._();
  factory _TransactionStatState(
      {@required PaymentStats paymentStats,
      @required bool errorPresent}) = _$_TransactionStatState;

  @override
  PaymentStats get paymentStats;
  @override
  bool get errorPresent;
  @override
  _$TransactionStatStateCopyWith<_TransactionStatState> get copyWith;
}
