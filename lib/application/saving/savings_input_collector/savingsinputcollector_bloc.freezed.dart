// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'savingsinputcollector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SavingsInputCollectorEventTearOff {
  const _$SavingsInputCollectorEventTearOff();

// ignore: unused_element
  _Initialized initilized(Savings saving) {
    return _Initialized(
      saving,
    );
  }

// ignore: unused_element
  _AmountChanged amountChanged({@required MoneyAmount amount}) {
    return _AmountChanged(
      amount: amount,
    );
  }

// ignore: unused_element
  _WithDrawalDateChanged withdrawalDataChanged({@required ValidDate date}) {
    return _WithDrawalDateChanged(
      date: date,
    );
  }

// ignore: unused_element
  _AccountNameChanged accountNameChanged({@required AccountName name}) {
    return _AccountNameChanged(
      name: name,
    );
  }

// ignore: unused_element
  _AddMoneyToSavingsE addMoneyToSavings({@required Savings savings}) {
    return _AddMoneyToSavingsE(
      savings: savings,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }

// ignore: unused_element
  _AddAmountChanged addAmountChanged({@required MoneyAmount addedAmount}) {
    return _AddAmountChanged(
      addedAmount: addedAmount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SavingsInputCollectorEvent = _$SavingsInputCollectorEventTearOff();

/// @nodoc
mixin _$SavingsInputCollectorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initilized(Savings saving),
    @required Result amountChanged(MoneyAmount amount),
    @required Result withdrawalDataChanged(ValidDate date),
    @required Result accountNameChanged(AccountName name),
    @required Result addMoneyToSavings(Savings savings),
    @required Result submitted(),
    @required Result addAmountChanged(MoneyAmount addedAmount),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initilized(Savings saving),
    Result amountChanged(MoneyAmount amount),
    Result withdrawalDataChanged(ValidDate date),
    Result accountNameChanged(AccountName name),
    Result addMoneyToSavings(Savings savings),
    Result submitted(),
    Result addAmountChanged(MoneyAmount addedAmount),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initilized(_Initialized value),
    @required Result amountChanged(_AmountChanged value),
    @required Result withdrawalDataChanged(_WithDrawalDateChanged value),
    @required Result accountNameChanged(_AccountNameChanged value),
    @required Result addMoneyToSavings(_AddMoneyToSavingsE value),
    @required Result submitted(_Submitted value),
    @required Result addAmountChanged(_AddAmountChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initilized(_Initialized value),
    Result amountChanged(_AmountChanged value),
    Result withdrawalDataChanged(_WithDrawalDateChanged value),
    Result accountNameChanged(_AccountNameChanged value),
    Result addMoneyToSavings(_AddMoneyToSavingsE value),
    Result submitted(_Submitted value),
    Result addAmountChanged(_AddAmountChanged value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SavingsInputCollectorEventCopyWith<$Res> {
  factory $SavingsInputCollectorEventCopyWith(SavingsInputCollectorEvent value,
          $Res Function(SavingsInputCollectorEvent) then) =
      _$SavingsInputCollectorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavingsInputCollectorEventCopyWithImpl<$Res>
    implements $SavingsInputCollectorEventCopyWith<$Res> {
  _$SavingsInputCollectorEventCopyWithImpl(this._value, this._then);

  final SavingsInputCollectorEvent _value;
  // ignore: unused_field
  final $Res Function(SavingsInputCollectorEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Savings saving});

  $SavingsCopyWith<$Res> get saving;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$SavingsInputCollectorEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object saving = freezed,
  }) {
    return _then(_Initialized(
      saving == freezed ? _value.saving : saving as Savings,
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
class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.saving) : assert(saving != null);

  @override
  final Savings saving;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavingsInputCollectorEvent.initilized(saving: $saving)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SavingsInputCollectorEvent.initilized'))
      ..add(DiagnosticsProperty('saving', saving));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.saving, saving) ||
                const DeepCollectionEquality().equals(other.saving, saving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(saving);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initilized(Savings saving),
    @required Result amountChanged(MoneyAmount amount),
    @required Result withdrawalDataChanged(ValidDate date),
    @required Result accountNameChanged(AccountName name),
    @required Result addMoneyToSavings(Savings savings),
    @required Result submitted(),
    @required Result addAmountChanged(MoneyAmount addedAmount),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return initilized(saving);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initilized(Savings saving),
    Result amountChanged(MoneyAmount amount),
    Result withdrawalDataChanged(ValidDate date),
    Result accountNameChanged(AccountName name),
    Result addMoneyToSavings(Savings savings),
    Result submitted(),
    Result addAmountChanged(MoneyAmount addedAmount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initilized != null) {
      return initilized(saving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initilized(_Initialized value),
    @required Result amountChanged(_AmountChanged value),
    @required Result withdrawalDataChanged(_WithDrawalDateChanged value),
    @required Result accountNameChanged(_AccountNameChanged value),
    @required Result addMoneyToSavings(_AddMoneyToSavingsE value),
    @required Result submitted(_Submitted value),
    @required Result addAmountChanged(_AddAmountChanged value),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return initilized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initilized(_Initialized value),
    Result amountChanged(_AmountChanged value),
    Result withdrawalDataChanged(_WithDrawalDateChanged value),
    Result accountNameChanged(_AccountNameChanged value),
    Result addMoneyToSavings(_AddMoneyToSavingsE value),
    Result submitted(_Submitted value),
    Result addAmountChanged(_AddAmountChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initilized != null) {
      return initilized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SavingsInputCollectorEvent {
  const factory _Initialized(Savings saving) = _$_Initialized;

  Savings get saving;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$AmountChangedCopyWith<$Res> {
  factory _$AmountChangedCopyWith(
          _AmountChanged value, $Res Function(_AmountChanged) then) =
      __$AmountChangedCopyWithImpl<$Res>;
  $Res call({MoneyAmount amount});
}

/// @nodoc
class __$AmountChangedCopyWithImpl<$Res>
    extends _$SavingsInputCollectorEventCopyWithImpl<$Res>
    implements _$AmountChangedCopyWith<$Res> {
  __$AmountChangedCopyWithImpl(
      _AmountChanged _value, $Res Function(_AmountChanged) _then)
      : super(_value, (v) => _then(v as _AmountChanged));

  @override
  _AmountChanged get _value => super._value as _AmountChanged;

  @override
  $Res call({
    Object amount = freezed,
  }) {
    return _then(_AmountChanged(
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
    ));
  }
}

/// @nodoc
class _$_AmountChanged with DiagnosticableTreeMixin implements _AmountChanged {
  const _$_AmountChanged({@required this.amount}) : assert(amount != null);

  @override
  final MoneyAmount amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavingsInputCollectorEvent.amountChanged(amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SavingsInputCollectorEvent.amountChanged'))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AmountChanged &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @override
  _$AmountChangedCopyWith<_AmountChanged> get copyWith =>
      __$AmountChangedCopyWithImpl<_AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initilized(Savings saving),
    @required Result amountChanged(MoneyAmount amount),
    @required Result withdrawalDataChanged(ValidDate date),
    @required Result accountNameChanged(AccountName name),
    @required Result addMoneyToSavings(Savings savings),
    @required Result submitted(),
    @required Result addAmountChanged(MoneyAmount addedAmount),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initilized(Savings saving),
    Result amountChanged(MoneyAmount amount),
    Result withdrawalDataChanged(ValidDate date),
    Result accountNameChanged(AccountName name),
    Result addMoneyToSavings(Savings savings),
    Result submitted(),
    Result addAmountChanged(MoneyAmount addedAmount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (amountChanged != null) {
      return amountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initilized(_Initialized value),
    @required Result amountChanged(_AmountChanged value),
    @required Result withdrawalDataChanged(_WithDrawalDateChanged value),
    @required Result accountNameChanged(_AccountNameChanged value),
    @required Result addMoneyToSavings(_AddMoneyToSavingsE value),
    @required Result submitted(_Submitted value),
    @required Result addAmountChanged(_AddAmountChanged value),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initilized(_Initialized value),
    Result amountChanged(_AmountChanged value),
    Result withdrawalDataChanged(_WithDrawalDateChanged value),
    Result accountNameChanged(_AccountNameChanged value),
    Result addMoneyToSavings(_AddMoneyToSavingsE value),
    Result submitted(_Submitted value),
    Result addAmountChanged(_AddAmountChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountChanged implements SavingsInputCollectorEvent {
  const factory _AmountChanged({@required MoneyAmount amount}) =
      _$_AmountChanged;

  MoneyAmount get amount;
  _$AmountChangedCopyWith<_AmountChanged> get copyWith;
}

/// @nodoc
abstract class _$WithDrawalDateChangedCopyWith<$Res> {
  factory _$WithDrawalDateChangedCopyWith(_WithDrawalDateChanged value,
          $Res Function(_WithDrawalDateChanged) then) =
      __$WithDrawalDateChangedCopyWithImpl<$Res>;
  $Res call({ValidDate date});
}

/// @nodoc
class __$WithDrawalDateChangedCopyWithImpl<$Res>
    extends _$SavingsInputCollectorEventCopyWithImpl<$Res>
    implements _$WithDrawalDateChangedCopyWith<$Res> {
  __$WithDrawalDateChangedCopyWithImpl(_WithDrawalDateChanged _value,
      $Res Function(_WithDrawalDateChanged) _then)
      : super(_value, (v) => _then(v as _WithDrawalDateChanged));

  @override
  _WithDrawalDateChanged get _value => super._value as _WithDrawalDateChanged;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_WithDrawalDateChanged(
      date: date == freezed ? _value.date : date as ValidDate,
    ));
  }
}

/// @nodoc
class _$_WithDrawalDateChanged
    with DiagnosticableTreeMixin
    implements _WithDrawalDateChanged {
  const _$_WithDrawalDateChanged({@required this.date}) : assert(date != null);

  @override
  final ValidDate date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavingsInputCollectorEvent.withdrawalDataChanged(date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SavingsInputCollectorEvent.withdrawalDataChanged'))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WithDrawalDateChanged &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @override
  _$WithDrawalDateChangedCopyWith<_WithDrawalDateChanged> get copyWith =>
      __$WithDrawalDateChangedCopyWithImpl<_WithDrawalDateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initilized(Savings saving),
    @required Result amountChanged(MoneyAmount amount),
    @required Result withdrawalDataChanged(ValidDate date),
    @required Result accountNameChanged(AccountName name),
    @required Result addMoneyToSavings(Savings savings),
    @required Result submitted(),
    @required Result addAmountChanged(MoneyAmount addedAmount),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return withdrawalDataChanged(date);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initilized(Savings saving),
    Result amountChanged(MoneyAmount amount),
    Result withdrawalDataChanged(ValidDate date),
    Result accountNameChanged(AccountName name),
    Result addMoneyToSavings(Savings savings),
    Result submitted(),
    Result addAmountChanged(MoneyAmount addedAmount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (withdrawalDataChanged != null) {
      return withdrawalDataChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initilized(_Initialized value),
    @required Result amountChanged(_AmountChanged value),
    @required Result withdrawalDataChanged(_WithDrawalDateChanged value),
    @required Result accountNameChanged(_AccountNameChanged value),
    @required Result addMoneyToSavings(_AddMoneyToSavingsE value),
    @required Result submitted(_Submitted value),
    @required Result addAmountChanged(_AddAmountChanged value),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return withdrawalDataChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initilized(_Initialized value),
    Result amountChanged(_AmountChanged value),
    Result withdrawalDataChanged(_WithDrawalDateChanged value),
    Result accountNameChanged(_AccountNameChanged value),
    Result addMoneyToSavings(_AddMoneyToSavingsE value),
    Result submitted(_Submitted value),
    Result addAmountChanged(_AddAmountChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (withdrawalDataChanged != null) {
      return withdrawalDataChanged(this);
    }
    return orElse();
  }
}

abstract class _WithDrawalDateChanged implements SavingsInputCollectorEvent {
  const factory _WithDrawalDateChanged({@required ValidDate date}) =
      _$_WithDrawalDateChanged;

  ValidDate get date;
  _$WithDrawalDateChangedCopyWith<_WithDrawalDateChanged> get copyWith;
}

/// @nodoc
abstract class _$AccountNameChangedCopyWith<$Res> {
  factory _$AccountNameChangedCopyWith(
          _AccountNameChanged value, $Res Function(_AccountNameChanged) then) =
      __$AccountNameChangedCopyWithImpl<$Res>;
  $Res call({AccountName name});
}

/// @nodoc
class __$AccountNameChangedCopyWithImpl<$Res>
    extends _$SavingsInputCollectorEventCopyWithImpl<$Res>
    implements _$AccountNameChangedCopyWith<$Res> {
  __$AccountNameChangedCopyWithImpl(
      _AccountNameChanged _value, $Res Function(_AccountNameChanged) _then)
      : super(_value, (v) => _then(v as _AccountNameChanged));

  @override
  _AccountNameChanged get _value => super._value as _AccountNameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_AccountNameChanged(
      name: name == freezed ? _value.name : name as AccountName,
    ));
  }
}

/// @nodoc
class _$_AccountNameChanged
    with DiagnosticableTreeMixin
    implements _AccountNameChanged {
  const _$_AccountNameChanged({@required this.name}) : assert(name != null);

  @override
  final AccountName name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavingsInputCollectorEvent.accountNameChanged(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SavingsInputCollectorEvent.accountNameChanged'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountNameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$AccountNameChangedCopyWith<_AccountNameChanged> get copyWith =>
      __$AccountNameChangedCopyWithImpl<_AccountNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initilized(Savings saving),
    @required Result amountChanged(MoneyAmount amount),
    @required Result withdrawalDataChanged(ValidDate date),
    @required Result accountNameChanged(AccountName name),
    @required Result addMoneyToSavings(Savings savings),
    @required Result submitted(),
    @required Result addAmountChanged(MoneyAmount addedAmount),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return accountNameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initilized(Savings saving),
    Result amountChanged(MoneyAmount amount),
    Result withdrawalDataChanged(ValidDate date),
    Result accountNameChanged(AccountName name),
    Result addMoneyToSavings(Savings savings),
    Result submitted(),
    Result addAmountChanged(MoneyAmount addedAmount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountNameChanged != null) {
      return accountNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initilized(_Initialized value),
    @required Result amountChanged(_AmountChanged value),
    @required Result withdrawalDataChanged(_WithDrawalDateChanged value),
    @required Result accountNameChanged(_AccountNameChanged value),
    @required Result addMoneyToSavings(_AddMoneyToSavingsE value),
    @required Result submitted(_Submitted value),
    @required Result addAmountChanged(_AddAmountChanged value),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return accountNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initilized(_Initialized value),
    Result amountChanged(_AmountChanged value),
    Result withdrawalDataChanged(_WithDrawalDateChanged value),
    Result accountNameChanged(_AccountNameChanged value),
    Result addMoneyToSavings(_AddMoneyToSavingsE value),
    Result submitted(_Submitted value),
    Result addAmountChanged(_AddAmountChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountNameChanged != null) {
      return accountNameChanged(this);
    }
    return orElse();
  }
}

abstract class _AccountNameChanged implements SavingsInputCollectorEvent {
  const factory _AccountNameChanged({@required AccountName name}) =
      _$_AccountNameChanged;

  AccountName get name;
  _$AccountNameChangedCopyWith<_AccountNameChanged> get copyWith;
}

/// @nodoc
abstract class _$AddMoneyToSavingsECopyWith<$Res> {
  factory _$AddMoneyToSavingsECopyWith(
          _AddMoneyToSavingsE value, $Res Function(_AddMoneyToSavingsE) then) =
      __$AddMoneyToSavingsECopyWithImpl<$Res>;
  $Res call({Savings savings});

  $SavingsCopyWith<$Res> get savings;
}

/// @nodoc
class __$AddMoneyToSavingsECopyWithImpl<$Res>
    extends _$SavingsInputCollectorEventCopyWithImpl<$Res>
    implements _$AddMoneyToSavingsECopyWith<$Res> {
  __$AddMoneyToSavingsECopyWithImpl(
      _AddMoneyToSavingsE _value, $Res Function(_AddMoneyToSavingsE) _then)
      : super(_value, (v) => _then(v as _AddMoneyToSavingsE));

  @override
  _AddMoneyToSavingsE get _value => super._value as _AddMoneyToSavingsE;

  @override
  $Res call({
    Object savings = freezed,
  }) {
    return _then(_AddMoneyToSavingsE(
      savings: savings == freezed ? _value.savings : savings as Savings,
    ));
  }

  @override
  $SavingsCopyWith<$Res> get savings {
    if (_value.savings == null) {
      return null;
    }
    return $SavingsCopyWith<$Res>(_value.savings, (value) {
      return _then(_value.copyWith(savings: value));
    });
  }
}

/// @nodoc
class _$_AddMoneyToSavingsE
    with DiagnosticableTreeMixin
    implements _AddMoneyToSavingsE {
  const _$_AddMoneyToSavingsE({@required this.savings})
      : assert(savings != null);

  @override
  final Savings savings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavingsInputCollectorEvent.addMoneyToSavings(savings: $savings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SavingsInputCollectorEvent.addMoneyToSavings'))
      ..add(DiagnosticsProperty('savings', savings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddMoneyToSavingsE &&
            (identical(other.savings, savings) ||
                const DeepCollectionEquality().equals(other.savings, savings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(savings);

  @override
  _$AddMoneyToSavingsECopyWith<_AddMoneyToSavingsE> get copyWith =>
      __$AddMoneyToSavingsECopyWithImpl<_AddMoneyToSavingsE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initilized(Savings saving),
    @required Result amountChanged(MoneyAmount amount),
    @required Result withdrawalDataChanged(ValidDate date),
    @required Result accountNameChanged(AccountName name),
    @required Result addMoneyToSavings(Savings savings),
    @required Result submitted(),
    @required Result addAmountChanged(MoneyAmount addedAmount),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return addMoneyToSavings(savings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initilized(Savings saving),
    Result amountChanged(MoneyAmount amount),
    Result withdrawalDataChanged(ValidDate date),
    Result accountNameChanged(AccountName name),
    Result addMoneyToSavings(Savings savings),
    Result submitted(),
    Result addAmountChanged(MoneyAmount addedAmount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addMoneyToSavings != null) {
      return addMoneyToSavings(savings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initilized(_Initialized value),
    @required Result amountChanged(_AmountChanged value),
    @required Result withdrawalDataChanged(_WithDrawalDateChanged value),
    @required Result accountNameChanged(_AccountNameChanged value),
    @required Result addMoneyToSavings(_AddMoneyToSavingsE value),
    @required Result submitted(_Submitted value),
    @required Result addAmountChanged(_AddAmountChanged value),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return addMoneyToSavings(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initilized(_Initialized value),
    Result amountChanged(_AmountChanged value),
    Result withdrawalDataChanged(_WithDrawalDateChanged value),
    Result accountNameChanged(_AccountNameChanged value),
    Result addMoneyToSavings(_AddMoneyToSavingsE value),
    Result submitted(_Submitted value),
    Result addAmountChanged(_AddAmountChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addMoneyToSavings != null) {
      return addMoneyToSavings(this);
    }
    return orElse();
  }
}

abstract class _AddMoneyToSavingsE implements SavingsInputCollectorEvent {
  const factory _AddMoneyToSavingsE({@required Savings savings}) =
      _$_AddMoneyToSavingsE;

  Savings get savings;
  _$AddMoneyToSavingsECopyWith<_AddMoneyToSavingsE> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$SavingsInputCollectorEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc
class _$_Submitted with DiagnosticableTreeMixin implements _Submitted {
  const _$_Submitted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavingsInputCollectorEvent.submitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SavingsInputCollectorEvent.submitted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initilized(Savings saving),
    @required Result amountChanged(MoneyAmount amount),
    @required Result withdrawalDataChanged(ValidDate date),
    @required Result accountNameChanged(AccountName name),
    @required Result addMoneyToSavings(Savings savings),
    @required Result submitted(),
    @required Result addAmountChanged(MoneyAmount addedAmount),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initilized(Savings saving),
    Result amountChanged(MoneyAmount amount),
    Result withdrawalDataChanged(ValidDate date),
    Result accountNameChanged(AccountName name),
    Result addMoneyToSavings(Savings savings),
    Result submitted(),
    Result addAmountChanged(MoneyAmount addedAmount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initilized(_Initialized value),
    @required Result amountChanged(_AmountChanged value),
    @required Result withdrawalDataChanged(_WithDrawalDateChanged value),
    @required Result accountNameChanged(_AccountNameChanged value),
    @required Result addMoneyToSavings(_AddMoneyToSavingsE value),
    @required Result submitted(_Submitted value),
    @required Result addAmountChanged(_AddAmountChanged value),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initilized(_Initialized value),
    Result amountChanged(_AmountChanged value),
    Result withdrawalDataChanged(_WithDrawalDateChanged value),
    Result accountNameChanged(_AccountNameChanged value),
    Result addMoneyToSavings(_AddMoneyToSavingsE value),
    Result submitted(_Submitted value),
    Result addAmountChanged(_AddAmountChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements SavingsInputCollectorEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
abstract class _$AddAmountChangedCopyWith<$Res> {
  factory _$AddAmountChangedCopyWith(
          _AddAmountChanged value, $Res Function(_AddAmountChanged) then) =
      __$AddAmountChangedCopyWithImpl<$Res>;
  $Res call({MoneyAmount addedAmount});
}

/// @nodoc
class __$AddAmountChangedCopyWithImpl<$Res>
    extends _$SavingsInputCollectorEventCopyWithImpl<$Res>
    implements _$AddAmountChangedCopyWith<$Res> {
  __$AddAmountChangedCopyWithImpl(
      _AddAmountChanged _value, $Res Function(_AddAmountChanged) _then)
      : super(_value, (v) => _then(v as _AddAmountChanged));

  @override
  _AddAmountChanged get _value => super._value as _AddAmountChanged;

  @override
  $Res call({
    Object addedAmount = freezed,
  }) {
    return _then(_AddAmountChanged(
      addedAmount: addedAmount == freezed
          ? _value.addedAmount
          : addedAmount as MoneyAmount,
    ));
  }
}

/// @nodoc
class _$_AddAmountChanged
    with DiagnosticableTreeMixin
    implements _AddAmountChanged {
  const _$_AddAmountChanged({@required this.addedAmount})
      : assert(addedAmount != null);

  @override
  final MoneyAmount addedAmount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavingsInputCollectorEvent.addAmountChanged(addedAmount: $addedAmount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SavingsInputCollectorEvent.addAmountChanged'))
      ..add(DiagnosticsProperty('addedAmount', addedAmount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddAmountChanged &&
            (identical(other.addedAmount, addedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.addedAmount, addedAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(addedAmount);

  @override
  _$AddAmountChangedCopyWith<_AddAmountChanged> get copyWith =>
      __$AddAmountChangedCopyWithImpl<_AddAmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initilized(Savings saving),
    @required Result amountChanged(MoneyAmount amount),
    @required Result withdrawalDataChanged(ValidDate date),
    @required Result accountNameChanged(AccountName name),
    @required Result addMoneyToSavings(Savings savings),
    @required Result submitted(),
    @required Result addAmountChanged(MoneyAmount addedAmount),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return addAmountChanged(addedAmount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initilized(Savings saving),
    Result amountChanged(MoneyAmount amount),
    Result withdrawalDataChanged(ValidDate date),
    Result accountNameChanged(AccountName name),
    Result addMoneyToSavings(Savings savings),
    Result submitted(),
    Result addAmountChanged(MoneyAmount addedAmount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addAmountChanged != null) {
      return addAmountChanged(addedAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initilized(_Initialized value),
    @required Result amountChanged(_AmountChanged value),
    @required Result withdrawalDataChanged(_WithDrawalDateChanged value),
    @required Result accountNameChanged(_AccountNameChanged value),
    @required Result addMoneyToSavings(_AddMoneyToSavingsE value),
    @required Result submitted(_Submitted value),
    @required Result addAmountChanged(_AddAmountChanged value),
  }) {
    assert(initilized != null);
    assert(amountChanged != null);
    assert(withdrawalDataChanged != null);
    assert(accountNameChanged != null);
    assert(addMoneyToSavings != null);
    assert(submitted != null);
    assert(addAmountChanged != null);
    return addAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initilized(_Initialized value),
    Result amountChanged(_AmountChanged value),
    Result withdrawalDataChanged(_WithDrawalDateChanged value),
    Result accountNameChanged(_AccountNameChanged value),
    Result addMoneyToSavings(_AddMoneyToSavingsE value),
    Result submitted(_Submitted value),
    Result addAmountChanged(_AddAmountChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addAmountChanged != null) {
      return addAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _AddAmountChanged implements SavingsInputCollectorEvent {
  const factory _AddAmountChanged({@required MoneyAmount addedAmount}) =
      _$_AddAmountChanged;

  MoneyAmount get addedAmount;
  _$AddAmountChangedCopyWith<_AddAmountChanged> get copyWith;
}

/// @nodoc
class _$SavingsInputCollectorStateTearOff {
  const _$SavingsInputCollectorStateTearOff();

// ignore: unused_element
  _SavingsInputCollectorState call(
      {@required
          Savings saving,
      @required
          bool showErrorMessage,
      @required
          bool isSaving,
      @required
          bool isEditing,
      @required
          MoneyAmount addedAmount,
      @required
          MoneyAmount amount,
      @required
          ValidDate withDrawalDate,
      @required
          AccountName accountName,
      MoneyAmount amountToAdd,
      @required
          Option<Either<SavingsFailure, Unit>> saveFailureOrSuccessOption}) {
    return _SavingsInputCollectorState(
      saving: saving,
      showErrorMessage: showErrorMessage,
      isSaving: isSaving,
      isEditing: isEditing,
      addedAmount: addedAmount,
      amount: amount,
      withDrawalDate: withDrawalDate,
      accountName: accountName,
      amountToAdd: amountToAdd,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SavingsInputCollectorState = _$SavingsInputCollectorStateTearOff();

/// @nodoc
mixin _$SavingsInputCollectorState {
  Savings get saving;
  bool get showErrorMessage;
  bool get isSaving;
  bool get isEditing;
  MoneyAmount get addedAmount;
  MoneyAmount get amount;
  ValidDate get withDrawalDate;
  AccountName get accountName;
  MoneyAmount get amountToAdd;
  Option<Either<SavingsFailure, Unit>> get saveFailureOrSuccessOption;

  $SavingsInputCollectorStateCopyWith<SavingsInputCollectorState> get copyWith;
}

/// @nodoc
abstract class $SavingsInputCollectorStateCopyWith<$Res> {
  factory $SavingsInputCollectorStateCopyWith(SavingsInputCollectorState value,
          $Res Function(SavingsInputCollectorState) then) =
      _$SavingsInputCollectorStateCopyWithImpl<$Res>;
  $Res call(
      {Savings saving,
      bool showErrorMessage,
      bool isSaving,
      bool isEditing,
      MoneyAmount addedAmount,
      MoneyAmount amount,
      ValidDate withDrawalDate,
      AccountName accountName,
      MoneyAmount amountToAdd,
      Option<Either<SavingsFailure, Unit>> saveFailureOrSuccessOption});

  $SavingsCopyWith<$Res> get saving;
}

/// @nodoc
class _$SavingsInputCollectorStateCopyWithImpl<$Res>
    implements $SavingsInputCollectorStateCopyWith<$Res> {
  _$SavingsInputCollectorStateCopyWithImpl(this._value, this._then);

  final SavingsInputCollectorState _value;
  // ignore: unused_field
  final $Res Function(SavingsInputCollectorState) _then;

  @override
  $Res call({
    Object saving = freezed,
    Object showErrorMessage = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object addedAmount = freezed,
    Object amount = freezed,
    Object withDrawalDate = freezed,
    Object accountName = freezed,
    Object amountToAdd = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      saving: saving == freezed ? _value.saving : saving as Savings,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      addedAmount: addedAmount == freezed
          ? _value.addedAmount
          : addedAmount as MoneyAmount,
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      withDrawalDate: withDrawalDate == freezed
          ? _value.withDrawalDate
          : withDrawalDate as ValidDate,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName as AccountName,
      amountToAdd: amountToAdd == freezed
          ? _value.amountToAdd
          : amountToAdd as MoneyAmount,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<SavingsFailure, Unit>>,
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
abstract class _$SavingsInputCollectorStateCopyWith<$Res>
    implements $SavingsInputCollectorStateCopyWith<$Res> {
  factory _$SavingsInputCollectorStateCopyWith(
          _SavingsInputCollectorState value,
          $Res Function(_SavingsInputCollectorState) then) =
      __$SavingsInputCollectorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Savings saving,
      bool showErrorMessage,
      bool isSaving,
      bool isEditing,
      MoneyAmount addedAmount,
      MoneyAmount amount,
      ValidDate withDrawalDate,
      AccountName accountName,
      MoneyAmount amountToAdd,
      Option<Either<SavingsFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $SavingsCopyWith<$Res> get saving;
}

/// @nodoc
class __$SavingsInputCollectorStateCopyWithImpl<$Res>
    extends _$SavingsInputCollectorStateCopyWithImpl<$Res>
    implements _$SavingsInputCollectorStateCopyWith<$Res> {
  __$SavingsInputCollectorStateCopyWithImpl(_SavingsInputCollectorState _value,
      $Res Function(_SavingsInputCollectorState) _then)
      : super(_value, (v) => _then(v as _SavingsInputCollectorState));

  @override
  _SavingsInputCollectorState get _value =>
      super._value as _SavingsInputCollectorState;

  @override
  $Res call({
    Object saving = freezed,
    Object showErrorMessage = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object addedAmount = freezed,
    Object amount = freezed,
    Object withDrawalDate = freezed,
    Object accountName = freezed,
    Object amountToAdd = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_SavingsInputCollectorState(
      saving: saving == freezed ? _value.saving : saving as Savings,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      addedAmount: addedAmount == freezed
          ? _value.addedAmount
          : addedAmount as MoneyAmount,
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
      withDrawalDate: withDrawalDate == freezed
          ? _value.withDrawalDate
          : withDrawalDate as ValidDate,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName as AccountName,
      amountToAdd: amountToAdd == freezed
          ? _value.amountToAdd
          : amountToAdd as MoneyAmount,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<SavingsFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SavingsInputCollectorState
    with DiagnosticableTreeMixin
    implements _SavingsInputCollectorState {
  const _$_SavingsInputCollectorState(
      {@required this.saving,
      @required this.showErrorMessage,
      @required this.isSaving,
      @required this.isEditing,
      @required this.addedAmount,
      @required this.amount,
      @required this.withDrawalDate,
      @required this.accountName,
      this.amountToAdd,
      @required this.saveFailureOrSuccessOption})
      : assert(saving != null),
        assert(showErrorMessage != null),
        assert(isSaving != null),
        assert(isEditing != null),
        assert(addedAmount != null),
        assert(amount != null),
        assert(withDrawalDate != null),
        assert(accountName != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Savings saving;
  @override
  final bool showErrorMessage;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final MoneyAmount addedAmount;
  @override
  final MoneyAmount amount;
  @override
  final ValidDate withDrawalDate;
  @override
  final AccountName accountName;
  @override
  final MoneyAmount amountToAdd;
  @override
  final Option<Either<SavingsFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavingsInputCollectorState(saving: $saving, showErrorMessage: $showErrorMessage, isSaving: $isSaving, isEditing: $isEditing, addedAmount: $addedAmount, amount: $amount, withDrawalDate: $withDrawalDate, accountName: $accountName, amountToAdd: $amountToAdd, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SavingsInputCollectorState'))
      ..add(DiagnosticsProperty('saving', saving))
      ..add(DiagnosticsProperty('showErrorMessage', showErrorMessage))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('addedAmount', addedAmount))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('withDrawalDate', withDrawalDate))
      ..add(DiagnosticsProperty('accountName', accountName))
      ..add(DiagnosticsProperty('amountToAdd', amountToAdd))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SavingsInputCollectorState &&
            (identical(other.saving, saving) ||
                const DeepCollectionEquality().equals(other.saving, saving)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.addedAmount, addedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.addedAmount, addedAmount)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.withDrawalDate, withDrawalDate) ||
                const DeepCollectionEquality()
                    .equals(other.withDrawalDate, withDrawalDate)) &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)) &&
            (identical(other.amountToAdd, amountToAdd) ||
                const DeepCollectionEquality()
                    .equals(other.amountToAdd, amountToAdd)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(saving) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(addedAmount) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(withDrawalDate) ^
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(amountToAdd) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$SavingsInputCollectorStateCopyWith<_SavingsInputCollectorState>
      get copyWith => __$SavingsInputCollectorStateCopyWithImpl<
          _SavingsInputCollectorState>(this, _$identity);
}

abstract class _SavingsInputCollectorState
    implements SavingsInputCollectorState {
  const factory _SavingsInputCollectorState(
      {@required
          Savings saving,
      @required
          bool showErrorMessage,
      @required
          bool isSaving,
      @required
          bool isEditing,
      @required
          MoneyAmount addedAmount,
      @required
          MoneyAmount amount,
      @required
          ValidDate withDrawalDate,
      @required
          AccountName accountName,
      MoneyAmount amountToAdd,
      @required
          Option<Either<SavingsFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_SavingsInputCollectorState;

  @override
  Savings get saving;
  @override
  bool get showErrorMessage;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  MoneyAmount get addedAmount;
  @override
  MoneyAmount get amount;
  @override
  ValidDate get withDrawalDate;
  @override
  AccountName get accountName;
  @override
  MoneyAmount get amountToAdd;
  @override
  Option<Either<SavingsFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$SavingsInputCollectorStateCopyWith<_SavingsInputCollectorState>
      get copyWith;
}
