// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'savings_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SavingsActorEventTearOff {
  const _$SavingsActorEventTearOff();

// ignore: unused_element
  _UnlockSavings unlockSavings(Savings saving) {
    return _UnlockSavings(
      saving,
    );
  }

// ignore: unused_element
  _ForceUnlockSavings forceUnlockSavings(Savings saving) {
    return _ForceUnlockSavings(
      saving,
    );
  }

// ignore: unused_element
  _DeleteUnlock deleteUnlocked(Savings saving) {
    return _DeleteUnlock(
      saving,
    );
  }

// ignore: unused_element
  _Hide hide(Savings saving) {
    return _Hide(
      saving,
    );
  }

// ignore: unused_element
  _Freezed freeze(Savings saving) {
    return _Freezed(
      saving,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SavingsActorEvent = _$SavingsActorEventTearOff();

/// @nodoc
mixin _$SavingsActorEvent {
  Savings get saving;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unlockSavings(Savings saving),
    @required Result forceUnlockSavings(Savings saving),
    @required Result deleteUnlocked(Savings saving),
    @required Result hide(Savings saving),
    @required Result freeze(Savings saving),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unlockSavings(Savings saving),
    Result forceUnlockSavings(Savings saving),
    Result deleteUnlocked(Savings saving),
    Result hide(Savings saving),
    Result freeze(Savings saving),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unlockSavings(_UnlockSavings value),
    @required Result forceUnlockSavings(_ForceUnlockSavings value),
    @required Result deleteUnlocked(_DeleteUnlock value),
    @required Result hide(_Hide value),
    @required Result freeze(_Freezed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unlockSavings(_UnlockSavings value),
    Result forceUnlockSavings(_ForceUnlockSavings value),
    Result deleteUnlocked(_DeleteUnlock value),
    Result hide(_Hide value),
    Result freeze(_Freezed value),
    @required Result orElse(),
  });

  $SavingsActorEventCopyWith<SavingsActorEvent> get copyWith;
}

/// @nodoc
abstract class $SavingsActorEventCopyWith<$Res> {
  factory $SavingsActorEventCopyWith(
          SavingsActorEvent value, $Res Function(SavingsActorEvent) then) =
      _$SavingsActorEventCopyWithImpl<$Res>;
  $Res call({Savings saving});

  $SavingsCopyWith<$Res> get saving;
}

/// @nodoc
class _$SavingsActorEventCopyWithImpl<$Res>
    implements $SavingsActorEventCopyWith<$Res> {
  _$SavingsActorEventCopyWithImpl(this._value, this._then);

  final SavingsActorEvent _value;
  // ignore: unused_field
  final $Res Function(SavingsActorEvent) _then;

  @override
  $Res call({
    Object saving = freezed,
  }) {
    return _then(_value.copyWith(
      saving: saving == freezed ? _value.saving : saving as Savings,
    ));
  }

  @override
  $SavingsCopyWith<$Res> get saving {
    if (_value.saving == null) {
      return null;
    }
    return $SavingsCopyWith<$Res>(_value.saving, (value) {
      return _then(_value.copyWith(saving: value));
    });
  }
}

/// @nodoc
abstract class _$UnlockSavingsCopyWith<$Res>
    implements $SavingsActorEventCopyWith<$Res> {
  factory _$UnlockSavingsCopyWith(
          _UnlockSavings value, $Res Function(_UnlockSavings) then) =
      __$UnlockSavingsCopyWithImpl<$Res>;
  @override
  $Res call({Savings saving});

  @override
  $SavingsCopyWith<$Res> get saving;
}

/// @nodoc
class __$UnlockSavingsCopyWithImpl<$Res>
    extends _$SavingsActorEventCopyWithImpl<$Res>
    implements _$UnlockSavingsCopyWith<$Res> {
  __$UnlockSavingsCopyWithImpl(
      _UnlockSavings _value, $Res Function(_UnlockSavings) _then)
      : super(_value, (v) => _then(v as _UnlockSavings));

  @override
  _UnlockSavings get _value => super._value as _UnlockSavings;

  @override
  $Res call({
    Object saving = freezed,
  }) {
    return _then(_UnlockSavings(
      saving == freezed ? _value.saving : saving as Savings,
    ));
  }
}

/// @nodoc
class _$_UnlockSavings implements _UnlockSavings {
  const _$_UnlockSavings(this.saving) : assert(saving != null);

  @override
  final Savings saving;

  @override
  String toString() {
    return 'SavingsActorEvent.unlockSavings(saving: $saving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnlockSavings &&
            (identical(other.saving, saving) ||
                const DeepCollectionEquality().equals(other.saving, saving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(saving);

  @override
  _$UnlockSavingsCopyWith<_UnlockSavings> get copyWith =>
      __$UnlockSavingsCopyWithImpl<_UnlockSavings>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unlockSavings(Savings saving),
    @required Result forceUnlockSavings(Savings saving),
    @required Result deleteUnlocked(Savings saving),
    @required Result hide(Savings saving),
    @required Result freeze(Savings saving),
  }) {
    assert(unlockSavings != null);
    assert(forceUnlockSavings != null);
    assert(deleteUnlocked != null);
    assert(hide != null);
    assert(freeze != null);
    return unlockSavings(saving);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unlockSavings(Savings saving),
    Result forceUnlockSavings(Savings saving),
    Result deleteUnlocked(Savings saving),
    Result hide(Savings saving),
    Result freeze(Savings saving),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unlockSavings != null) {
      return unlockSavings(saving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unlockSavings(_UnlockSavings value),
    @required Result forceUnlockSavings(_ForceUnlockSavings value),
    @required Result deleteUnlocked(_DeleteUnlock value),
    @required Result hide(_Hide value),
    @required Result freeze(_Freezed value),
  }) {
    assert(unlockSavings != null);
    assert(forceUnlockSavings != null);
    assert(deleteUnlocked != null);
    assert(hide != null);
    assert(freeze != null);
    return unlockSavings(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unlockSavings(_UnlockSavings value),
    Result forceUnlockSavings(_ForceUnlockSavings value),
    Result deleteUnlocked(_DeleteUnlock value),
    Result hide(_Hide value),
    Result freeze(_Freezed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unlockSavings != null) {
      return unlockSavings(this);
    }
    return orElse();
  }
}

abstract class _UnlockSavings implements SavingsActorEvent {
  const factory _UnlockSavings(Savings saving) = _$_UnlockSavings;

  @override
  Savings get saving;
  @override
  _$UnlockSavingsCopyWith<_UnlockSavings> get copyWith;
}

/// @nodoc
abstract class _$ForceUnlockSavingsCopyWith<$Res>
    implements $SavingsActorEventCopyWith<$Res> {
  factory _$ForceUnlockSavingsCopyWith(
          _ForceUnlockSavings value, $Res Function(_ForceUnlockSavings) then) =
      __$ForceUnlockSavingsCopyWithImpl<$Res>;
  @override
  $Res call({Savings saving});

  @override
  $SavingsCopyWith<$Res> get saving;
}

/// @nodoc
class __$ForceUnlockSavingsCopyWithImpl<$Res>
    extends _$SavingsActorEventCopyWithImpl<$Res>
    implements _$ForceUnlockSavingsCopyWith<$Res> {
  __$ForceUnlockSavingsCopyWithImpl(
      _ForceUnlockSavings _value, $Res Function(_ForceUnlockSavings) _then)
      : super(_value, (v) => _then(v as _ForceUnlockSavings));

  @override
  _ForceUnlockSavings get _value => super._value as _ForceUnlockSavings;

  @override
  $Res call({
    Object saving = freezed,
  }) {
    return _then(_ForceUnlockSavings(
      saving == freezed ? _value.saving : saving as Savings,
    ));
  }
}

/// @nodoc
class _$_ForceUnlockSavings implements _ForceUnlockSavings {
  const _$_ForceUnlockSavings(this.saving) : assert(saving != null);

  @override
  final Savings saving;

  @override
  String toString() {
    return 'SavingsActorEvent.forceUnlockSavings(saving: $saving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForceUnlockSavings &&
            (identical(other.saving, saving) ||
                const DeepCollectionEquality().equals(other.saving, saving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(saving);

  @override
  _$ForceUnlockSavingsCopyWith<_ForceUnlockSavings> get copyWith =>
      __$ForceUnlockSavingsCopyWithImpl<_ForceUnlockSavings>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unlockSavings(Savings saving),
    @required Result forceUnlockSavings(Savings saving),
    @required Result deleteUnlocked(Savings saving),
    @required Result hide(Savings saving),
    @required Result freeze(Savings saving),
  }) {
    assert(unlockSavings != null);
    assert(forceUnlockSavings != null);
    assert(deleteUnlocked != null);
    assert(hide != null);
    assert(freeze != null);
    return forceUnlockSavings(saving);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unlockSavings(Savings saving),
    Result forceUnlockSavings(Savings saving),
    Result deleteUnlocked(Savings saving),
    Result hide(Savings saving),
    Result freeze(Savings saving),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forceUnlockSavings != null) {
      return forceUnlockSavings(saving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unlockSavings(_UnlockSavings value),
    @required Result forceUnlockSavings(_ForceUnlockSavings value),
    @required Result deleteUnlocked(_DeleteUnlock value),
    @required Result hide(_Hide value),
    @required Result freeze(_Freezed value),
  }) {
    assert(unlockSavings != null);
    assert(forceUnlockSavings != null);
    assert(deleteUnlocked != null);
    assert(hide != null);
    assert(freeze != null);
    return forceUnlockSavings(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unlockSavings(_UnlockSavings value),
    Result forceUnlockSavings(_ForceUnlockSavings value),
    Result deleteUnlocked(_DeleteUnlock value),
    Result hide(_Hide value),
    Result freeze(_Freezed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (forceUnlockSavings != null) {
      return forceUnlockSavings(this);
    }
    return orElse();
  }
}

abstract class _ForceUnlockSavings implements SavingsActorEvent {
  const factory _ForceUnlockSavings(Savings saving) = _$_ForceUnlockSavings;

  @override
  Savings get saving;
  @override
  _$ForceUnlockSavingsCopyWith<_ForceUnlockSavings> get copyWith;
}

/// @nodoc
abstract class _$DeleteUnlockCopyWith<$Res>
    implements $SavingsActorEventCopyWith<$Res> {
  factory _$DeleteUnlockCopyWith(
          _DeleteUnlock value, $Res Function(_DeleteUnlock) then) =
      __$DeleteUnlockCopyWithImpl<$Res>;
  @override
  $Res call({Savings saving});

  @override
  $SavingsCopyWith<$Res> get saving;
}

/// @nodoc
class __$DeleteUnlockCopyWithImpl<$Res>
    extends _$SavingsActorEventCopyWithImpl<$Res>
    implements _$DeleteUnlockCopyWith<$Res> {
  __$DeleteUnlockCopyWithImpl(
      _DeleteUnlock _value, $Res Function(_DeleteUnlock) _then)
      : super(_value, (v) => _then(v as _DeleteUnlock));

  @override
  _DeleteUnlock get _value => super._value as _DeleteUnlock;

  @override
  $Res call({
    Object saving = freezed,
  }) {
    return _then(_DeleteUnlock(
      saving == freezed ? _value.saving : saving as Savings,
    ));
  }
}

/// @nodoc
class _$_DeleteUnlock implements _DeleteUnlock {
  const _$_DeleteUnlock(this.saving) : assert(saving != null);

  @override
  final Savings saving;

  @override
  String toString() {
    return 'SavingsActorEvent.deleteUnlocked(saving: $saving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteUnlock &&
            (identical(other.saving, saving) ||
                const DeepCollectionEquality().equals(other.saving, saving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(saving);

  @override
  _$DeleteUnlockCopyWith<_DeleteUnlock> get copyWith =>
      __$DeleteUnlockCopyWithImpl<_DeleteUnlock>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unlockSavings(Savings saving),
    @required Result forceUnlockSavings(Savings saving),
    @required Result deleteUnlocked(Savings saving),
    @required Result hide(Savings saving),
    @required Result freeze(Savings saving),
  }) {
    assert(unlockSavings != null);
    assert(forceUnlockSavings != null);
    assert(deleteUnlocked != null);
    assert(hide != null);
    assert(freeze != null);
    return deleteUnlocked(saving);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unlockSavings(Savings saving),
    Result forceUnlockSavings(Savings saving),
    Result deleteUnlocked(Savings saving),
    Result hide(Savings saving),
    Result freeze(Savings saving),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteUnlocked != null) {
      return deleteUnlocked(saving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unlockSavings(_UnlockSavings value),
    @required Result forceUnlockSavings(_ForceUnlockSavings value),
    @required Result deleteUnlocked(_DeleteUnlock value),
    @required Result hide(_Hide value),
    @required Result freeze(_Freezed value),
  }) {
    assert(unlockSavings != null);
    assert(forceUnlockSavings != null);
    assert(deleteUnlocked != null);
    assert(hide != null);
    assert(freeze != null);
    return deleteUnlocked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unlockSavings(_UnlockSavings value),
    Result forceUnlockSavings(_ForceUnlockSavings value),
    Result deleteUnlocked(_DeleteUnlock value),
    Result hide(_Hide value),
    Result freeze(_Freezed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteUnlocked != null) {
      return deleteUnlocked(this);
    }
    return orElse();
  }
}

abstract class _DeleteUnlock implements SavingsActorEvent {
  const factory _DeleteUnlock(Savings saving) = _$_DeleteUnlock;

  @override
  Savings get saving;
  @override
  _$DeleteUnlockCopyWith<_DeleteUnlock> get copyWith;
}

/// @nodoc
abstract class _$HideCopyWith<$Res>
    implements $SavingsActorEventCopyWith<$Res> {
  factory _$HideCopyWith(_Hide value, $Res Function(_Hide) then) =
      __$HideCopyWithImpl<$Res>;
  @override
  $Res call({Savings saving});

  @override
  $SavingsCopyWith<$Res> get saving;
}

/// @nodoc
class __$HideCopyWithImpl<$Res> extends _$SavingsActorEventCopyWithImpl<$Res>
    implements _$HideCopyWith<$Res> {
  __$HideCopyWithImpl(_Hide _value, $Res Function(_Hide) _then)
      : super(_value, (v) => _then(v as _Hide));

  @override
  _Hide get _value => super._value as _Hide;

  @override
  $Res call({
    Object saving = freezed,
  }) {
    return _then(_Hide(
      saving == freezed ? _value.saving : saving as Savings,
    ));
  }
}

/// @nodoc
class _$_Hide implements _Hide {
  const _$_Hide(this.saving) : assert(saving != null);

  @override
  final Savings saving;

  @override
  String toString() {
    return 'SavingsActorEvent.hide(saving: $saving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hide &&
            (identical(other.saving, saving) ||
                const DeepCollectionEquality().equals(other.saving, saving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(saving);

  @override
  _$HideCopyWith<_Hide> get copyWith =>
      __$HideCopyWithImpl<_Hide>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unlockSavings(Savings saving),
    @required Result forceUnlockSavings(Savings saving),
    @required Result deleteUnlocked(Savings saving),
    @required Result hide(Savings saving),
    @required Result freeze(Savings saving),
  }) {
    assert(unlockSavings != null);
    assert(forceUnlockSavings != null);
    assert(deleteUnlocked != null);
    assert(hide != null);
    assert(freeze != null);
    return hide(saving);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unlockSavings(Savings saving),
    Result forceUnlockSavings(Savings saving),
    Result deleteUnlocked(Savings saving),
    Result hide(Savings saving),
    Result freeze(Savings saving),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hide != null) {
      return hide(saving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unlockSavings(_UnlockSavings value),
    @required Result forceUnlockSavings(_ForceUnlockSavings value),
    @required Result deleteUnlocked(_DeleteUnlock value),
    @required Result hide(_Hide value),
    @required Result freeze(_Freezed value),
  }) {
    assert(unlockSavings != null);
    assert(forceUnlockSavings != null);
    assert(deleteUnlocked != null);
    assert(hide != null);
    assert(freeze != null);
    return hide(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unlockSavings(_UnlockSavings value),
    Result forceUnlockSavings(_ForceUnlockSavings value),
    Result deleteUnlocked(_DeleteUnlock value),
    Result hide(_Hide value),
    Result freeze(_Freezed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hide != null) {
      return hide(this);
    }
    return orElse();
  }
}

abstract class _Hide implements SavingsActorEvent {
  const factory _Hide(Savings saving) = _$_Hide;

  @override
  Savings get saving;
  @override
  _$HideCopyWith<_Hide> get copyWith;
}

/// @nodoc
abstract class _$FreezedCopyWith<$Res>
    implements $SavingsActorEventCopyWith<$Res> {
  factory _$FreezedCopyWith(_Freezed value, $Res Function(_Freezed) then) =
      __$FreezedCopyWithImpl<$Res>;
  @override
  $Res call({Savings saving});

  @override
  $SavingsCopyWith<$Res> get saving;
}

/// @nodoc
class __$FreezedCopyWithImpl<$Res> extends _$SavingsActorEventCopyWithImpl<$Res>
    implements _$FreezedCopyWith<$Res> {
  __$FreezedCopyWithImpl(_Freezed _value, $Res Function(_Freezed) _then)
      : super(_value, (v) => _then(v as _Freezed));

  @override
  _Freezed get _value => super._value as _Freezed;

  @override
  $Res call({
    Object saving = freezed,
  }) {
    return _then(_Freezed(
      saving == freezed ? _value.saving : saving as Savings,
    ));
  }
}

/// @nodoc
class _$_Freezed implements _Freezed {
  const _$_Freezed(this.saving) : assert(saving != null);

  @override
  final Savings saving;

  @override
  String toString() {
    return 'SavingsActorEvent.freeze(saving: $saving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Freezed &&
            (identical(other.saving, saving) ||
                const DeepCollectionEquality().equals(other.saving, saving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(saving);

  @override
  _$FreezedCopyWith<_Freezed> get copyWith =>
      __$FreezedCopyWithImpl<_Freezed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unlockSavings(Savings saving),
    @required Result forceUnlockSavings(Savings saving),
    @required Result deleteUnlocked(Savings saving),
    @required Result hide(Savings saving),
    @required Result freeze(Savings saving),
  }) {
    assert(unlockSavings != null);
    assert(forceUnlockSavings != null);
    assert(deleteUnlocked != null);
    assert(hide != null);
    assert(freeze != null);
    return freeze(saving);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unlockSavings(Savings saving),
    Result forceUnlockSavings(Savings saving),
    Result deleteUnlocked(Savings saving),
    Result hide(Savings saving),
    Result freeze(Savings saving),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (freeze != null) {
      return freeze(saving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unlockSavings(_UnlockSavings value),
    @required Result forceUnlockSavings(_ForceUnlockSavings value),
    @required Result deleteUnlocked(_DeleteUnlock value),
    @required Result hide(_Hide value),
    @required Result freeze(_Freezed value),
  }) {
    assert(unlockSavings != null);
    assert(forceUnlockSavings != null);
    assert(deleteUnlocked != null);
    assert(hide != null);
    assert(freeze != null);
    return freeze(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unlockSavings(_UnlockSavings value),
    Result forceUnlockSavings(_ForceUnlockSavings value),
    Result deleteUnlocked(_DeleteUnlock value),
    Result hide(_Hide value),
    Result freeze(_Freezed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (freeze != null) {
      return freeze(this);
    }
    return orElse();
  }
}

abstract class _Freezed implements SavingsActorEvent {
  const factory _Freezed(Savings saving) = _$_Freezed;

  @override
  Savings get saving;
  @override
  _$FreezedCopyWith<_Freezed> get copyWith;
}

/// @nodoc
class _$SavingsActorStateTearOff {
  const _$SavingsActorStateTearOff();

// ignore: unused_element
  _SavingsActorState call(
      {@required
          bool isSaving,
      @required
          Option<Either<SavingsFailure, Unit>> saveFailureOrSuccessOption}) {
    return _SavingsActorState(
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SavingsActorState = _$SavingsActorStateTearOff();

/// @nodoc
mixin _$SavingsActorState {
  bool get isSaving;
  Option<Either<SavingsFailure, Unit>> get saveFailureOrSuccessOption;

  $SavingsActorStateCopyWith<SavingsActorState> get copyWith;
}

/// @nodoc
abstract class $SavingsActorStateCopyWith<$Res> {
  factory $SavingsActorStateCopyWith(
          SavingsActorState value, $Res Function(SavingsActorState) then) =
      _$SavingsActorStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSaving,
      Option<Either<SavingsFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$SavingsActorStateCopyWithImpl<$Res>
    implements $SavingsActorStateCopyWith<$Res> {
  _$SavingsActorStateCopyWithImpl(this._value, this._then);

  final SavingsActorState _value;
  // ignore: unused_field
  final $Res Function(SavingsActorState) _then;

  @override
  $Res call({
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<SavingsFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SavingsActorStateCopyWith<$Res>
    implements $SavingsActorStateCopyWith<$Res> {
  factory _$SavingsActorStateCopyWith(
          _SavingsActorState value, $Res Function(_SavingsActorState) then) =
      __$SavingsActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSaving,
      Option<Either<SavingsFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$SavingsActorStateCopyWithImpl<$Res>
    extends _$SavingsActorStateCopyWithImpl<$Res>
    implements _$SavingsActorStateCopyWith<$Res> {
  __$SavingsActorStateCopyWithImpl(
      _SavingsActorState _value, $Res Function(_SavingsActorState) _then)
      : super(_value, (v) => _then(v as _SavingsActorState));

  @override
  _SavingsActorState get _value => super._value as _SavingsActorState;

  @override
  $Res call({
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_SavingsActorState(
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<SavingsFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SavingsActorState extends _SavingsActorState {
  _$_SavingsActorState(
      {@required this.isSaving, @required this.saveFailureOrSuccessOption})
      : assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null),
        super._();

  @override
  final bool isSaving;
  @override
  final Option<Either<SavingsFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'SavingsActorState(isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SavingsActorState &&
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
  _$SavingsActorStateCopyWith<_SavingsActorState> get copyWith =>
      __$SavingsActorStateCopyWithImpl<_SavingsActorState>(this, _$identity);
}

abstract class _SavingsActorState extends SavingsActorState {
  _SavingsActorState._() : super._();
  factory _SavingsActorState(
      {@required
          bool isSaving,
      @required
          Option<Either<SavingsFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_SavingsActorState;

  @override
  bool get isSaving;
  @override
  Option<Either<SavingsFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$SavingsActorStateCopyWith<_SavingsActorState> get copyWith;
}
