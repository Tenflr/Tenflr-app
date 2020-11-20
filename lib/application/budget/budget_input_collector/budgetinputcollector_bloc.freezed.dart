// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'budgetinputcollector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BudgetInputCollectorEventTearOff {
  const _$BudgetInputCollectorEventTearOff();

// ignore: unused_element
  _Initialized initialized(User user) {
    return _Initialized(
      user,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }

// ignore: unused_element
  _AmountToManageChanged amountToManageChanged({@required MoneyAmount amount}) {
    return _AmountToManageChanged(
      amount: amount,
    );
  }

// ignore: unused_element
  _LockPeriodChanged lockPeriodChanged({@required ValidDate unlockDate}) {
    return _LockPeriodChanged(
      unlockDate: unlockDate,
    );
  }

// ignore: unused_element
  _PayoutModeChanged payoutModeChanged(
      {@required PayoutModeObject payoutMode}) {
    return _PayoutModeChanged(
      payoutMode: payoutMode,
    );
  }

// ignore: unused_element
  _ReceiverInfoChanged receiverInfoChanged({@required String searchTerm}) {
    return _ReceiverInfoChanged(
      searchTerm: searchTerm,
    );
  }

// ignore: unused_element
  _ReceiverChanged receiverChanged({@required User receiver}) {
    return _ReceiverChanged(
      receiver: receiver,
    );
  }

// ignore: unused_element
  _ManagerAccountNameChanged managerAccountNameChanged(
      {@required AccountName accountName}) {
    return _ManagerAccountNameChanged(
      accountName: accountName,
    );
  }

// ignore: unused_element
  _SearcherUserQuery searchUser({@required String userQuery}) {
    return _SearcherUserQuery(
      userQuery: userQuery,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BudgetInputCollectorEvent = _$BudgetInputCollectorEventTearOff();

/// @nodoc
mixin _$BudgetInputCollectorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result submitted(),
    @required Result amountToManageChanged(MoneyAmount amount),
    @required Result lockPeriodChanged(ValidDate unlockDate),
    @required Result payoutModeChanged(PayoutModeObject payoutMode),
    @required Result receiverInfoChanged(String searchTerm),
    @required Result receiverChanged(User receiver),
    @required Result managerAccountNameChanged(AccountName accountName),
    @required Result searchUser(String userQuery),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result submitted(),
    Result amountToManageChanged(MoneyAmount amount),
    Result lockPeriodChanged(ValidDate unlockDate),
    Result payoutModeChanged(PayoutModeObject payoutMode),
    Result receiverInfoChanged(String searchTerm),
    Result receiverChanged(User receiver),
    Result managerAccountNameChanged(AccountName accountName),
    Result searchUser(String userQuery),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result submitted(_Submitted value),
    @required Result amountToManageChanged(_AmountToManageChanged value),
    @required Result lockPeriodChanged(_LockPeriodChanged value),
    @required Result payoutModeChanged(_PayoutModeChanged value),
    @required Result receiverInfoChanged(_ReceiverInfoChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required
        Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    @required Result searchUser(_SearcherUserQuery value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result submitted(_Submitted value),
    Result amountToManageChanged(_AmountToManageChanged value),
    Result lockPeriodChanged(_LockPeriodChanged value),
    Result payoutModeChanged(_PayoutModeChanged value),
    Result receiverInfoChanged(_ReceiverInfoChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    Result searchUser(_SearcherUserQuery value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $BudgetInputCollectorEventCopyWith<$Res> {
  factory $BudgetInputCollectorEventCopyWith(BudgetInputCollectorEvent value,
          $Res Function(BudgetInputCollectorEvent) then) =
      _$BudgetInputCollectorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BudgetInputCollectorEventCopyWithImpl<$Res>
    implements $BudgetInputCollectorEventCopyWith<$Res> {
  _$BudgetInputCollectorEventCopyWithImpl(this._value, this._then);

  final BudgetInputCollectorEvent _value;
  // ignore: unused_field
  final $Res Function(BudgetInputCollectorEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$BudgetInputCollectorEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Initialized(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetInputCollectorEvent.initialized(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'BudgetInputCollectorEvent.initialized'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result submitted(),
    @required Result amountToManageChanged(MoneyAmount amount),
    @required Result lockPeriodChanged(ValidDate unlockDate),
    @required Result payoutModeChanged(PayoutModeObject payoutMode),
    @required Result receiverInfoChanged(String searchTerm),
    @required Result receiverChanged(User receiver),
    @required Result managerAccountNameChanged(AccountName accountName),
    @required Result searchUser(String userQuery),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return initialized(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result submitted(),
    Result amountToManageChanged(MoneyAmount amount),
    Result lockPeriodChanged(ValidDate unlockDate),
    Result payoutModeChanged(PayoutModeObject payoutMode),
    Result receiverInfoChanged(String searchTerm),
    Result receiverChanged(User receiver),
    Result managerAccountNameChanged(AccountName accountName),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result submitted(_Submitted value),
    @required Result amountToManageChanged(_AmountToManageChanged value),
    @required Result lockPeriodChanged(_LockPeriodChanged value),
    @required Result payoutModeChanged(_PayoutModeChanged value),
    @required Result receiverInfoChanged(_ReceiverInfoChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required
        Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    @required Result searchUser(_SearcherUserQuery value),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result submitted(_Submitted value),
    Result amountToManageChanged(_AmountToManageChanged value),
    Result lockPeriodChanged(_LockPeriodChanged value),
    Result payoutModeChanged(_PayoutModeChanged value),
    Result receiverInfoChanged(_ReceiverInfoChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    Result searchUser(_SearcherUserQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements BudgetInputCollectorEvent {
  const factory _Initialized(User user) = _$_Initialized;

  User get user;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$BudgetInputCollectorEventCopyWithImpl<$Res>
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
    return 'BudgetInputCollectorEvent.submitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BudgetInputCollectorEvent.submitted'));
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
    @required Result initialized(User user),
    @required Result submitted(),
    @required Result amountToManageChanged(MoneyAmount amount),
    @required Result lockPeriodChanged(ValidDate unlockDate),
    @required Result payoutModeChanged(PayoutModeObject payoutMode),
    @required Result receiverInfoChanged(String searchTerm),
    @required Result receiverChanged(User receiver),
    @required Result managerAccountNameChanged(AccountName accountName),
    @required Result searchUser(String userQuery),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result submitted(),
    Result amountToManageChanged(MoneyAmount amount),
    Result lockPeriodChanged(ValidDate unlockDate),
    Result payoutModeChanged(PayoutModeObject payoutMode),
    Result receiverInfoChanged(String searchTerm),
    Result receiverChanged(User receiver),
    Result managerAccountNameChanged(AccountName accountName),
    Result searchUser(String userQuery),
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
    @required Result initialized(_Initialized value),
    @required Result submitted(_Submitted value),
    @required Result amountToManageChanged(_AmountToManageChanged value),
    @required Result lockPeriodChanged(_LockPeriodChanged value),
    @required Result payoutModeChanged(_PayoutModeChanged value),
    @required Result receiverInfoChanged(_ReceiverInfoChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required
        Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    @required Result searchUser(_SearcherUserQuery value),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result submitted(_Submitted value),
    Result amountToManageChanged(_AmountToManageChanged value),
    Result lockPeriodChanged(_LockPeriodChanged value),
    Result payoutModeChanged(_PayoutModeChanged value),
    Result receiverInfoChanged(_ReceiverInfoChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    Result searchUser(_SearcherUserQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements BudgetInputCollectorEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
abstract class _$AmountToManageChangedCopyWith<$Res> {
  factory _$AmountToManageChangedCopyWith(_AmountToManageChanged value,
          $Res Function(_AmountToManageChanged) then) =
      __$AmountToManageChangedCopyWithImpl<$Res>;
  $Res call({MoneyAmount amount});
}

/// @nodoc
class __$AmountToManageChangedCopyWithImpl<$Res>
    extends _$BudgetInputCollectorEventCopyWithImpl<$Res>
    implements _$AmountToManageChangedCopyWith<$Res> {
  __$AmountToManageChangedCopyWithImpl(_AmountToManageChanged _value,
      $Res Function(_AmountToManageChanged) _then)
      : super(_value, (v) => _then(v as _AmountToManageChanged));

  @override
  _AmountToManageChanged get _value => super._value as _AmountToManageChanged;

  @override
  $Res call({
    Object amount = freezed,
  }) {
    return _then(_AmountToManageChanged(
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
    ));
  }
}

/// @nodoc
class _$_AmountToManageChanged
    with DiagnosticableTreeMixin
    implements _AmountToManageChanged {
  const _$_AmountToManageChanged({@required this.amount})
      : assert(amount != null);

  @override
  final MoneyAmount amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetInputCollectorEvent.amountToManageChanged(amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'BudgetInputCollectorEvent.amountToManageChanged'))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AmountToManageChanged &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @override
  _$AmountToManageChangedCopyWith<_AmountToManageChanged> get copyWith =>
      __$AmountToManageChangedCopyWithImpl<_AmountToManageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result submitted(),
    @required Result amountToManageChanged(MoneyAmount amount),
    @required Result lockPeriodChanged(ValidDate unlockDate),
    @required Result payoutModeChanged(PayoutModeObject payoutMode),
    @required Result receiverInfoChanged(String searchTerm),
    @required Result receiverChanged(User receiver),
    @required Result managerAccountNameChanged(AccountName accountName),
    @required Result searchUser(String userQuery),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return amountToManageChanged(amount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result submitted(),
    Result amountToManageChanged(MoneyAmount amount),
    Result lockPeriodChanged(ValidDate unlockDate),
    Result payoutModeChanged(PayoutModeObject payoutMode),
    Result receiverInfoChanged(String searchTerm),
    Result receiverChanged(User receiver),
    Result managerAccountNameChanged(AccountName accountName),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (amountToManageChanged != null) {
      return amountToManageChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result submitted(_Submitted value),
    @required Result amountToManageChanged(_AmountToManageChanged value),
    @required Result lockPeriodChanged(_LockPeriodChanged value),
    @required Result payoutModeChanged(_PayoutModeChanged value),
    @required Result receiverInfoChanged(_ReceiverInfoChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required
        Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    @required Result searchUser(_SearcherUserQuery value),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return amountToManageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result submitted(_Submitted value),
    Result amountToManageChanged(_AmountToManageChanged value),
    Result lockPeriodChanged(_LockPeriodChanged value),
    Result payoutModeChanged(_PayoutModeChanged value),
    Result receiverInfoChanged(_ReceiverInfoChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    Result searchUser(_SearcherUserQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (amountToManageChanged != null) {
      return amountToManageChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountToManageChanged implements BudgetInputCollectorEvent {
  const factory _AmountToManageChanged({@required MoneyAmount amount}) =
      _$_AmountToManageChanged;

  MoneyAmount get amount;
  _$AmountToManageChangedCopyWith<_AmountToManageChanged> get copyWith;
}

/// @nodoc
abstract class _$LockPeriodChangedCopyWith<$Res> {
  factory _$LockPeriodChangedCopyWith(
          _LockPeriodChanged value, $Res Function(_LockPeriodChanged) then) =
      __$LockPeriodChangedCopyWithImpl<$Res>;
  $Res call({ValidDate unlockDate});
}

/// @nodoc
class __$LockPeriodChangedCopyWithImpl<$Res>
    extends _$BudgetInputCollectorEventCopyWithImpl<$Res>
    implements _$LockPeriodChangedCopyWith<$Res> {
  __$LockPeriodChangedCopyWithImpl(
      _LockPeriodChanged _value, $Res Function(_LockPeriodChanged) _then)
      : super(_value, (v) => _then(v as _LockPeriodChanged));

  @override
  _LockPeriodChanged get _value => super._value as _LockPeriodChanged;

  @override
  $Res call({
    Object unlockDate = freezed,
  }) {
    return _then(_LockPeriodChanged(
      unlockDate:
          unlockDate == freezed ? _value.unlockDate : unlockDate as ValidDate,
    ));
  }
}

/// @nodoc
class _$_LockPeriodChanged
    with DiagnosticableTreeMixin
    implements _LockPeriodChanged {
  const _$_LockPeriodChanged({@required this.unlockDate})
      : assert(unlockDate != null);

  @override
  final ValidDate unlockDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetInputCollectorEvent.lockPeriodChanged(unlockDate: $unlockDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'BudgetInputCollectorEvent.lockPeriodChanged'))
      ..add(DiagnosticsProperty('unlockDate', unlockDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LockPeriodChanged &&
            (identical(other.unlockDate, unlockDate) ||
                const DeepCollectionEquality()
                    .equals(other.unlockDate, unlockDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(unlockDate);

  @override
  _$LockPeriodChangedCopyWith<_LockPeriodChanged> get copyWith =>
      __$LockPeriodChangedCopyWithImpl<_LockPeriodChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result submitted(),
    @required Result amountToManageChanged(MoneyAmount amount),
    @required Result lockPeriodChanged(ValidDate unlockDate),
    @required Result payoutModeChanged(PayoutModeObject payoutMode),
    @required Result receiverInfoChanged(String searchTerm),
    @required Result receiverChanged(User receiver),
    @required Result managerAccountNameChanged(AccountName accountName),
    @required Result searchUser(String userQuery),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return lockPeriodChanged(unlockDate);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result submitted(),
    Result amountToManageChanged(MoneyAmount amount),
    Result lockPeriodChanged(ValidDate unlockDate),
    Result payoutModeChanged(PayoutModeObject payoutMode),
    Result receiverInfoChanged(String searchTerm),
    Result receiverChanged(User receiver),
    Result managerAccountNameChanged(AccountName accountName),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lockPeriodChanged != null) {
      return lockPeriodChanged(unlockDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result submitted(_Submitted value),
    @required Result amountToManageChanged(_AmountToManageChanged value),
    @required Result lockPeriodChanged(_LockPeriodChanged value),
    @required Result payoutModeChanged(_PayoutModeChanged value),
    @required Result receiverInfoChanged(_ReceiverInfoChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required
        Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    @required Result searchUser(_SearcherUserQuery value),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return lockPeriodChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result submitted(_Submitted value),
    Result amountToManageChanged(_AmountToManageChanged value),
    Result lockPeriodChanged(_LockPeriodChanged value),
    Result payoutModeChanged(_PayoutModeChanged value),
    Result receiverInfoChanged(_ReceiverInfoChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    Result searchUser(_SearcherUserQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lockPeriodChanged != null) {
      return lockPeriodChanged(this);
    }
    return orElse();
  }
}

abstract class _LockPeriodChanged implements BudgetInputCollectorEvent {
  const factory _LockPeriodChanged({@required ValidDate unlockDate}) =
      _$_LockPeriodChanged;

  ValidDate get unlockDate;
  _$LockPeriodChangedCopyWith<_LockPeriodChanged> get copyWith;
}

/// @nodoc
abstract class _$PayoutModeChangedCopyWith<$Res> {
  factory _$PayoutModeChangedCopyWith(
          _PayoutModeChanged value, $Res Function(_PayoutModeChanged) then) =
      __$PayoutModeChangedCopyWithImpl<$Res>;
  $Res call({PayoutModeObject payoutMode});
}

/// @nodoc
class __$PayoutModeChangedCopyWithImpl<$Res>
    extends _$BudgetInputCollectorEventCopyWithImpl<$Res>
    implements _$PayoutModeChangedCopyWith<$Res> {
  __$PayoutModeChangedCopyWithImpl(
      _PayoutModeChanged _value, $Res Function(_PayoutModeChanged) _then)
      : super(_value, (v) => _then(v as _PayoutModeChanged));

  @override
  _PayoutModeChanged get _value => super._value as _PayoutModeChanged;

  @override
  $Res call({
    Object payoutMode = freezed,
  }) {
    return _then(_PayoutModeChanged(
      payoutMode: payoutMode == freezed
          ? _value.payoutMode
          : payoutMode as PayoutModeObject,
    ));
  }
}

/// @nodoc
class _$_PayoutModeChanged
    with DiagnosticableTreeMixin
    implements _PayoutModeChanged {
  const _$_PayoutModeChanged({@required this.payoutMode})
      : assert(payoutMode != null);

  @override
  final PayoutModeObject payoutMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetInputCollectorEvent.payoutModeChanged(payoutMode: $payoutMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'BudgetInputCollectorEvent.payoutModeChanged'))
      ..add(DiagnosticsProperty('payoutMode', payoutMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PayoutModeChanged &&
            (identical(other.payoutMode, payoutMode) ||
                const DeepCollectionEquality()
                    .equals(other.payoutMode, payoutMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payoutMode);

  @override
  _$PayoutModeChangedCopyWith<_PayoutModeChanged> get copyWith =>
      __$PayoutModeChangedCopyWithImpl<_PayoutModeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result submitted(),
    @required Result amountToManageChanged(MoneyAmount amount),
    @required Result lockPeriodChanged(ValidDate unlockDate),
    @required Result payoutModeChanged(PayoutModeObject payoutMode),
    @required Result receiverInfoChanged(String searchTerm),
    @required Result receiverChanged(User receiver),
    @required Result managerAccountNameChanged(AccountName accountName),
    @required Result searchUser(String userQuery),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return payoutModeChanged(payoutMode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result submitted(),
    Result amountToManageChanged(MoneyAmount amount),
    Result lockPeriodChanged(ValidDate unlockDate),
    Result payoutModeChanged(PayoutModeObject payoutMode),
    Result receiverInfoChanged(String searchTerm),
    Result receiverChanged(User receiver),
    Result managerAccountNameChanged(AccountName accountName),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (payoutModeChanged != null) {
      return payoutModeChanged(payoutMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result submitted(_Submitted value),
    @required Result amountToManageChanged(_AmountToManageChanged value),
    @required Result lockPeriodChanged(_LockPeriodChanged value),
    @required Result payoutModeChanged(_PayoutModeChanged value),
    @required Result receiverInfoChanged(_ReceiverInfoChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required
        Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    @required Result searchUser(_SearcherUserQuery value),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return payoutModeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result submitted(_Submitted value),
    Result amountToManageChanged(_AmountToManageChanged value),
    Result lockPeriodChanged(_LockPeriodChanged value),
    Result payoutModeChanged(_PayoutModeChanged value),
    Result receiverInfoChanged(_ReceiverInfoChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    Result searchUser(_SearcherUserQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (payoutModeChanged != null) {
      return payoutModeChanged(this);
    }
    return orElse();
  }
}

abstract class _PayoutModeChanged implements BudgetInputCollectorEvent {
  const factory _PayoutModeChanged({@required PayoutModeObject payoutMode}) =
      _$_PayoutModeChanged;

  PayoutModeObject get payoutMode;
  _$PayoutModeChangedCopyWith<_PayoutModeChanged> get copyWith;
}

/// @nodoc
abstract class _$ReceiverInfoChangedCopyWith<$Res> {
  factory _$ReceiverInfoChangedCopyWith(_ReceiverInfoChanged value,
          $Res Function(_ReceiverInfoChanged) then) =
      __$ReceiverInfoChangedCopyWithImpl<$Res>;
  $Res call({String searchTerm});
}

/// @nodoc
class __$ReceiverInfoChangedCopyWithImpl<$Res>
    extends _$BudgetInputCollectorEventCopyWithImpl<$Res>
    implements _$ReceiverInfoChangedCopyWith<$Res> {
  __$ReceiverInfoChangedCopyWithImpl(
      _ReceiverInfoChanged _value, $Res Function(_ReceiverInfoChanged) _then)
      : super(_value, (v) => _then(v as _ReceiverInfoChanged));

  @override
  _ReceiverInfoChanged get _value => super._value as _ReceiverInfoChanged;

  @override
  $Res call({
    Object searchTerm = freezed,
  }) {
    return _then(_ReceiverInfoChanged(
      searchTerm:
          searchTerm == freezed ? _value.searchTerm : searchTerm as String,
    ));
  }
}

/// @nodoc
class _$_ReceiverInfoChanged
    with DiagnosticableTreeMixin
    implements _ReceiverInfoChanged {
  const _$_ReceiverInfoChanged({@required this.searchTerm})
      : assert(searchTerm != null);

  @override
  final String searchTerm;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetInputCollectorEvent.receiverInfoChanged(searchTerm: $searchTerm)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'BudgetInputCollectorEvent.receiverInfoChanged'))
      ..add(DiagnosticsProperty('searchTerm', searchTerm));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReceiverInfoChanged &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTerm);

  @override
  _$ReceiverInfoChangedCopyWith<_ReceiverInfoChanged> get copyWith =>
      __$ReceiverInfoChangedCopyWithImpl<_ReceiverInfoChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result submitted(),
    @required Result amountToManageChanged(MoneyAmount amount),
    @required Result lockPeriodChanged(ValidDate unlockDate),
    @required Result payoutModeChanged(PayoutModeObject payoutMode),
    @required Result receiverInfoChanged(String searchTerm),
    @required Result receiverChanged(User receiver),
    @required Result managerAccountNameChanged(AccountName accountName),
    @required Result searchUser(String userQuery),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return receiverInfoChanged(searchTerm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result submitted(),
    Result amountToManageChanged(MoneyAmount amount),
    Result lockPeriodChanged(ValidDate unlockDate),
    Result payoutModeChanged(PayoutModeObject payoutMode),
    Result receiverInfoChanged(String searchTerm),
    Result receiverChanged(User receiver),
    Result managerAccountNameChanged(AccountName accountName),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverInfoChanged != null) {
      return receiverInfoChanged(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result submitted(_Submitted value),
    @required Result amountToManageChanged(_AmountToManageChanged value),
    @required Result lockPeriodChanged(_LockPeriodChanged value),
    @required Result payoutModeChanged(_PayoutModeChanged value),
    @required Result receiverInfoChanged(_ReceiverInfoChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required
        Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    @required Result searchUser(_SearcherUserQuery value),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return receiverInfoChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result submitted(_Submitted value),
    Result amountToManageChanged(_AmountToManageChanged value),
    Result lockPeriodChanged(_LockPeriodChanged value),
    Result payoutModeChanged(_PayoutModeChanged value),
    Result receiverInfoChanged(_ReceiverInfoChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    Result searchUser(_SearcherUserQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverInfoChanged != null) {
      return receiverInfoChanged(this);
    }
    return orElse();
  }
}

abstract class _ReceiverInfoChanged implements BudgetInputCollectorEvent {
  const factory _ReceiverInfoChanged({@required String searchTerm}) =
      _$_ReceiverInfoChanged;

  String get searchTerm;
  _$ReceiverInfoChangedCopyWith<_ReceiverInfoChanged> get copyWith;
}

/// @nodoc
abstract class _$ReceiverChangedCopyWith<$Res> {
  factory _$ReceiverChangedCopyWith(
          _ReceiverChanged value, $Res Function(_ReceiverChanged) then) =
      __$ReceiverChangedCopyWithImpl<$Res>;
  $Res call({User receiver});

  $UserCopyWith<$Res> get receiver;
}

/// @nodoc
class __$ReceiverChangedCopyWithImpl<$Res>
    extends _$BudgetInputCollectorEventCopyWithImpl<$Res>
    implements _$ReceiverChangedCopyWith<$Res> {
  __$ReceiverChangedCopyWithImpl(
      _ReceiverChanged _value, $Res Function(_ReceiverChanged) _then)
      : super(_value, (v) => _then(v as _ReceiverChanged));

  @override
  _ReceiverChanged get _value => super._value as _ReceiverChanged;

  @override
  $Res call({
    Object receiver = freezed,
  }) {
    return _then(_ReceiverChanged(
      receiver: receiver == freezed ? _value.receiver : receiver as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get receiver {
    if (_value.receiver == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
class _$_ReceiverChanged
    with DiagnosticableTreeMixin
    implements _ReceiverChanged {
  const _$_ReceiverChanged({@required this.receiver})
      : assert(receiver != null);

  @override
  final User receiver;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetInputCollectorEvent.receiverChanged(receiver: $receiver)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'BudgetInputCollectorEvent.receiverChanged'))
      ..add(DiagnosticsProperty('receiver', receiver));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReceiverChanged &&
            (identical(other.receiver, receiver) ||
                const DeepCollectionEquality()
                    .equals(other.receiver, receiver)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiver);

  @override
  _$ReceiverChangedCopyWith<_ReceiverChanged> get copyWith =>
      __$ReceiverChangedCopyWithImpl<_ReceiverChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result submitted(),
    @required Result amountToManageChanged(MoneyAmount amount),
    @required Result lockPeriodChanged(ValidDate unlockDate),
    @required Result payoutModeChanged(PayoutModeObject payoutMode),
    @required Result receiverInfoChanged(String searchTerm),
    @required Result receiverChanged(User receiver),
    @required Result managerAccountNameChanged(AccountName accountName),
    @required Result searchUser(String userQuery),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return receiverChanged(receiver);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result submitted(),
    Result amountToManageChanged(MoneyAmount amount),
    Result lockPeriodChanged(ValidDate unlockDate),
    Result payoutModeChanged(PayoutModeObject payoutMode),
    Result receiverInfoChanged(String searchTerm),
    Result receiverChanged(User receiver),
    Result managerAccountNameChanged(AccountName accountName),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverChanged != null) {
      return receiverChanged(receiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result submitted(_Submitted value),
    @required Result amountToManageChanged(_AmountToManageChanged value),
    @required Result lockPeriodChanged(_LockPeriodChanged value),
    @required Result payoutModeChanged(_PayoutModeChanged value),
    @required Result receiverInfoChanged(_ReceiverInfoChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required
        Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    @required Result searchUser(_SearcherUserQuery value),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return receiverChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result submitted(_Submitted value),
    Result amountToManageChanged(_AmountToManageChanged value),
    Result lockPeriodChanged(_LockPeriodChanged value),
    Result payoutModeChanged(_PayoutModeChanged value),
    Result receiverInfoChanged(_ReceiverInfoChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    Result searchUser(_SearcherUserQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverChanged != null) {
      return receiverChanged(this);
    }
    return orElse();
  }
}

abstract class _ReceiverChanged implements BudgetInputCollectorEvent {
  const factory _ReceiverChanged({@required User receiver}) =
      _$_ReceiverChanged;

  User get receiver;
  _$ReceiverChangedCopyWith<_ReceiverChanged> get copyWith;
}

/// @nodoc
abstract class _$ManagerAccountNameChangedCopyWith<$Res> {
  factory _$ManagerAccountNameChangedCopyWith(_ManagerAccountNameChanged value,
          $Res Function(_ManagerAccountNameChanged) then) =
      __$ManagerAccountNameChangedCopyWithImpl<$Res>;
  $Res call({AccountName accountName});
}

/// @nodoc
class __$ManagerAccountNameChangedCopyWithImpl<$Res>
    extends _$BudgetInputCollectorEventCopyWithImpl<$Res>
    implements _$ManagerAccountNameChangedCopyWith<$Res> {
  __$ManagerAccountNameChangedCopyWithImpl(_ManagerAccountNameChanged _value,
      $Res Function(_ManagerAccountNameChanged) _then)
      : super(_value, (v) => _then(v as _ManagerAccountNameChanged));

  @override
  _ManagerAccountNameChanged get _value =>
      super._value as _ManagerAccountNameChanged;

  @override
  $Res call({
    Object accountName = freezed,
  }) {
    return _then(_ManagerAccountNameChanged(
      accountName: accountName == freezed
          ? _value.accountName
          : accountName as AccountName,
    ));
  }
}

/// @nodoc
class _$_ManagerAccountNameChanged
    with DiagnosticableTreeMixin
    implements _ManagerAccountNameChanged {
  const _$_ManagerAccountNameChanged({@required this.accountName})
      : assert(accountName != null);

  @override
  final AccountName accountName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetInputCollectorEvent.managerAccountNameChanged(accountName: $accountName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'BudgetInputCollectorEvent.managerAccountNameChanged'))
      ..add(DiagnosticsProperty('accountName', accountName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ManagerAccountNameChanged &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accountName);

  @override
  _$ManagerAccountNameChangedCopyWith<_ManagerAccountNameChanged>
      get copyWith =>
          __$ManagerAccountNameChangedCopyWithImpl<_ManagerAccountNameChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result submitted(),
    @required Result amountToManageChanged(MoneyAmount amount),
    @required Result lockPeriodChanged(ValidDate unlockDate),
    @required Result payoutModeChanged(PayoutModeObject payoutMode),
    @required Result receiverInfoChanged(String searchTerm),
    @required Result receiverChanged(User receiver),
    @required Result managerAccountNameChanged(AccountName accountName),
    @required Result searchUser(String userQuery),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return managerAccountNameChanged(accountName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result submitted(),
    Result amountToManageChanged(MoneyAmount amount),
    Result lockPeriodChanged(ValidDate unlockDate),
    Result payoutModeChanged(PayoutModeObject payoutMode),
    Result receiverInfoChanged(String searchTerm),
    Result receiverChanged(User receiver),
    Result managerAccountNameChanged(AccountName accountName),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (managerAccountNameChanged != null) {
      return managerAccountNameChanged(accountName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result submitted(_Submitted value),
    @required Result amountToManageChanged(_AmountToManageChanged value),
    @required Result lockPeriodChanged(_LockPeriodChanged value),
    @required Result payoutModeChanged(_PayoutModeChanged value),
    @required Result receiverInfoChanged(_ReceiverInfoChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required
        Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    @required Result searchUser(_SearcherUserQuery value),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return managerAccountNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result submitted(_Submitted value),
    Result amountToManageChanged(_AmountToManageChanged value),
    Result lockPeriodChanged(_LockPeriodChanged value),
    Result payoutModeChanged(_PayoutModeChanged value),
    Result receiverInfoChanged(_ReceiverInfoChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    Result searchUser(_SearcherUserQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (managerAccountNameChanged != null) {
      return managerAccountNameChanged(this);
    }
    return orElse();
  }
}

abstract class _ManagerAccountNameChanged implements BudgetInputCollectorEvent {
  const factory _ManagerAccountNameChanged(
      {@required AccountName accountName}) = _$_ManagerAccountNameChanged;

  AccountName get accountName;
  _$ManagerAccountNameChangedCopyWith<_ManagerAccountNameChanged> get copyWith;
}

/// @nodoc
abstract class _$SearcherUserQueryCopyWith<$Res> {
  factory _$SearcherUserQueryCopyWith(
          _SearcherUserQuery value, $Res Function(_SearcherUserQuery) then) =
      __$SearcherUserQueryCopyWithImpl<$Res>;
  $Res call({String userQuery});
}

/// @nodoc
class __$SearcherUserQueryCopyWithImpl<$Res>
    extends _$BudgetInputCollectorEventCopyWithImpl<$Res>
    implements _$SearcherUserQueryCopyWith<$Res> {
  __$SearcherUserQueryCopyWithImpl(
      _SearcherUserQuery _value, $Res Function(_SearcherUserQuery) _then)
      : super(_value, (v) => _then(v as _SearcherUserQuery));

  @override
  _SearcherUserQuery get _value => super._value as _SearcherUserQuery;

  @override
  $Res call({
    Object userQuery = freezed,
  }) {
    return _then(_SearcherUserQuery(
      userQuery: userQuery == freezed ? _value.userQuery : userQuery as String,
    ));
  }
}

/// @nodoc
class _$_SearcherUserQuery
    with DiagnosticableTreeMixin
    implements _SearcherUserQuery {
  const _$_SearcherUserQuery({@required this.userQuery})
      : assert(userQuery != null);

  @override
  final String userQuery;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetInputCollectorEvent.searchUser(userQuery: $userQuery)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BudgetInputCollectorEvent.searchUser'))
      ..add(DiagnosticsProperty('userQuery', userQuery));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearcherUserQuery &&
            (identical(other.userQuery, userQuery) ||
                const DeepCollectionEquality()
                    .equals(other.userQuery, userQuery)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userQuery);

  @override
  _$SearcherUserQueryCopyWith<_SearcherUserQuery> get copyWith =>
      __$SearcherUserQueryCopyWithImpl<_SearcherUserQuery>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result submitted(),
    @required Result amountToManageChanged(MoneyAmount amount),
    @required Result lockPeriodChanged(ValidDate unlockDate),
    @required Result payoutModeChanged(PayoutModeObject payoutMode),
    @required Result receiverInfoChanged(String searchTerm),
    @required Result receiverChanged(User receiver),
    @required Result managerAccountNameChanged(AccountName accountName),
    @required Result searchUser(String userQuery),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return searchUser(userQuery);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result submitted(),
    Result amountToManageChanged(MoneyAmount amount),
    Result lockPeriodChanged(ValidDate unlockDate),
    Result payoutModeChanged(PayoutModeObject payoutMode),
    Result receiverInfoChanged(String searchTerm),
    Result receiverChanged(User receiver),
    Result managerAccountNameChanged(AccountName accountName),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchUser != null) {
      return searchUser(userQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result submitted(_Submitted value),
    @required Result amountToManageChanged(_AmountToManageChanged value),
    @required Result lockPeriodChanged(_LockPeriodChanged value),
    @required Result payoutModeChanged(_PayoutModeChanged value),
    @required Result receiverInfoChanged(_ReceiverInfoChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required
        Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    @required Result searchUser(_SearcherUserQuery value),
  }) {
    assert(initialized != null);
    assert(submitted != null);
    assert(amountToManageChanged != null);
    assert(lockPeriodChanged != null);
    assert(payoutModeChanged != null);
    assert(receiverInfoChanged != null);
    assert(receiverChanged != null);
    assert(managerAccountNameChanged != null);
    assert(searchUser != null);
    return searchUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result submitted(_Submitted value),
    Result amountToManageChanged(_AmountToManageChanged value),
    Result lockPeriodChanged(_LockPeriodChanged value),
    Result payoutModeChanged(_PayoutModeChanged value),
    Result receiverInfoChanged(_ReceiverInfoChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result managerAccountNameChanged(_ManagerAccountNameChanged value),
    Result searchUser(_SearcherUserQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchUser != null) {
      return searchUser(this);
    }
    return orElse();
  }
}

abstract class _SearcherUserQuery implements BudgetInputCollectorEvent {
  const factory _SearcherUserQuery({@required String userQuery}) =
      _$_SearcherUserQuery;

  String get userQuery;
  _$SearcherUserQueryCopyWith<_SearcherUserQuery> get copyWith;
}

/// @nodoc
class _$BudgetInputCollectorStateTearOff {
  const _$BudgetInputCollectorStateTearOff();

// ignore: unused_element
  _BudgetInputCollectorState call(
      {@required
          bool showErrorMessage,
      @required
          bool isSaving,
      @required
          bool isEditing,
      @required
          Budget budget,
      @required
          String searchTerm,
      @required
          bool userFound,
      @required
          Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption}) {
    return _BudgetInputCollectorState(
      showErrorMessage: showErrorMessage,
      isSaving: isSaving,
      isEditing: isEditing,
      budget: budget,
      searchTerm: searchTerm,
      userFound: userFound,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BudgetInputCollectorState = _$BudgetInputCollectorStateTearOff();

/// @nodoc
mixin _$BudgetInputCollectorState {
  bool get showErrorMessage;
  bool get isSaving;
  bool get isEditing;
  Budget get budget;
  String get searchTerm;
  bool get userFound;
  Option<Either<BudgetFailure, Unit>> get saveFailureOrSuccessOption;

  $BudgetInputCollectorStateCopyWith<BudgetInputCollectorState> get copyWith;
}

/// @nodoc
abstract class $BudgetInputCollectorStateCopyWith<$Res> {
  factory $BudgetInputCollectorStateCopyWith(BudgetInputCollectorState value,
          $Res Function(BudgetInputCollectorState) then) =
      _$BudgetInputCollectorStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessage,
      bool isSaving,
      bool isEditing,
      Budget budget,
      String searchTerm,
      bool userFound,
      Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption});

  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class _$BudgetInputCollectorStateCopyWithImpl<$Res>
    implements $BudgetInputCollectorStateCopyWith<$Res> {
  _$BudgetInputCollectorStateCopyWithImpl(this._value, this._then);

  final BudgetInputCollectorState _value;
  // ignore: unused_field
  final $Res Function(BudgetInputCollectorState) _then;

  @override
  $Res call({
    Object showErrorMessage = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object budget = freezed,
    Object searchTerm = freezed,
    Object userFound = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      budget: budget == freezed ? _value.budget : budget as Budget,
      searchTerm:
          searchTerm == freezed ? _value.searchTerm : searchTerm as String,
      userFound: userFound == freezed ? _value.userFound : userFound as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<BudgetFailure, Unit>>,
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
abstract class _$BudgetInputCollectorStateCopyWith<$Res>
    implements $BudgetInputCollectorStateCopyWith<$Res> {
  factory _$BudgetInputCollectorStateCopyWith(_BudgetInputCollectorState value,
          $Res Function(_BudgetInputCollectorState) then) =
      __$BudgetInputCollectorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessage,
      bool isSaving,
      bool isEditing,
      Budget budget,
      String searchTerm,
      bool userFound,
      Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class __$BudgetInputCollectorStateCopyWithImpl<$Res>
    extends _$BudgetInputCollectorStateCopyWithImpl<$Res>
    implements _$BudgetInputCollectorStateCopyWith<$Res> {
  __$BudgetInputCollectorStateCopyWithImpl(_BudgetInputCollectorState _value,
      $Res Function(_BudgetInputCollectorState) _then)
      : super(_value, (v) => _then(v as _BudgetInputCollectorState));

  @override
  _BudgetInputCollectorState get _value =>
      super._value as _BudgetInputCollectorState;

  @override
  $Res call({
    Object showErrorMessage = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object budget = freezed,
    Object searchTerm = freezed,
    Object userFound = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_BudgetInputCollectorState(
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      budget: budget == freezed ? _value.budget : budget as Budget,
      searchTerm:
          searchTerm == freezed ? _value.searchTerm : searchTerm as String,
      userFound: userFound == freezed ? _value.userFound : userFound as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<BudgetFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_BudgetInputCollectorState
    with DiagnosticableTreeMixin
    implements _BudgetInputCollectorState {
  const _$_BudgetInputCollectorState(
      {@required this.showErrorMessage,
      @required this.isSaving,
      @required this.isEditing,
      @required this.budget,
      @required this.searchTerm,
      @required this.userFound,
      @required this.saveFailureOrSuccessOption})
      : assert(showErrorMessage != null),
        assert(isSaving != null),
        assert(isEditing != null),
        assert(budget != null),
        assert(searchTerm != null),
        assert(userFound != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final bool showErrorMessage;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Budget budget;
  @override
  final String searchTerm;
  @override
  final bool userFound;
  @override
  final Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetInputCollectorState(showErrorMessage: $showErrorMessage, isSaving: $isSaving, isEditing: $isEditing, budget: $budget, searchTerm: $searchTerm, userFound: $userFound, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BudgetInputCollectorState'))
      ..add(DiagnosticsProperty('showErrorMessage', showErrorMessage))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('budget', budget))
      ..add(DiagnosticsProperty('searchTerm', searchTerm))
      ..add(DiagnosticsProperty('userFound', userFound))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BudgetInputCollectorState &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)) &&
            (identical(other.userFound, userFound) ||
                const DeepCollectionEquality()
                    .equals(other.userFound, userFound)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(searchTerm) ^
      const DeepCollectionEquality().hash(userFound) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$BudgetInputCollectorStateCopyWith<_BudgetInputCollectorState>
      get copyWith =>
          __$BudgetInputCollectorStateCopyWithImpl<_BudgetInputCollectorState>(
              this, _$identity);
}

abstract class _BudgetInputCollectorState implements BudgetInputCollectorState {
  const factory _BudgetInputCollectorState(
          {@required
              bool showErrorMessage,
          @required
              bool isSaving,
          @required
              bool isEditing,
          @required
              Budget budget,
          @required
              String searchTerm,
          @required
              bool userFound,
          @required
              Option<Either<BudgetFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_BudgetInputCollectorState;

  @override
  bool get showErrorMessage;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  Budget get budget;
  @override
  String get searchTerm;
  @override
  bool get userFound;
  @override
  Option<Either<BudgetFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$BudgetInputCollectorStateCopyWith<_BudgetInputCollectorState> get copyWith;
}
