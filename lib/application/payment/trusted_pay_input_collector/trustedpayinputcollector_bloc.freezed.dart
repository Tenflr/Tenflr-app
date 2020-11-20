// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trustedpayinputcollector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TrustedPayInputCollectorEventTearOff {
  const _$TrustedPayInputCollectorEventTearOff();

// ignore: unused_element
  _AmountChanged amountChanged({@required MoneyAmount amount}) {
    return _AmountChanged(
      amount: amount,
    );
  }

// ignore: unused_element
  _ReceiverChanged receiverChanged({@required User reciever}) {
    return _ReceiverChanged(
      reciever: reciever,
    );
  }

// ignore: unused_element
  _UnlockDateChanged unlockDateChanged({@required ValidDate unlockDate}) {
    return _UnlockDateChanged(
      unlockDate: unlockDate,
    );
  }

// ignore: unused_element
  _ReceiverSearchTermChanged receiverSerchTermChanged(
      {@required String searchTerm}) {
    return _ReceiverSearchTermChanged(
      searchTerm: searchTerm,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }

// ignore: unused_element
  _Initialized initialized(User payer) {
    return _Initialized(
      payer,
    );
  }

// ignore: unused_element
  _AmountToCreditChanged amountToCreditChanged({@required MoneyAmount amount}) {
    return _AmountToCreditChanged(
      amount: amount,
    );
  }

// ignore: unused_element
  _CreditTrustedPay creditTrustedPay() {
    return const _CreditTrustedPay();
  }

// ignore: unused_element
  _UserSearch searchUser(String userQuery) {
    return _UserSearch(
      userQuery,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TrustedPayInputCollectorEvent = _$TrustedPayInputCollectorEventTearOff();

/// @nodoc
mixin _$TrustedPayInputCollectorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result amountChanged(MoneyAmount amount),
    @required Result receiverChanged(User reciever),
    @required Result unlockDateChanged(ValidDate unlockDate),
    @required Result receiverSerchTermChanged(String searchTerm),
    @required Result submitted(),
    @required Result initialized(User payer),
    @required Result amountToCreditChanged(MoneyAmount amount),
    @required Result creditTrustedPay(),
    @required Result searchUser(String userQuery),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result amountChanged(MoneyAmount amount),
    Result receiverChanged(User reciever),
    Result unlockDateChanged(ValidDate unlockDate),
    Result receiverSerchTermChanged(String searchTerm),
    Result submitted(),
    Result initialized(User payer),
    Result amountToCreditChanged(MoneyAmount amount),
    Result creditTrustedPay(),
    Result searchUser(String userQuery),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result amountChanged(_AmountChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required Result unlockDateChanged(_UnlockDateChanged value),
    @required Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    @required Result submitted(_Submitted value),
    @required Result initialized(_Initialized value),
    @required Result amountToCreditChanged(_AmountToCreditChanged value),
    @required Result creditTrustedPay(_CreditTrustedPay value),
    @required Result searchUser(_UserSearch value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result amountChanged(_AmountChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result unlockDateChanged(_UnlockDateChanged value),
    Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    Result submitted(_Submitted value),
    Result initialized(_Initialized value),
    Result amountToCreditChanged(_AmountToCreditChanged value),
    Result creditTrustedPay(_CreditTrustedPay value),
    Result searchUser(_UserSearch value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TrustedPayInputCollectorEventCopyWith<$Res> {
  factory $TrustedPayInputCollectorEventCopyWith(
          TrustedPayInputCollectorEvent value,
          $Res Function(TrustedPayInputCollectorEvent) then) =
      _$TrustedPayInputCollectorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrustedPayInputCollectorEventCopyWithImpl<$Res>
    implements $TrustedPayInputCollectorEventCopyWith<$Res> {
  _$TrustedPayInputCollectorEventCopyWithImpl(this._value, this._then);

  final TrustedPayInputCollectorEvent _value;
  // ignore: unused_field
  final $Res Function(TrustedPayInputCollectorEvent) _then;
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
    extends _$TrustedPayInputCollectorEventCopyWithImpl<$Res>
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
    return 'TrustedPayInputCollectorEvent.amountChanged(amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TrustedPayInputCollectorEvent.amountChanged'))
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
    @required Result amountChanged(MoneyAmount amount),
    @required Result receiverChanged(User reciever),
    @required Result unlockDateChanged(ValidDate unlockDate),
    @required Result receiverSerchTermChanged(String searchTerm),
    @required Result submitted(),
    @required Result initialized(User payer),
    @required Result amountToCreditChanged(MoneyAmount amount),
    @required Result creditTrustedPay(),
    @required Result searchUser(String userQuery),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result amountChanged(MoneyAmount amount),
    Result receiverChanged(User reciever),
    Result unlockDateChanged(ValidDate unlockDate),
    Result receiverSerchTermChanged(String searchTerm),
    Result submitted(),
    Result initialized(User payer),
    Result amountToCreditChanged(MoneyAmount amount),
    Result creditTrustedPay(),
    Result searchUser(String userQuery),
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
    @required Result amountChanged(_AmountChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required Result unlockDateChanged(_UnlockDateChanged value),
    @required Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    @required Result submitted(_Submitted value),
    @required Result initialized(_Initialized value),
    @required Result amountToCreditChanged(_AmountToCreditChanged value),
    @required Result creditTrustedPay(_CreditTrustedPay value),
    @required Result searchUser(_UserSearch value),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result amountChanged(_AmountChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result unlockDateChanged(_UnlockDateChanged value),
    Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    Result submitted(_Submitted value),
    Result initialized(_Initialized value),
    Result amountToCreditChanged(_AmountToCreditChanged value),
    Result creditTrustedPay(_CreditTrustedPay value),
    Result searchUser(_UserSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountChanged implements TrustedPayInputCollectorEvent {
  const factory _AmountChanged({@required MoneyAmount amount}) =
      _$_AmountChanged;

  MoneyAmount get amount;
  _$AmountChangedCopyWith<_AmountChanged> get copyWith;
}

/// @nodoc
abstract class _$ReceiverChangedCopyWith<$Res> {
  factory _$ReceiverChangedCopyWith(
          _ReceiverChanged value, $Res Function(_ReceiverChanged) then) =
      __$ReceiverChangedCopyWithImpl<$Res>;
  $Res call({User reciever});

  $UserCopyWith<$Res> get reciever;
}

/// @nodoc
class __$ReceiverChangedCopyWithImpl<$Res>
    extends _$TrustedPayInputCollectorEventCopyWithImpl<$Res>
    implements _$ReceiverChangedCopyWith<$Res> {
  __$ReceiverChangedCopyWithImpl(
      _ReceiverChanged _value, $Res Function(_ReceiverChanged) _then)
      : super(_value, (v) => _then(v as _ReceiverChanged));

  @override
  _ReceiverChanged get _value => super._value as _ReceiverChanged;

  @override
  $Res call({
    Object reciever = freezed,
  }) {
    return _then(_ReceiverChanged(
      reciever: reciever == freezed ? _value.reciever : reciever as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get reciever {
    if (_value.reciever == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.reciever, (value) {
      return _then(_value.copyWith(reciever: value));
    });
  }
}

/// @nodoc
class _$_ReceiverChanged
    with DiagnosticableTreeMixin
    implements _ReceiverChanged {
  const _$_ReceiverChanged({@required this.reciever})
      : assert(reciever != null);

  @override
  final User reciever;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedPayInputCollectorEvent.receiverChanged(reciever: $reciever)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TrustedPayInputCollectorEvent.receiverChanged'))
      ..add(DiagnosticsProperty('reciever', reciever));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReceiverChanged &&
            (identical(other.reciever, reciever) ||
                const DeepCollectionEquality()
                    .equals(other.reciever, reciever)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reciever);

  @override
  _$ReceiverChangedCopyWith<_ReceiverChanged> get copyWith =>
      __$ReceiverChangedCopyWithImpl<_ReceiverChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result amountChanged(MoneyAmount amount),
    @required Result receiverChanged(User reciever),
    @required Result unlockDateChanged(ValidDate unlockDate),
    @required Result receiverSerchTermChanged(String searchTerm),
    @required Result submitted(),
    @required Result initialized(User payer),
    @required Result amountToCreditChanged(MoneyAmount amount),
    @required Result creditTrustedPay(),
    @required Result searchUser(String userQuery),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return receiverChanged(reciever);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result amountChanged(MoneyAmount amount),
    Result receiverChanged(User reciever),
    Result unlockDateChanged(ValidDate unlockDate),
    Result receiverSerchTermChanged(String searchTerm),
    Result submitted(),
    Result initialized(User payer),
    Result amountToCreditChanged(MoneyAmount amount),
    Result creditTrustedPay(),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverChanged != null) {
      return receiverChanged(reciever);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result amountChanged(_AmountChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required Result unlockDateChanged(_UnlockDateChanged value),
    @required Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    @required Result submitted(_Submitted value),
    @required Result initialized(_Initialized value),
    @required Result amountToCreditChanged(_AmountToCreditChanged value),
    @required Result creditTrustedPay(_CreditTrustedPay value),
    @required Result searchUser(_UserSearch value),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return receiverChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result amountChanged(_AmountChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result unlockDateChanged(_UnlockDateChanged value),
    Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    Result submitted(_Submitted value),
    Result initialized(_Initialized value),
    Result amountToCreditChanged(_AmountToCreditChanged value),
    Result creditTrustedPay(_CreditTrustedPay value),
    Result searchUser(_UserSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverChanged != null) {
      return receiverChanged(this);
    }
    return orElse();
  }
}

abstract class _ReceiverChanged implements TrustedPayInputCollectorEvent {
  const factory _ReceiverChanged({@required User reciever}) =
      _$_ReceiverChanged;

  User get reciever;
  _$ReceiverChangedCopyWith<_ReceiverChanged> get copyWith;
}

/// @nodoc
abstract class _$UnlockDateChangedCopyWith<$Res> {
  factory _$UnlockDateChangedCopyWith(
          _UnlockDateChanged value, $Res Function(_UnlockDateChanged) then) =
      __$UnlockDateChangedCopyWithImpl<$Res>;
  $Res call({ValidDate unlockDate});
}

/// @nodoc
class __$UnlockDateChangedCopyWithImpl<$Res>
    extends _$TrustedPayInputCollectorEventCopyWithImpl<$Res>
    implements _$UnlockDateChangedCopyWith<$Res> {
  __$UnlockDateChangedCopyWithImpl(
      _UnlockDateChanged _value, $Res Function(_UnlockDateChanged) _then)
      : super(_value, (v) => _then(v as _UnlockDateChanged));

  @override
  _UnlockDateChanged get _value => super._value as _UnlockDateChanged;

  @override
  $Res call({
    Object unlockDate = freezed,
  }) {
    return _then(_UnlockDateChanged(
      unlockDate:
          unlockDate == freezed ? _value.unlockDate : unlockDate as ValidDate,
    ));
  }
}

/// @nodoc
class _$_UnlockDateChanged
    with DiagnosticableTreeMixin
    implements _UnlockDateChanged {
  const _$_UnlockDateChanged({@required this.unlockDate})
      : assert(unlockDate != null);

  @override
  final ValidDate unlockDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedPayInputCollectorEvent.unlockDateChanged(unlockDate: $unlockDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TrustedPayInputCollectorEvent.unlockDateChanged'))
      ..add(DiagnosticsProperty('unlockDate', unlockDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnlockDateChanged &&
            (identical(other.unlockDate, unlockDate) ||
                const DeepCollectionEquality()
                    .equals(other.unlockDate, unlockDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(unlockDate);

  @override
  _$UnlockDateChangedCopyWith<_UnlockDateChanged> get copyWith =>
      __$UnlockDateChangedCopyWithImpl<_UnlockDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result amountChanged(MoneyAmount amount),
    @required Result receiverChanged(User reciever),
    @required Result unlockDateChanged(ValidDate unlockDate),
    @required Result receiverSerchTermChanged(String searchTerm),
    @required Result submitted(),
    @required Result initialized(User payer),
    @required Result amountToCreditChanged(MoneyAmount amount),
    @required Result creditTrustedPay(),
    @required Result searchUser(String userQuery),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return unlockDateChanged(unlockDate);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result amountChanged(MoneyAmount amount),
    Result receiverChanged(User reciever),
    Result unlockDateChanged(ValidDate unlockDate),
    Result receiverSerchTermChanged(String searchTerm),
    Result submitted(),
    Result initialized(User payer),
    Result amountToCreditChanged(MoneyAmount amount),
    Result creditTrustedPay(),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unlockDateChanged != null) {
      return unlockDateChanged(unlockDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result amountChanged(_AmountChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required Result unlockDateChanged(_UnlockDateChanged value),
    @required Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    @required Result submitted(_Submitted value),
    @required Result initialized(_Initialized value),
    @required Result amountToCreditChanged(_AmountToCreditChanged value),
    @required Result creditTrustedPay(_CreditTrustedPay value),
    @required Result searchUser(_UserSearch value),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return unlockDateChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result amountChanged(_AmountChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result unlockDateChanged(_UnlockDateChanged value),
    Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    Result submitted(_Submitted value),
    Result initialized(_Initialized value),
    Result amountToCreditChanged(_AmountToCreditChanged value),
    Result creditTrustedPay(_CreditTrustedPay value),
    Result searchUser(_UserSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unlockDateChanged != null) {
      return unlockDateChanged(this);
    }
    return orElse();
  }
}

abstract class _UnlockDateChanged implements TrustedPayInputCollectorEvent {
  const factory _UnlockDateChanged({@required ValidDate unlockDate}) =
      _$_UnlockDateChanged;

  ValidDate get unlockDate;
  _$UnlockDateChangedCopyWith<_UnlockDateChanged> get copyWith;
}

/// @nodoc
abstract class _$ReceiverSearchTermChangedCopyWith<$Res> {
  factory _$ReceiverSearchTermChangedCopyWith(_ReceiverSearchTermChanged value,
          $Res Function(_ReceiverSearchTermChanged) then) =
      __$ReceiverSearchTermChangedCopyWithImpl<$Res>;
  $Res call({String searchTerm});
}

/// @nodoc
class __$ReceiverSearchTermChangedCopyWithImpl<$Res>
    extends _$TrustedPayInputCollectorEventCopyWithImpl<$Res>
    implements _$ReceiverSearchTermChangedCopyWith<$Res> {
  __$ReceiverSearchTermChangedCopyWithImpl(_ReceiverSearchTermChanged _value,
      $Res Function(_ReceiverSearchTermChanged) _then)
      : super(_value, (v) => _then(v as _ReceiverSearchTermChanged));

  @override
  _ReceiverSearchTermChanged get _value =>
      super._value as _ReceiverSearchTermChanged;

  @override
  $Res call({
    Object searchTerm = freezed,
  }) {
    return _then(_ReceiverSearchTermChanged(
      searchTerm:
          searchTerm == freezed ? _value.searchTerm : searchTerm as String,
    ));
  }
}

/// @nodoc
class _$_ReceiverSearchTermChanged
    with DiagnosticableTreeMixin
    implements _ReceiverSearchTermChanged {
  const _$_ReceiverSearchTermChanged({@required this.searchTerm})
      : assert(searchTerm != null);

  @override
  final String searchTerm;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedPayInputCollectorEvent.receiverSerchTermChanged(searchTerm: $searchTerm)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TrustedPayInputCollectorEvent.receiverSerchTermChanged'))
      ..add(DiagnosticsProperty('searchTerm', searchTerm));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReceiverSearchTermChanged &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTerm);

  @override
  _$ReceiverSearchTermChangedCopyWith<_ReceiverSearchTermChanged>
      get copyWith =>
          __$ReceiverSearchTermChangedCopyWithImpl<_ReceiverSearchTermChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result amountChanged(MoneyAmount amount),
    @required Result receiverChanged(User reciever),
    @required Result unlockDateChanged(ValidDate unlockDate),
    @required Result receiverSerchTermChanged(String searchTerm),
    @required Result submitted(),
    @required Result initialized(User payer),
    @required Result amountToCreditChanged(MoneyAmount amount),
    @required Result creditTrustedPay(),
    @required Result searchUser(String userQuery),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return receiverSerchTermChanged(searchTerm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result amountChanged(MoneyAmount amount),
    Result receiverChanged(User reciever),
    Result unlockDateChanged(ValidDate unlockDate),
    Result receiverSerchTermChanged(String searchTerm),
    Result submitted(),
    Result initialized(User payer),
    Result amountToCreditChanged(MoneyAmount amount),
    Result creditTrustedPay(),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverSerchTermChanged != null) {
      return receiverSerchTermChanged(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result amountChanged(_AmountChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required Result unlockDateChanged(_UnlockDateChanged value),
    @required Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    @required Result submitted(_Submitted value),
    @required Result initialized(_Initialized value),
    @required Result amountToCreditChanged(_AmountToCreditChanged value),
    @required Result creditTrustedPay(_CreditTrustedPay value),
    @required Result searchUser(_UserSearch value),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return receiverSerchTermChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result amountChanged(_AmountChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result unlockDateChanged(_UnlockDateChanged value),
    Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    Result submitted(_Submitted value),
    Result initialized(_Initialized value),
    Result amountToCreditChanged(_AmountToCreditChanged value),
    Result creditTrustedPay(_CreditTrustedPay value),
    Result searchUser(_UserSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverSerchTermChanged != null) {
      return receiverSerchTermChanged(this);
    }
    return orElse();
  }
}

abstract class _ReceiverSearchTermChanged
    implements TrustedPayInputCollectorEvent {
  const factory _ReceiverSearchTermChanged({@required String searchTerm}) =
      _$_ReceiverSearchTermChanged;

  String get searchTerm;
  _$ReceiverSearchTermChangedCopyWith<_ReceiverSearchTermChanged> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$TrustedPayInputCollectorEventCopyWithImpl<$Res>
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
    return 'TrustedPayInputCollectorEvent.submitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TrustedPayInputCollectorEvent.submitted'));
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
    @required Result amountChanged(MoneyAmount amount),
    @required Result receiverChanged(User reciever),
    @required Result unlockDateChanged(ValidDate unlockDate),
    @required Result receiverSerchTermChanged(String searchTerm),
    @required Result submitted(),
    @required Result initialized(User payer),
    @required Result amountToCreditChanged(MoneyAmount amount),
    @required Result creditTrustedPay(),
    @required Result searchUser(String userQuery),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result amountChanged(MoneyAmount amount),
    Result receiverChanged(User reciever),
    Result unlockDateChanged(ValidDate unlockDate),
    Result receiverSerchTermChanged(String searchTerm),
    Result submitted(),
    Result initialized(User payer),
    Result amountToCreditChanged(MoneyAmount amount),
    Result creditTrustedPay(),
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
    @required Result amountChanged(_AmountChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required Result unlockDateChanged(_UnlockDateChanged value),
    @required Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    @required Result submitted(_Submitted value),
    @required Result initialized(_Initialized value),
    @required Result amountToCreditChanged(_AmountToCreditChanged value),
    @required Result creditTrustedPay(_CreditTrustedPay value),
    @required Result searchUser(_UserSearch value),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result amountChanged(_AmountChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result unlockDateChanged(_UnlockDateChanged value),
    Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    Result submitted(_Submitted value),
    Result initialized(_Initialized value),
    Result amountToCreditChanged(_AmountToCreditChanged value),
    Result creditTrustedPay(_CreditTrustedPay value),
    Result searchUser(_UserSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements TrustedPayInputCollectorEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({User payer});

  $UserCopyWith<$Res> get payer;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$TrustedPayInputCollectorEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object payer = freezed,
  }) {
    return _then(_Initialized(
      payer == freezed ? _value.payer : payer as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get payer {
    if (_value.payer == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.payer, (value) {
      return _then(_value.copyWith(payer: value));
    });
  }
}

/// @nodoc
class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.payer) : assert(payer != null);

  @override
  final User payer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedPayInputCollectorEvent.initialized(payer: $payer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TrustedPayInputCollectorEvent.initialized'))
      ..add(DiagnosticsProperty('payer', payer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.payer, payer) ||
                const DeepCollectionEquality().equals(other.payer, payer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payer);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result amountChanged(MoneyAmount amount),
    @required Result receiverChanged(User reciever),
    @required Result unlockDateChanged(ValidDate unlockDate),
    @required Result receiverSerchTermChanged(String searchTerm),
    @required Result submitted(),
    @required Result initialized(User payer),
    @required Result amountToCreditChanged(MoneyAmount amount),
    @required Result creditTrustedPay(),
    @required Result searchUser(String userQuery),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return initialized(payer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result amountChanged(MoneyAmount amount),
    Result receiverChanged(User reciever),
    Result unlockDateChanged(ValidDate unlockDate),
    Result receiverSerchTermChanged(String searchTerm),
    Result submitted(),
    Result initialized(User payer),
    Result amountToCreditChanged(MoneyAmount amount),
    Result creditTrustedPay(),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(payer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result amountChanged(_AmountChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required Result unlockDateChanged(_UnlockDateChanged value),
    @required Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    @required Result submitted(_Submitted value),
    @required Result initialized(_Initialized value),
    @required Result amountToCreditChanged(_AmountToCreditChanged value),
    @required Result creditTrustedPay(_CreditTrustedPay value),
    @required Result searchUser(_UserSearch value),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result amountChanged(_AmountChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result unlockDateChanged(_UnlockDateChanged value),
    Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    Result submitted(_Submitted value),
    Result initialized(_Initialized value),
    Result amountToCreditChanged(_AmountToCreditChanged value),
    Result creditTrustedPay(_CreditTrustedPay value),
    Result searchUser(_UserSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TrustedPayInputCollectorEvent {
  const factory _Initialized(User payer) = _$_Initialized;

  User get payer;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$AmountToCreditChangedCopyWith<$Res> {
  factory _$AmountToCreditChangedCopyWith(_AmountToCreditChanged value,
          $Res Function(_AmountToCreditChanged) then) =
      __$AmountToCreditChangedCopyWithImpl<$Res>;
  $Res call({MoneyAmount amount});
}

/// @nodoc
class __$AmountToCreditChangedCopyWithImpl<$Res>
    extends _$TrustedPayInputCollectorEventCopyWithImpl<$Res>
    implements _$AmountToCreditChangedCopyWith<$Res> {
  __$AmountToCreditChangedCopyWithImpl(_AmountToCreditChanged _value,
      $Res Function(_AmountToCreditChanged) _then)
      : super(_value, (v) => _then(v as _AmountToCreditChanged));

  @override
  _AmountToCreditChanged get _value => super._value as _AmountToCreditChanged;

  @override
  $Res call({
    Object amount = freezed,
  }) {
    return _then(_AmountToCreditChanged(
      amount: amount == freezed ? _value.amount : amount as MoneyAmount,
    ));
  }
}

/// @nodoc
class _$_AmountToCreditChanged
    with DiagnosticableTreeMixin
    implements _AmountToCreditChanged {
  const _$_AmountToCreditChanged({@required this.amount})
      : assert(amount != null);

  @override
  final MoneyAmount amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedPayInputCollectorEvent.amountToCreditChanged(amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TrustedPayInputCollectorEvent.amountToCreditChanged'))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AmountToCreditChanged &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @override
  _$AmountToCreditChangedCopyWith<_AmountToCreditChanged> get copyWith =>
      __$AmountToCreditChangedCopyWithImpl<_AmountToCreditChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result amountChanged(MoneyAmount amount),
    @required Result receiverChanged(User reciever),
    @required Result unlockDateChanged(ValidDate unlockDate),
    @required Result receiverSerchTermChanged(String searchTerm),
    @required Result submitted(),
    @required Result initialized(User payer),
    @required Result amountToCreditChanged(MoneyAmount amount),
    @required Result creditTrustedPay(),
    @required Result searchUser(String userQuery),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return amountToCreditChanged(amount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result amountChanged(MoneyAmount amount),
    Result receiverChanged(User reciever),
    Result unlockDateChanged(ValidDate unlockDate),
    Result receiverSerchTermChanged(String searchTerm),
    Result submitted(),
    Result initialized(User payer),
    Result amountToCreditChanged(MoneyAmount amount),
    Result creditTrustedPay(),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (amountToCreditChanged != null) {
      return amountToCreditChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result amountChanged(_AmountChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required Result unlockDateChanged(_UnlockDateChanged value),
    @required Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    @required Result submitted(_Submitted value),
    @required Result initialized(_Initialized value),
    @required Result amountToCreditChanged(_AmountToCreditChanged value),
    @required Result creditTrustedPay(_CreditTrustedPay value),
    @required Result searchUser(_UserSearch value),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return amountToCreditChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result amountChanged(_AmountChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result unlockDateChanged(_UnlockDateChanged value),
    Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    Result submitted(_Submitted value),
    Result initialized(_Initialized value),
    Result amountToCreditChanged(_AmountToCreditChanged value),
    Result creditTrustedPay(_CreditTrustedPay value),
    Result searchUser(_UserSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (amountToCreditChanged != null) {
      return amountToCreditChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountToCreditChanged implements TrustedPayInputCollectorEvent {
  const factory _AmountToCreditChanged({@required MoneyAmount amount}) =
      _$_AmountToCreditChanged;

  MoneyAmount get amount;
  _$AmountToCreditChangedCopyWith<_AmountToCreditChanged> get copyWith;
}

/// @nodoc
abstract class _$CreditTrustedPayCopyWith<$Res> {
  factory _$CreditTrustedPayCopyWith(
          _CreditTrustedPay value, $Res Function(_CreditTrustedPay) then) =
      __$CreditTrustedPayCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreditTrustedPayCopyWithImpl<$Res>
    extends _$TrustedPayInputCollectorEventCopyWithImpl<$Res>
    implements _$CreditTrustedPayCopyWith<$Res> {
  __$CreditTrustedPayCopyWithImpl(
      _CreditTrustedPay _value, $Res Function(_CreditTrustedPay) _then)
      : super(_value, (v) => _then(v as _CreditTrustedPay));

  @override
  _CreditTrustedPay get _value => super._value as _CreditTrustedPay;
}

/// @nodoc
class _$_CreditTrustedPay
    with DiagnosticableTreeMixin
    implements _CreditTrustedPay {
  const _$_CreditTrustedPay();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedPayInputCollectorEvent.creditTrustedPay()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TrustedPayInputCollectorEvent.creditTrustedPay'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreditTrustedPay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result amountChanged(MoneyAmount amount),
    @required Result receiverChanged(User reciever),
    @required Result unlockDateChanged(ValidDate unlockDate),
    @required Result receiverSerchTermChanged(String searchTerm),
    @required Result submitted(),
    @required Result initialized(User payer),
    @required Result amountToCreditChanged(MoneyAmount amount),
    @required Result creditTrustedPay(),
    @required Result searchUser(String userQuery),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return creditTrustedPay();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result amountChanged(MoneyAmount amount),
    Result receiverChanged(User reciever),
    Result unlockDateChanged(ValidDate unlockDate),
    Result receiverSerchTermChanged(String searchTerm),
    Result submitted(),
    Result initialized(User payer),
    Result amountToCreditChanged(MoneyAmount amount),
    Result creditTrustedPay(),
    Result searchUser(String userQuery),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (creditTrustedPay != null) {
      return creditTrustedPay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result amountChanged(_AmountChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required Result unlockDateChanged(_UnlockDateChanged value),
    @required Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    @required Result submitted(_Submitted value),
    @required Result initialized(_Initialized value),
    @required Result amountToCreditChanged(_AmountToCreditChanged value),
    @required Result creditTrustedPay(_CreditTrustedPay value),
    @required Result searchUser(_UserSearch value),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return creditTrustedPay(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result amountChanged(_AmountChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result unlockDateChanged(_UnlockDateChanged value),
    Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    Result submitted(_Submitted value),
    Result initialized(_Initialized value),
    Result amountToCreditChanged(_AmountToCreditChanged value),
    Result creditTrustedPay(_CreditTrustedPay value),
    Result searchUser(_UserSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (creditTrustedPay != null) {
      return creditTrustedPay(this);
    }
    return orElse();
  }
}

abstract class _CreditTrustedPay implements TrustedPayInputCollectorEvent {
  const factory _CreditTrustedPay() = _$_CreditTrustedPay;
}

/// @nodoc
abstract class _$UserSearchCopyWith<$Res> {
  factory _$UserSearchCopyWith(
          _UserSearch value, $Res Function(_UserSearch) then) =
      __$UserSearchCopyWithImpl<$Res>;
  $Res call({String userQuery});
}

/// @nodoc
class __$UserSearchCopyWithImpl<$Res>
    extends _$TrustedPayInputCollectorEventCopyWithImpl<$Res>
    implements _$UserSearchCopyWith<$Res> {
  __$UserSearchCopyWithImpl(
      _UserSearch _value, $Res Function(_UserSearch) _then)
      : super(_value, (v) => _then(v as _UserSearch));

  @override
  _UserSearch get _value => super._value as _UserSearch;

  @override
  $Res call({
    Object userQuery = freezed,
  }) {
    return _then(_UserSearch(
      userQuery == freezed ? _value.userQuery : userQuery as String,
    ));
  }
}

/// @nodoc
class _$_UserSearch with DiagnosticableTreeMixin implements _UserSearch {
  const _$_UserSearch(this.userQuery) : assert(userQuery != null);

  @override
  final String userQuery;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedPayInputCollectorEvent.searchUser(userQuery: $userQuery)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TrustedPayInputCollectorEvent.searchUser'))
      ..add(DiagnosticsProperty('userQuery', userQuery));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSearch &&
            (identical(other.userQuery, userQuery) ||
                const DeepCollectionEquality()
                    .equals(other.userQuery, userQuery)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userQuery);

  @override
  _$UserSearchCopyWith<_UserSearch> get copyWith =>
      __$UserSearchCopyWithImpl<_UserSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result amountChanged(MoneyAmount amount),
    @required Result receiverChanged(User reciever),
    @required Result unlockDateChanged(ValidDate unlockDate),
    @required Result receiverSerchTermChanged(String searchTerm),
    @required Result submitted(),
    @required Result initialized(User payer),
    @required Result amountToCreditChanged(MoneyAmount amount),
    @required Result creditTrustedPay(),
    @required Result searchUser(String userQuery),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return searchUser(userQuery);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result amountChanged(MoneyAmount amount),
    Result receiverChanged(User reciever),
    Result unlockDateChanged(ValidDate unlockDate),
    Result receiverSerchTermChanged(String searchTerm),
    Result submitted(),
    Result initialized(User payer),
    Result amountToCreditChanged(MoneyAmount amount),
    Result creditTrustedPay(),
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
    @required Result amountChanged(_AmountChanged value),
    @required Result receiverChanged(_ReceiverChanged value),
    @required Result unlockDateChanged(_UnlockDateChanged value),
    @required Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    @required Result submitted(_Submitted value),
    @required Result initialized(_Initialized value),
    @required Result amountToCreditChanged(_AmountToCreditChanged value),
    @required Result creditTrustedPay(_CreditTrustedPay value),
    @required Result searchUser(_UserSearch value),
  }) {
    assert(amountChanged != null);
    assert(receiverChanged != null);
    assert(unlockDateChanged != null);
    assert(receiverSerchTermChanged != null);
    assert(submitted != null);
    assert(initialized != null);
    assert(amountToCreditChanged != null);
    assert(creditTrustedPay != null);
    assert(searchUser != null);
    return searchUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result amountChanged(_AmountChanged value),
    Result receiverChanged(_ReceiverChanged value),
    Result unlockDateChanged(_UnlockDateChanged value),
    Result receiverSerchTermChanged(_ReceiverSearchTermChanged value),
    Result submitted(_Submitted value),
    Result initialized(_Initialized value),
    Result amountToCreditChanged(_AmountToCreditChanged value),
    Result creditTrustedPay(_CreditTrustedPay value),
    Result searchUser(_UserSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchUser != null) {
      return searchUser(this);
    }
    return orElse();
  }
}

abstract class _UserSearch implements TrustedPayInputCollectorEvent {
  const factory _UserSearch(String userQuery) = _$_UserSearch;

  String get userQuery;
  _$UserSearchCopyWith<_UserSearch> get copyWith;
}

/// @nodoc
class _$TrustedPayInputCollectorStateTearOff {
  const _$TrustedPayInputCollectorStateTearOff();

// ignore: unused_element
  _TrustedPayInputCollectorState call(
      {@required
          bool showErrorMessage,
      @required
          bool isSaving,
      @required
          bool isEditing,
      @required
          bool userFound,
      @required
          Payment payment,
      @required
          Option<Either<PaymentFailure, Unit>> saveFailureOrSuccessOption}) {
    return _TrustedPayInputCollectorState(
      showErrorMessage: showErrorMessage,
      isSaving: isSaving,
      isEditing: isEditing,
      userFound: userFound,
      payment: payment,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TrustedPayInputCollectorState = _$TrustedPayInputCollectorStateTearOff();

/// @nodoc
mixin _$TrustedPayInputCollectorState {
  bool get showErrorMessage;
  bool get isSaving;
  bool get isEditing;
  bool get userFound;
  Payment get payment;
  Option<Either<PaymentFailure, Unit>> get saveFailureOrSuccessOption;

  $TrustedPayInputCollectorStateCopyWith<TrustedPayInputCollectorState>
      get copyWith;
}

/// @nodoc
abstract class $TrustedPayInputCollectorStateCopyWith<$Res> {
  factory $TrustedPayInputCollectorStateCopyWith(
          TrustedPayInputCollectorState value,
          $Res Function(TrustedPayInputCollectorState) then) =
      _$TrustedPayInputCollectorStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessage,
      bool isSaving,
      bool isEditing,
      bool userFound,
      Payment payment,
      Option<Either<PaymentFailure, Unit>> saveFailureOrSuccessOption});

  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class _$TrustedPayInputCollectorStateCopyWithImpl<$Res>
    implements $TrustedPayInputCollectorStateCopyWith<$Res> {
  _$TrustedPayInputCollectorStateCopyWithImpl(this._value, this._then);

  final TrustedPayInputCollectorState _value;
  // ignore: unused_field
  final $Res Function(TrustedPayInputCollectorState) _then;

  @override
  $Res call({
    Object showErrorMessage = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object userFound = freezed,
    Object payment = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      userFound: userFound == freezed ? _value.userFound : userFound as bool,
      payment: payment == freezed ? _value.payment : payment as Payment,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<PaymentFailure, Unit>>,
    ));
  }

  @override
  $PaymentCopyWith<$Res> get payment {
    if (_value.payment == null) {
      return null;
    }
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc
abstract class _$TrustedPayInputCollectorStateCopyWith<$Res>
    implements $TrustedPayInputCollectorStateCopyWith<$Res> {
  factory _$TrustedPayInputCollectorStateCopyWith(
          _TrustedPayInputCollectorState value,
          $Res Function(_TrustedPayInputCollectorState) then) =
      __$TrustedPayInputCollectorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessage,
      bool isSaving,
      bool isEditing,
      bool userFound,
      Payment payment,
      Option<Either<PaymentFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$TrustedPayInputCollectorStateCopyWithImpl<$Res>
    extends _$TrustedPayInputCollectorStateCopyWithImpl<$Res>
    implements _$TrustedPayInputCollectorStateCopyWith<$Res> {
  __$TrustedPayInputCollectorStateCopyWithImpl(
      _TrustedPayInputCollectorState _value,
      $Res Function(_TrustedPayInputCollectorState) _then)
      : super(_value, (v) => _then(v as _TrustedPayInputCollectorState));

  @override
  _TrustedPayInputCollectorState get _value =>
      super._value as _TrustedPayInputCollectorState;

  @override
  $Res call({
    Object showErrorMessage = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object userFound = freezed,
    Object payment = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_TrustedPayInputCollectorState(
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      userFound: userFound == freezed ? _value.userFound : userFound as bool,
      payment: payment == freezed ? _value.payment : payment as Payment,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<PaymentFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_TrustedPayInputCollectorState
    with DiagnosticableTreeMixin
    implements _TrustedPayInputCollectorState {
  const _$_TrustedPayInputCollectorState(
      {@required this.showErrorMessage,
      @required this.isSaving,
      @required this.isEditing,
      @required this.userFound,
      @required this.payment,
      @required this.saveFailureOrSuccessOption})
      : assert(showErrorMessage != null),
        assert(isSaving != null),
        assert(isEditing != null),
        assert(userFound != null),
        assert(payment != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final bool showErrorMessage;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final bool userFound;
  @override
  final Payment payment;
  @override
  final Option<Either<PaymentFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrustedPayInputCollectorState(showErrorMessage: $showErrorMessage, isSaving: $isSaving, isEditing: $isEditing, userFound: $userFound, payment: $payment, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrustedPayInputCollectorState'))
      ..add(DiagnosticsProperty('showErrorMessage', showErrorMessage))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('userFound', userFound))
      ..add(DiagnosticsProperty('payment', payment))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrustedPayInputCollectorState &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.userFound, userFound) ||
                const DeepCollectionEquality()
                    .equals(other.userFound, userFound)) &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality()
                    .equals(other.payment, payment)) &&
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
      const DeepCollectionEquality().hash(userFound) ^
      const DeepCollectionEquality().hash(payment) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$TrustedPayInputCollectorStateCopyWith<_TrustedPayInputCollectorState>
      get copyWith => __$TrustedPayInputCollectorStateCopyWithImpl<
          _TrustedPayInputCollectorState>(this, _$identity);
}

abstract class _TrustedPayInputCollectorState
    implements TrustedPayInputCollectorState {
  const factory _TrustedPayInputCollectorState(
      {@required
          bool showErrorMessage,
      @required
          bool isSaving,
      @required
          bool isEditing,
      @required
          bool userFound,
      @required
          Payment payment,
      @required
          Option<Either<PaymentFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_TrustedPayInputCollectorState;

  @override
  bool get showErrorMessage;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  bool get userFound;
  @override
  Payment get payment;
  @override
  Option<Either<PaymentFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$TrustedPayInputCollectorStateCopyWith<_TrustedPayInputCollectorState>
      get copyWith;
}
