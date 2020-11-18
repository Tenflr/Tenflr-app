// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'budget_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BudgetActorStateTearOff {
  const _$BudgetActorStateTearOff();

// ignore: unused_element
  _BudgetActorState call(
      {@required
          bool isSaving,
      @required
          Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption}) {
    return _BudgetActorState(
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BudgetActorState = _$BudgetActorStateTearOff();

/// @nodoc
mixin _$BudgetActorState {
  bool get isSaving;
  Option<Either<BudgetFailure, Unit>> get saveFailureOrSuccessOption;

  $BudgetActorStateCopyWith<BudgetActorState> get copyWith;
}

/// @nodoc
abstract class $BudgetActorStateCopyWith<$Res> {
  factory $BudgetActorStateCopyWith(
          BudgetActorState value, $Res Function(BudgetActorState) then) =
      _$BudgetActorStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSaving,
      Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$BudgetActorStateCopyWithImpl<$Res>
    implements $BudgetActorStateCopyWith<$Res> {
  _$BudgetActorStateCopyWithImpl(this._value, this._then);

  final BudgetActorState _value;
  // ignore: unused_field
  final $Res Function(BudgetActorState) _then;

  @override
  $Res call({
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<BudgetFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$BudgetActorStateCopyWith<$Res>
    implements $BudgetActorStateCopyWith<$Res> {
  factory _$BudgetActorStateCopyWith(
          _BudgetActorState value, $Res Function(_BudgetActorState) then) =
      __$BudgetActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSaving,
      Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$BudgetActorStateCopyWithImpl<$Res>
    extends _$BudgetActorStateCopyWithImpl<$Res>
    implements _$BudgetActorStateCopyWith<$Res> {
  __$BudgetActorStateCopyWithImpl(
      _BudgetActorState _value, $Res Function(_BudgetActorState) _then)
      : super(_value, (v) => _then(v as _BudgetActorState));

  @override
  _BudgetActorState get _value => super._value as _BudgetActorState;

  @override
  $Res call({
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_BudgetActorState(
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<BudgetFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_BudgetActorState extends _BudgetActorState {
  _$_BudgetActorState(
      {@required this.isSaving, @required this.saveFailureOrSuccessOption})
      : assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null),
        super._();

  @override
  final bool isSaving;
  @override
  final Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'BudgetActorState(isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BudgetActorState &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$BudgetActorStateCopyWith<_BudgetActorState> get copyWith =>
      __$BudgetActorStateCopyWithImpl<_BudgetActorState>(this, _$identity);
}

abstract class _BudgetActorState extends BudgetActorState {
  _BudgetActorState._() : super._();
  factory _BudgetActorState(
          {@required
              bool isSaving,
          @required
              Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_BudgetActorState;

  @override
  bool get isSaving;
  @override
  Option<Either<BudgetFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$BudgetActorStateCopyWith<_BudgetActorState> get copyWith;
}

/// @nodoc
class _$BudgetActorEventTearOff {
  const _$BudgetActorEventTearOff();

// ignore: unused_element
  _ManualCash manualCash(Budget budget, String type) {
    return _ManualCash(
      budget,
      type,
    );
  }

// ignore: unused_element
  _Hide hide(Budget budget, String type) {
    return _Hide(
      budget,
      type,
    );
  }

// ignore: unused_element
  _DeleteComplete deleteComplete(Budget budget, String type) {
    return _DeleteComplete(
      budget,
      type,
    );
  }

// ignore: unused_element
  _ForceUnlockPersonal forceUnlockPersonal(Budget budget, String type) {
    return _ForceUnlockPersonal(
      budget,
      type,
    );
  }

// ignore: unused_element
  _autoUnlockPersonal autoUnlockPeriodically(Budget budget, String type) {
    return _autoUnlockPersonal(
      budget,
      type,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BudgetActorEvent = _$BudgetActorEventTearOff();

/// @nodoc
mixin _$BudgetActorEvent {
  Budget get budget;
  String get type;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result manualCash(Budget budget, String type),
    @required Result hide(Budget budget, String type),
    @required Result deleteComplete(Budget budget, String type),
    @required Result forceUnlockPersonal(Budget budget, String type),
    @required Result autoUnlockPeriodically(Budget budget, String type),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result manualCash(Budget budget, String type),
    Result hide(Budget budget, String type),
    Result deleteComplete(Budget budget, String type),
    Result forceUnlockPersonal(Budget budget, String type),
    Result autoUnlockPeriodically(Budget budget, String type),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result manualCash(_ManualCash value),
    @required Result hide(_Hide value),
    @required Result deleteComplete(_DeleteComplete value),
    @required Result forceUnlockPersonal(_ForceUnlockPersonal value),
    @required Result autoUnlockPeriodically(_autoUnlockPersonal value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manualCash(_ManualCash value),
    Result hide(_Hide value),
    Result deleteComplete(_DeleteComplete value),
    Result forceUnlockPersonal(_ForceUnlockPersonal value),
    Result autoUnlockPeriodically(_autoUnlockPersonal value),
    @required Result orElse(),
  });

  $BudgetActorEventCopyWith<BudgetActorEvent> get copyWith;
}

/// @nodoc
abstract class $BudgetActorEventCopyWith<$Res> {
  factory $BudgetActorEventCopyWith(
          BudgetActorEvent value, $Res Function(BudgetActorEvent) then) =
      _$BudgetActorEventCopyWithImpl<$Res>;
  $Res call({Budget budget, String type});

  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class _$BudgetActorEventCopyWithImpl<$Res>
    implements $BudgetActorEventCopyWith<$Res> {
  _$BudgetActorEventCopyWithImpl(this._value, this._then);

  final BudgetActorEvent _value;
  // ignore: unused_field
  final $Res Function(BudgetActorEvent) _then;

  @override
  $Res call({
    Object budget = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      budget: budget == freezed ? _value.budget : budget as Budget,
      type: type == freezed ? _value.type : type as String,
    ));
  }

  @override
  $BudgetCopyWith<$Res> get budget {
    if (_value.budget == null) {
      return null;
    }
    return $BudgetCopyWith<$Res>(_value.budget, (value) {
      return _then(_value.copyWith(budget: value));
    });
  }
}

/// @nodoc
abstract class _$ManualCashCopyWith<$Res>
    implements $BudgetActorEventCopyWith<$Res> {
  factory _$ManualCashCopyWith(
          _ManualCash value, $Res Function(_ManualCash) then) =
      __$ManualCashCopyWithImpl<$Res>;
  @override
  $Res call({Budget budget, String type});

  @override
  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class __$ManualCashCopyWithImpl<$Res>
    extends _$BudgetActorEventCopyWithImpl<$Res>
    implements _$ManualCashCopyWith<$Res> {
  __$ManualCashCopyWithImpl(
      _ManualCash _value, $Res Function(_ManualCash) _then)
      : super(_value, (v) => _then(v as _ManualCash));

  @override
  _ManualCash get _value => super._value as _ManualCash;

  @override
  $Res call({
    Object budget = freezed,
    Object type = freezed,
  }) {
    return _then(_ManualCash(
      budget == freezed ? _value.budget : budget as Budget,
      type == freezed ? _value.type : type as String,
    ));
  }
}

/// @nodoc
class _$_ManualCash implements _ManualCash {
  const _$_ManualCash(this.budget, this.type)
      : assert(budget != null),
        assert(type != null);

  @override
  final Budget budget;
  @override
  final String type;

  @override
  String toString() {
    return 'BudgetActorEvent.manualCash(budget: $budget, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ManualCash &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$ManualCashCopyWith<_ManualCash> get copyWith =>
      __$ManualCashCopyWithImpl<_ManualCash>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result manualCash(Budget budget, String type),
    @required Result hide(Budget budget, String type),
    @required Result deleteComplete(Budget budget, String type),
    @required Result forceUnlockPersonal(Budget budget, String type),
    @required Result autoUnlockPeriodically(Budget budget, String type),
  }) {
    assert(manualCash != null);
    assert(hide != null);
    assert(deleteComplete != null);
    assert(forceUnlockPersonal != null);
    assert(autoUnlockPeriodically != null);
    return manualCash(budget, type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result manualCash(Budget budget, String type),
    Result hide(Budget budget, String type),
    Result deleteComplete(Budget budget, String type),
    Result forceUnlockPersonal(Budget budget, String type),
    Result autoUnlockPeriodically(Budget budget, String type),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (manualCash != null) {
      return manualCash(budget, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result manualCash(_ManualCash value),
    @required Result hide(_Hide value),
    @required Result deleteComplete(_DeleteComplete value),
    @required Result forceUnlockPersonal(_ForceUnlockPersonal value),
    @required Result autoUnlockPeriodically(_autoUnlockPersonal value),
  }) {
    assert(manualCash != null);
    assert(hide != null);
    assert(deleteComplete != null);
    assert(forceUnlockPersonal != null);
    assert(autoUnlockPeriodically != null);
    return manualCash(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manualCash(_ManualCash value),
    Result hide(_Hide value),
    Result deleteComplete(_DeleteComplete value),
    Result forceUnlockPersonal(_ForceUnlockPersonal value),
    Result autoUnlockPeriodically(_autoUnlockPersonal value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (manualCash != null) {
      return manualCash(this);
    }
    return orElse();
  }
}

abstract class _ManualCash implements BudgetActorEvent {
  const factory _ManualCash(Budget budget, String type) = _$_ManualCash;

  @override
  Budget get budget;
  @override
  String get type;
  @override
  _$ManualCashCopyWith<_ManualCash> get copyWith;
}

/// @nodoc
abstract class _$HideCopyWith<$Res> implements $BudgetActorEventCopyWith<$Res> {
  factory _$HideCopyWith(_Hide value, $Res Function(_Hide) then) =
      __$HideCopyWithImpl<$Res>;
  @override
  $Res call({Budget budget, String type});

  @override
  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class __$HideCopyWithImpl<$Res> extends _$BudgetActorEventCopyWithImpl<$Res>
    implements _$HideCopyWith<$Res> {
  __$HideCopyWithImpl(_Hide _value, $Res Function(_Hide) _then)
      : super(_value, (v) => _then(v as _Hide));

  @override
  _Hide get _value => super._value as _Hide;

  @override
  $Res call({
    Object budget = freezed,
    Object type = freezed,
  }) {
    return _then(_Hide(
      budget == freezed ? _value.budget : budget as Budget,
      type == freezed ? _value.type : type as String,
    ));
  }
}

/// @nodoc
class _$_Hide implements _Hide {
  const _$_Hide(this.budget, this.type)
      : assert(budget != null),
        assert(type != null);

  @override
  final Budget budget;
  @override
  final String type;

  @override
  String toString() {
    return 'BudgetActorEvent.hide(budget: $budget, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hide &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$HideCopyWith<_Hide> get copyWith =>
      __$HideCopyWithImpl<_Hide>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result manualCash(Budget budget, String type),
    @required Result hide(Budget budget, String type),
    @required Result deleteComplete(Budget budget, String type),
    @required Result forceUnlockPersonal(Budget budget, String type),
    @required Result autoUnlockPeriodically(Budget budget, String type),
  }) {
    assert(manualCash != null);
    assert(hide != null);
    assert(deleteComplete != null);
    assert(forceUnlockPersonal != null);
    assert(autoUnlockPeriodically != null);
    return hide(budget, type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result manualCash(Budget budget, String type),
    Result hide(Budget budget, String type),
    Result deleteComplete(Budget budget, String type),
    Result forceUnlockPersonal(Budget budget, String type),
    Result autoUnlockPeriodically(Budget budget, String type),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hide != null) {
      return hide(budget, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result manualCash(_ManualCash value),
    @required Result hide(_Hide value),
    @required Result deleteComplete(_DeleteComplete value),
    @required Result forceUnlockPersonal(_ForceUnlockPersonal value),
    @required Result autoUnlockPeriodically(_autoUnlockPersonal value),
  }) {
    assert(manualCash != null);
    assert(hide != null);
    assert(deleteComplete != null);
    assert(forceUnlockPersonal != null);
    assert(autoUnlockPeriodically != null);
    return hide(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manualCash(_ManualCash value),
    Result hide(_Hide value),
    Result deleteComplete(_DeleteComplete value),
    Result forceUnlockPersonal(_ForceUnlockPersonal value),
    Result autoUnlockPeriodically(_autoUnlockPersonal value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hide != null) {
      return hide(this);
    }
    return orElse();
  }
}

abstract class _Hide implements BudgetActorEvent {
  const factory _Hide(Budget budget, String type) = _$_Hide;

  @override
  Budget get budget;
  @override
  String get type;
  @override
  _$HideCopyWith<_Hide> get copyWith;
}

/// @nodoc
abstract class _$DeleteCompleteCopyWith<$Res>
    implements $BudgetActorEventCopyWith<$Res> {
  factory _$DeleteCompleteCopyWith(
          _DeleteComplete value, $Res Function(_DeleteComplete) then) =
      __$DeleteCompleteCopyWithImpl<$Res>;
  @override
  $Res call({Budget budget, String type});

  @override
  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class __$DeleteCompleteCopyWithImpl<$Res>
    extends _$BudgetActorEventCopyWithImpl<$Res>
    implements _$DeleteCompleteCopyWith<$Res> {
  __$DeleteCompleteCopyWithImpl(
      _DeleteComplete _value, $Res Function(_DeleteComplete) _then)
      : super(_value, (v) => _then(v as _DeleteComplete));

  @override
  _DeleteComplete get _value => super._value as _DeleteComplete;

  @override
  $Res call({
    Object budget = freezed,
    Object type = freezed,
  }) {
    return _then(_DeleteComplete(
      budget == freezed ? _value.budget : budget as Budget,
      type == freezed ? _value.type : type as String,
    ));
  }
}

/// @nodoc
class _$_DeleteComplete implements _DeleteComplete {
  const _$_DeleteComplete(this.budget, this.type)
      : assert(budget != null),
        assert(type != null);

  @override
  final Budget budget;
  @override
  final String type;

  @override
  String toString() {
    return 'BudgetActorEvent.deleteComplete(budget: $budget, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteComplete &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$DeleteCompleteCopyWith<_DeleteComplete> get copyWith =>
      __$DeleteCompleteCopyWithImpl<_DeleteComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result manualCash(Budget budget, String type),
    @required Result hide(Budget budget, String type),
    @required Result deleteComplete(Budget budget, String type),
    @required Result forceUnlockPersonal(Budget budget, String type),
    @required Result autoUnlockPeriodically(Budget budget, String type),
  }) {
    assert(manualCash != null);
    assert(hide != null);
    assert(deleteComplete != null);
    assert(forceUnlockPersonal != null);
    assert(autoUnlockPeriodically != null);
    return deleteComplete(budget, type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result manualCash(Budget budget, String type),
    Result hide(Budget budget, String type),
    Result deleteComplete(Budget budget, String type),
    Result forceUnlockPersonal(Budget budget, String type),
    Result autoUnlockPeriodically(Budget budget, String type),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteComplete != null) {
      return deleteComplete(budget, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result manualCash(_ManualCash value),
    @required Result hide(_Hide value),
    @required Result deleteComplete(_DeleteComplete value),
    @required Result forceUnlockPersonal(_ForceUnlockPersonal value),
    @required Result autoUnlockPeriodically(_autoUnlockPersonal value),
  }) {
    assert(manualCash != null);
    assert(hide != null);
    assert(deleteComplete != null);
    assert(forceUnlockPersonal != null);
    assert(autoUnlockPeriodically != null);
    return deleteComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manualCash(_ManualCash value),
    Result hide(_Hide value),
    Result deleteComplete(_DeleteComplete value),
    Result forceUnlockPersonal(_ForceUnlockPersonal value),
    Result autoUnlockPeriodically(_autoUnlockPersonal value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteComplete != null) {
      return deleteComplete(this);
    }
    return orElse();
  }
}

abstract class _DeleteComplete implements BudgetActorEvent {
  const factory _DeleteComplete(Budget budget, String type) = _$_DeleteComplete;

  @override
  Budget get budget;
  @override
  String get type;
  @override
  _$DeleteCompleteCopyWith<_DeleteComplete> get copyWith;
}

/// @nodoc
abstract class _$ForceUnlockPersonalCopyWith<$Res>
    implements $BudgetActorEventCopyWith<$Res> {
  factory _$ForceUnlockPersonalCopyWith(_ForceUnlockPersonal value,
          $Res Function(_ForceUnlockPersonal) then) =
      __$ForceUnlockPersonalCopyWithImpl<$Res>;
  @override
  $Res call({Budget budget, String type});

  @override
  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class __$ForceUnlockPersonalCopyWithImpl<$Res>
    extends _$BudgetActorEventCopyWithImpl<$Res>
    implements _$ForceUnlockPersonalCopyWith<$Res> {
  __$ForceUnlockPersonalCopyWithImpl(
      _ForceUnlockPersonal _value, $Res Function(_ForceUnlockPersonal) _then)
      : super(_value, (v) => _then(v as _ForceUnlockPersonal));

  @override
  _ForceUnlockPersonal get _value => super._value as _ForceUnlockPersonal;

  @override
  $Res call({
    Object budget = freezed,
    Object type = freezed,
  }) {
    return _then(_ForceUnlockPersonal(
      budget == freezed ? _value.budget : budget as Budget,
      type == freezed ? _value.type : type as String,
    ));
  }
}

/// @nodoc
class _$_ForceUnlockPersonal implements _ForceUnlockPersonal {
  const _$_ForceUnlockPersonal(this.budget, this.type)
      : assert(budget != null),
        assert(type != null);

  @override
  final Budget budget;
  @override
  final String type;

  @override
  String toString() {
    return 'BudgetActorEvent.forceUnlockPersonal(budget: $budget, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForceUnlockPersonal &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$ForceUnlockPersonalCopyWith<_ForceUnlockPersonal> get copyWith =>
      __$ForceUnlockPersonalCopyWithImpl<_ForceUnlockPersonal>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result manualCash(Budget budget, String type),
    @required Result hide(Budget budget, String type),
    @required Result deleteComplete(Budget budget, String type),
    @required Result forceUnlockPersonal(Budget budget, String type),
    @required Result autoUnlockPeriodically(Budget budget, String type),
  }) {
    assert(manualCash != null);
    assert(hide != null);
    assert(deleteComplete != null);
    assert(forceUnlockPersonal != null);
    assert(autoUnlockPeriodically != null);
    return forceUnlockPersonal(budget, type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result manualCash(Budget budget, String type),
    Result hide(Budget budget, String type),
    Result deleteComplete(Budget budget, String type),
    Result forceUnlockPersonal(Budget budget, String type),
    Result autoUnlockPeriodically(Budget budget, String type),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forceUnlockPersonal != null) {
      return forceUnlockPersonal(budget, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result manualCash(_ManualCash value),
    @required Result hide(_Hide value),
    @required Result deleteComplete(_DeleteComplete value),
    @required Result forceUnlockPersonal(_ForceUnlockPersonal value),
    @required Result autoUnlockPeriodically(_autoUnlockPersonal value),
  }) {
    assert(manualCash != null);
    assert(hide != null);
    assert(deleteComplete != null);
    assert(forceUnlockPersonal != null);
    assert(autoUnlockPeriodically != null);
    return forceUnlockPersonal(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manualCash(_ManualCash value),
    Result hide(_Hide value),
    Result deleteComplete(_DeleteComplete value),
    Result forceUnlockPersonal(_ForceUnlockPersonal value),
    Result autoUnlockPeriodically(_autoUnlockPersonal value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forceUnlockPersonal != null) {
      return forceUnlockPersonal(this);
    }
    return orElse();
  }
}

abstract class _ForceUnlockPersonal implements BudgetActorEvent {
  const factory _ForceUnlockPersonal(Budget budget, String type) =
      _$_ForceUnlockPersonal;

  @override
  Budget get budget;
  @override
  String get type;
  @override
  _$ForceUnlockPersonalCopyWith<_ForceUnlockPersonal> get copyWith;
}

/// @nodoc
abstract class _$autoUnlockPersonalCopyWith<$Res>
    implements $BudgetActorEventCopyWith<$Res> {
  factory _$autoUnlockPersonalCopyWith(
          _autoUnlockPersonal value, $Res Function(_autoUnlockPersonal) then) =
      __$autoUnlockPersonalCopyWithImpl<$Res>;
  @override
  $Res call({Budget budget, String type});

  @override
  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class __$autoUnlockPersonalCopyWithImpl<$Res>
    extends _$BudgetActorEventCopyWithImpl<$Res>
    implements _$autoUnlockPersonalCopyWith<$Res> {
  __$autoUnlockPersonalCopyWithImpl(
      _autoUnlockPersonal _value, $Res Function(_autoUnlockPersonal) _then)
      : super(_value, (v) => _then(v as _autoUnlockPersonal));

  @override
  _autoUnlockPersonal get _value => super._value as _autoUnlockPersonal;

  @override
  $Res call({
    Object budget = freezed,
    Object type = freezed,
  }) {
    return _then(_autoUnlockPersonal(
      budget == freezed ? _value.budget : budget as Budget,
      type == freezed ? _value.type : type as String,
    ));
  }
}

/// @nodoc
class _$_autoUnlockPersonal implements _autoUnlockPersonal {
  const _$_autoUnlockPersonal(this.budget, this.type)
      : assert(budget != null),
        assert(type != null);

  @override
  final Budget budget;
  @override
  final String type;

  @override
  String toString() {
    return 'BudgetActorEvent.autoUnlockPeriodically(budget: $budget, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _autoUnlockPersonal &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$autoUnlockPersonalCopyWith<_autoUnlockPersonal> get copyWith =>
      __$autoUnlockPersonalCopyWithImpl<_autoUnlockPersonal>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result manualCash(Budget budget, String type),
    @required Result hide(Budget budget, String type),
    @required Result deleteComplete(Budget budget, String type),
    @required Result forceUnlockPersonal(Budget budget, String type),
    @required Result autoUnlockPeriodically(Budget budget, String type),
  }) {
    assert(manualCash != null);
    assert(hide != null);
    assert(deleteComplete != null);
    assert(forceUnlockPersonal != null);
    assert(autoUnlockPeriodically != null);
    return autoUnlockPeriodically(budget, type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result manualCash(Budget budget, String type),
    Result hide(Budget budget, String type),
    Result deleteComplete(Budget budget, String type),
    Result forceUnlockPersonal(Budget budget, String type),
    Result autoUnlockPeriodically(Budget budget, String type),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (autoUnlockPeriodically != null) {
      return autoUnlockPeriodically(budget, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result manualCash(_ManualCash value),
    @required Result hide(_Hide value),
    @required Result deleteComplete(_DeleteComplete value),
    @required Result forceUnlockPersonal(_ForceUnlockPersonal value),
    @required Result autoUnlockPeriodically(_autoUnlockPersonal value),
  }) {
    assert(manualCash != null);
    assert(hide != null);
    assert(deleteComplete != null);
    assert(forceUnlockPersonal != null);
    assert(autoUnlockPeriodically != null);
    return autoUnlockPeriodically(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manualCash(_ManualCash value),
    Result hide(_Hide value),
    Result deleteComplete(_DeleteComplete value),
    Result forceUnlockPersonal(_ForceUnlockPersonal value),
    Result autoUnlockPeriodically(_autoUnlockPersonal value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (autoUnlockPeriodically != null) {
      return autoUnlockPeriodically(this);
    }
    return orElse();
  }
}

abstract class _autoUnlockPersonal implements BudgetActorEvent {
  const factory _autoUnlockPersonal(Budget budget, String type) =
      _$_autoUnlockPersonal;

  @override
  Budget get budget;
  @override
  String get type;
  @override
  _$autoUnlockPersonalCopyWith<_autoUnlockPersonal> get copyWith;
}
