// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quick_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QuickPaymentEventTearOff {
  const _$QuickPaymentEventTearOff();

// ignore: unused_element
  _InitializeToken initialize(User requester) {
    return _InitializeToken(
      requester,
    );
  }

// ignore: unused_element
  _TokenScanned tokenScanned(String scannedToken) {
    return _TokenScanned(
      scannedToken,
    );
  }

// ignore: unused_element
  _RequestPayment requestPayment(MoneyAmount amount) {
    return _RequestPayment(
      amount,
    );
  }

// ignore: unused_element
  _ValidatePayment validatePayment(User requester) {
    return _ValidatePayment(
      requester,
    );
  }

// ignore: unused_element
  _ResetToken resetToken() {
    return const _ResetToken();
  }

// ignore: unused_element
  _AutoCash autoCash(QuickPayment payment) {
    return _AutoCash(
      payment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuickPaymentEvent = _$QuickPaymentEventTearOff();

/// @nodoc
mixin _$QuickPaymentEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User requester),
    @required Result tokenScanned(String scannedToken),
    @required Result requestPayment(MoneyAmount amount),
    @required Result validatePayment(User requester),
    @required Result resetToken(),
    @required Result autoCash(QuickPayment payment),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User requester),
    Result tokenScanned(String scannedToken),
    Result requestPayment(MoneyAmount amount),
    Result validatePayment(User requester),
    Result resetToken(),
    Result autoCash(QuickPayment payment),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeToken value),
    @required Result tokenScanned(_TokenScanned value),
    @required Result requestPayment(_RequestPayment value),
    @required Result validatePayment(_ValidatePayment value),
    @required Result resetToken(_ResetToken value),
    @required Result autoCash(_AutoCash value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeToken value),
    Result tokenScanned(_TokenScanned value),
    Result requestPayment(_RequestPayment value),
    Result validatePayment(_ValidatePayment value),
    Result resetToken(_ResetToken value),
    Result autoCash(_AutoCash value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $QuickPaymentEventCopyWith<$Res> {
  factory $QuickPaymentEventCopyWith(
          QuickPaymentEvent value, $Res Function(QuickPaymentEvent) then) =
      _$QuickPaymentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuickPaymentEventCopyWithImpl<$Res>
    implements $QuickPaymentEventCopyWith<$Res> {
  _$QuickPaymentEventCopyWithImpl(this._value, this._then);

  final QuickPaymentEvent _value;
  // ignore: unused_field
  final $Res Function(QuickPaymentEvent) _then;
}

/// @nodoc
abstract class _$InitializeTokenCopyWith<$Res> {
  factory _$InitializeTokenCopyWith(
          _InitializeToken value, $Res Function(_InitializeToken) then) =
      __$InitializeTokenCopyWithImpl<$Res>;
  $Res call({User requester});

  $UserCopyWith<$Res> get requester;
}

/// @nodoc
class __$InitializeTokenCopyWithImpl<$Res>
    extends _$QuickPaymentEventCopyWithImpl<$Res>
    implements _$InitializeTokenCopyWith<$Res> {
  __$InitializeTokenCopyWithImpl(
      _InitializeToken _value, $Res Function(_InitializeToken) _then)
      : super(_value, (v) => _then(v as _InitializeToken));

  @override
  _InitializeToken get _value => super._value as _InitializeToken;

  @override
  $Res call({
    Object requester = freezed,
  }) {
    return _then(_InitializeToken(
      requester == freezed ? _value.requester : requester as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get requester {
    if (_value.requester == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.requester, (value) {
      return _then(_value.copyWith(requester: value));
    });
  }
}

/// @nodoc
class _$_InitializeToken
    with DiagnosticableTreeMixin
    implements _InitializeToken {
  const _$_InitializeToken(this.requester) : assert(requester != null);

  @override
  final User requester;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuickPaymentEvent.initialize(requester: $requester)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuickPaymentEvent.initialize'))
      ..add(DiagnosticsProperty('requester', requester));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitializeToken &&
            (identical(other.requester, requester) ||
                const DeepCollectionEquality()
                    .equals(other.requester, requester)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requester);

  @override
  _$InitializeTokenCopyWith<_InitializeToken> get copyWith =>
      __$InitializeTokenCopyWithImpl<_InitializeToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User requester),
    @required Result tokenScanned(String scannedToken),
    @required Result requestPayment(MoneyAmount amount),
    @required Result validatePayment(User requester),
    @required Result resetToken(),
    @required Result autoCash(QuickPayment payment),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return initialize(requester);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User requester),
    Result tokenScanned(String scannedToken),
    Result requestPayment(MoneyAmount amount),
    Result validatePayment(User requester),
    Result resetToken(),
    Result autoCash(QuickPayment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(requester);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeToken value),
    @required Result tokenScanned(_TokenScanned value),
    @required Result requestPayment(_RequestPayment value),
    @required Result validatePayment(_ValidatePayment value),
    @required Result resetToken(_ResetToken value),
    @required Result autoCash(_AutoCash value),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeToken value),
    Result tokenScanned(_TokenScanned value),
    Result requestPayment(_RequestPayment value),
    Result validatePayment(_ValidatePayment value),
    Result resetToken(_ResetToken value),
    Result autoCash(_AutoCash value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _InitializeToken implements QuickPaymentEvent {
  const factory _InitializeToken(User requester) = _$_InitializeToken;

  User get requester;
  _$InitializeTokenCopyWith<_InitializeToken> get copyWith;
}

/// @nodoc
abstract class _$TokenScannedCopyWith<$Res> {
  factory _$TokenScannedCopyWith(
          _TokenScanned value, $Res Function(_TokenScanned) then) =
      __$TokenScannedCopyWithImpl<$Res>;
  $Res call({String scannedToken});
}

/// @nodoc
class __$TokenScannedCopyWithImpl<$Res>
    extends _$QuickPaymentEventCopyWithImpl<$Res>
    implements _$TokenScannedCopyWith<$Res> {
  __$TokenScannedCopyWithImpl(
      _TokenScanned _value, $Res Function(_TokenScanned) _then)
      : super(_value, (v) => _then(v as _TokenScanned));

  @override
  _TokenScanned get _value => super._value as _TokenScanned;

  @override
  $Res call({
    Object scannedToken = freezed,
  }) {
    return _then(_TokenScanned(
      scannedToken == freezed ? _value.scannedToken : scannedToken as String,
    ));
  }
}

/// @nodoc
class _$_TokenScanned with DiagnosticableTreeMixin implements _TokenScanned {
  const _$_TokenScanned(this.scannedToken) : assert(scannedToken != null);

  @override
  final String scannedToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuickPaymentEvent.tokenScanned(scannedToken: $scannedToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuickPaymentEvent.tokenScanned'))
      ..add(DiagnosticsProperty('scannedToken', scannedToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenScanned &&
            (identical(other.scannedToken, scannedToken) ||
                const DeepCollectionEquality()
                    .equals(other.scannedToken, scannedToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(scannedToken);

  @override
  _$TokenScannedCopyWith<_TokenScanned> get copyWith =>
      __$TokenScannedCopyWithImpl<_TokenScanned>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User requester),
    @required Result tokenScanned(String scannedToken),
    @required Result requestPayment(MoneyAmount amount),
    @required Result validatePayment(User requester),
    @required Result resetToken(),
    @required Result autoCash(QuickPayment payment),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return tokenScanned(scannedToken);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User requester),
    Result tokenScanned(String scannedToken),
    Result requestPayment(MoneyAmount amount),
    Result validatePayment(User requester),
    Result resetToken(),
    Result autoCash(QuickPayment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tokenScanned != null) {
      return tokenScanned(scannedToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeToken value),
    @required Result tokenScanned(_TokenScanned value),
    @required Result requestPayment(_RequestPayment value),
    @required Result validatePayment(_ValidatePayment value),
    @required Result resetToken(_ResetToken value),
    @required Result autoCash(_AutoCash value),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return tokenScanned(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeToken value),
    Result tokenScanned(_TokenScanned value),
    Result requestPayment(_RequestPayment value),
    Result validatePayment(_ValidatePayment value),
    Result resetToken(_ResetToken value),
    Result autoCash(_AutoCash value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tokenScanned != null) {
      return tokenScanned(this);
    }
    return orElse();
  }
}

abstract class _TokenScanned implements QuickPaymentEvent {
  const factory _TokenScanned(String scannedToken) = _$_TokenScanned;

  String get scannedToken;
  _$TokenScannedCopyWith<_TokenScanned> get copyWith;
}

/// @nodoc
abstract class _$RequestPaymentCopyWith<$Res> {
  factory _$RequestPaymentCopyWith(
          _RequestPayment value, $Res Function(_RequestPayment) then) =
      __$RequestPaymentCopyWithImpl<$Res>;
  $Res call({MoneyAmount amount});
}

/// @nodoc
class __$RequestPaymentCopyWithImpl<$Res>
    extends _$QuickPaymentEventCopyWithImpl<$Res>
    implements _$RequestPaymentCopyWith<$Res> {
  __$RequestPaymentCopyWithImpl(
      _RequestPayment _value, $Res Function(_RequestPayment) _then)
      : super(_value, (v) => _then(v as _RequestPayment));

  @override
  _RequestPayment get _value => super._value as _RequestPayment;

  @override
  $Res call({
    Object amount = freezed,
  }) {
    return _then(_RequestPayment(
      amount == freezed ? _value.amount : amount as MoneyAmount,
    ));
  }
}

/// @nodoc
class _$_RequestPayment
    with DiagnosticableTreeMixin
    implements _RequestPayment {
  const _$_RequestPayment(this.amount) : assert(amount != null);

  @override
  final MoneyAmount amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuickPaymentEvent.requestPayment(amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuickPaymentEvent.requestPayment'))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestPayment &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @override
  _$RequestPaymentCopyWith<_RequestPayment> get copyWith =>
      __$RequestPaymentCopyWithImpl<_RequestPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User requester),
    @required Result tokenScanned(String scannedToken),
    @required Result requestPayment(MoneyAmount amount),
    @required Result validatePayment(User requester),
    @required Result resetToken(),
    @required Result autoCash(QuickPayment payment),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return requestPayment(amount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User requester),
    Result tokenScanned(String scannedToken),
    Result requestPayment(MoneyAmount amount),
    Result validatePayment(User requester),
    Result resetToken(),
    Result autoCash(QuickPayment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestPayment != null) {
      return requestPayment(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeToken value),
    @required Result tokenScanned(_TokenScanned value),
    @required Result requestPayment(_RequestPayment value),
    @required Result validatePayment(_ValidatePayment value),
    @required Result resetToken(_ResetToken value),
    @required Result autoCash(_AutoCash value),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return requestPayment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeToken value),
    Result tokenScanned(_TokenScanned value),
    Result requestPayment(_RequestPayment value),
    Result validatePayment(_ValidatePayment value),
    Result resetToken(_ResetToken value),
    Result autoCash(_AutoCash value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestPayment != null) {
      return requestPayment(this);
    }
    return orElse();
  }
}

abstract class _RequestPayment implements QuickPaymentEvent {
  const factory _RequestPayment(MoneyAmount amount) = _$_RequestPayment;

  MoneyAmount get amount;
  _$RequestPaymentCopyWith<_RequestPayment> get copyWith;
}

/// @nodoc
abstract class _$ValidatePaymentCopyWith<$Res> {
  factory _$ValidatePaymentCopyWith(
          _ValidatePayment value, $Res Function(_ValidatePayment) then) =
      __$ValidatePaymentCopyWithImpl<$Res>;
  $Res call({User requester});

  $UserCopyWith<$Res> get requester;
}

/// @nodoc
class __$ValidatePaymentCopyWithImpl<$Res>
    extends _$QuickPaymentEventCopyWithImpl<$Res>
    implements _$ValidatePaymentCopyWith<$Res> {
  __$ValidatePaymentCopyWithImpl(
      _ValidatePayment _value, $Res Function(_ValidatePayment) _then)
      : super(_value, (v) => _then(v as _ValidatePayment));

  @override
  _ValidatePayment get _value => super._value as _ValidatePayment;

  @override
  $Res call({
    Object requester = freezed,
  }) {
    return _then(_ValidatePayment(
      requester == freezed ? _value.requester : requester as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get requester {
    if (_value.requester == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.requester, (value) {
      return _then(_value.copyWith(requester: value));
    });
  }
}

/// @nodoc
class _$_ValidatePayment
    with DiagnosticableTreeMixin
    implements _ValidatePayment {
  const _$_ValidatePayment(this.requester) : assert(requester != null);

  @override
  final User requester;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuickPaymentEvent.validatePayment(requester: $requester)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuickPaymentEvent.validatePayment'))
      ..add(DiagnosticsProperty('requester', requester));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValidatePayment &&
            (identical(other.requester, requester) ||
                const DeepCollectionEquality()
                    .equals(other.requester, requester)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requester);

  @override
  _$ValidatePaymentCopyWith<_ValidatePayment> get copyWith =>
      __$ValidatePaymentCopyWithImpl<_ValidatePayment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User requester),
    @required Result tokenScanned(String scannedToken),
    @required Result requestPayment(MoneyAmount amount),
    @required Result validatePayment(User requester),
    @required Result resetToken(),
    @required Result autoCash(QuickPayment payment),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return validatePayment(requester);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User requester),
    Result tokenScanned(String scannedToken),
    Result requestPayment(MoneyAmount amount),
    Result validatePayment(User requester),
    Result resetToken(),
    Result autoCash(QuickPayment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validatePayment != null) {
      return validatePayment(requester);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeToken value),
    @required Result tokenScanned(_TokenScanned value),
    @required Result requestPayment(_RequestPayment value),
    @required Result validatePayment(_ValidatePayment value),
    @required Result resetToken(_ResetToken value),
    @required Result autoCash(_AutoCash value),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return validatePayment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeToken value),
    Result tokenScanned(_TokenScanned value),
    Result requestPayment(_RequestPayment value),
    Result validatePayment(_ValidatePayment value),
    Result resetToken(_ResetToken value),
    Result autoCash(_AutoCash value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validatePayment != null) {
      return validatePayment(this);
    }
    return orElse();
  }
}

abstract class _ValidatePayment implements QuickPaymentEvent {
  const factory _ValidatePayment(User requester) = _$_ValidatePayment;

  User get requester;
  _$ValidatePaymentCopyWith<_ValidatePayment> get copyWith;
}

/// @nodoc
abstract class _$ResetTokenCopyWith<$Res> {
  factory _$ResetTokenCopyWith(
          _ResetToken value, $Res Function(_ResetToken) then) =
      __$ResetTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetTokenCopyWithImpl<$Res>
    extends _$QuickPaymentEventCopyWithImpl<$Res>
    implements _$ResetTokenCopyWith<$Res> {
  __$ResetTokenCopyWithImpl(
      _ResetToken _value, $Res Function(_ResetToken) _then)
      : super(_value, (v) => _then(v as _ResetToken));

  @override
  _ResetToken get _value => super._value as _ResetToken;
}

/// @nodoc
class _$_ResetToken with DiagnosticableTreeMixin implements _ResetToken {
  const _$_ResetToken();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuickPaymentEvent.resetToken()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuickPaymentEvent.resetToken'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User requester),
    @required Result tokenScanned(String scannedToken),
    @required Result requestPayment(MoneyAmount amount),
    @required Result validatePayment(User requester),
    @required Result resetToken(),
    @required Result autoCash(QuickPayment payment),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return resetToken();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User requester),
    Result tokenScanned(String scannedToken),
    Result requestPayment(MoneyAmount amount),
    Result validatePayment(User requester),
    Result resetToken(),
    Result autoCash(QuickPayment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetToken != null) {
      return resetToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeToken value),
    @required Result tokenScanned(_TokenScanned value),
    @required Result requestPayment(_RequestPayment value),
    @required Result validatePayment(_ValidatePayment value),
    @required Result resetToken(_ResetToken value),
    @required Result autoCash(_AutoCash value),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return resetToken(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeToken value),
    Result tokenScanned(_TokenScanned value),
    Result requestPayment(_RequestPayment value),
    Result validatePayment(_ValidatePayment value),
    Result resetToken(_ResetToken value),
    Result autoCash(_AutoCash value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetToken != null) {
      return resetToken(this);
    }
    return orElse();
  }
}

abstract class _ResetToken implements QuickPaymentEvent {
  const factory _ResetToken() = _$_ResetToken;
}

/// @nodoc
abstract class _$AutoCashCopyWith<$Res> {
  factory _$AutoCashCopyWith(_AutoCash value, $Res Function(_AutoCash) then) =
      __$AutoCashCopyWithImpl<$Res>;
  $Res call({QuickPayment payment});

  $QuickPaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$AutoCashCopyWithImpl<$Res>
    extends _$QuickPaymentEventCopyWithImpl<$Res>
    implements _$AutoCashCopyWith<$Res> {
  __$AutoCashCopyWithImpl(_AutoCash _value, $Res Function(_AutoCash) _then)
      : super(_value, (v) => _then(v as _AutoCash));

  @override
  _AutoCash get _value => super._value as _AutoCash;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_AutoCash(
      payment == freezed ? _value.payment : payment as QuickPayment,
    ));
  }

  @override
  $QuickPaymentCopyWith<$Res> get payment {
    if (_value.payment == null) {
      return null;
    }
    return $QuickPaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc
class _$_AutoCash with DiagnosticableTreeMixin implements _AutoCash {
  const _$_AutoCash(this.payment) : assert(payment != null);

  @override
  final QuickPayment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuickPaymentEvent.autoCash(payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuickPaymentEvent.autoCash'))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AutoCash &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @override
  _$AutoCashCopyWith<_AutoCash> get copyWith =>
      __$AutoCashCopyWithImpl<_AutoCash>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User requester),
    @required Result tokenScanned(String scannedToken),
    @required Result requestPayment(MoneyAmount amount),
    @required Result validatePayment(User requester),
    @required Result resetToken(),
    @required Result autoCash(QuickPayment payment),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return autoCash(payment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User requester),
    Result tokenScanned(String scannedToken),
    Result requestPayment(MoneyAmount amount),
    Result validatePayment(User requester),
    Result resetToken(),
    Result autoCash(QuickPayment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (autoCash != null) {
      return autoCash(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_InitializeToken value),
    @required Result tokenScanned(_TokenScanned value),
    @required Result requestPayment(_RequestPayment value),
    @required Result validatePayment(_ValidatePayment value),
    @required Result resetToken(_ResetToken value),
    @required Result autoCash(_AutoCash value),
  }) {
    assert(initialize != null);
    assert(tokenScanned != null);
    assert(requestPayment != null);
    assert(validatePayment != null);
    assert(resetToken != null);
    assert(autoCash != null);
    return autoCash(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_InitializeToken value),
    Result tokenScanned(_TokenScanned value),
    Result requestPayment(_RequestPayment value),
    Result validatePayment(_ValidatePayment value),
    Result resetToken(_ResetToken value),
    Result autoCash(_AutoCash value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (autoCash != null) {
      return autoCash(this);
    }
    return orElse();
  }
}

abstract class _AutoCash implements QuickPaymentEvent {
  const factory _AutoCash(QuickPayment payment) = _$_AutoCash;

  QuickPayment get payment;
  _$AutoCashCopyWith<_AutoCash> get copyWith;
}

/// @nodoc
class _$QuickPaymentStateTearOff {
  const _$QuickPaymentStateTearOff();

// ignore: unused_element
  _QuickPaymentState call(
      {@required
          QuickPaymentToken token,
      @required
          QuickPayment payment,
      @required
          MoneyAmount amountToRequest,
      @required
          bool shouldValidatePayment,
      @required
          Option<Either<QuickPaymentFailure, Unit>> saveFailureOrSuccessOption,
      @required
          String encryptedToken}) {
    return _QuickPaymentState(
      token: token,
      payment: payment,
      amountToRequest: amountToRequest,
      shouldValidatePayment: shouldValidatePayment,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      encryptedToken: encryptedToken,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuickPaymentState = _$QuickPaymentStateTearOff();

/// @nodoc
mixin _$QuickPaymentState {
  QuickPaymentToken get token;
  QuickPayment get payment;
  MoneyAmount get amountToRequest;
  bool get shouldValidatePayment;
  Option<Either<QuickPaymentFailure, Unit>> get saveFailureOrSuccessOption;
  String get encryptedToken;

  $QuickPaymentStateCopyWith<QuickPaymentState> get copyWith;
}

/// @nodoc
abstract class $QuickPaymentStateCopyWith<$Res> {
  factory $QuickPaymentStateCopyWith(
          QuickPaymentState value, $Res Function(QuickPaymentState) then) =
      _$QuickPaymentStateCopyWithImpl<$Res>;
  $Res call(
      {QuickPaymentToken token,
      QuickPayment payment,
      MoneyAmount amountToRequest,
      bool shouldValidatePayment,
      Option<Either<QuickPaymentFailure, Unit>> saveFailureOrSuccessOption,
      String encryptedToken});

  $QuickPaymentTokenCopyWith<$Res> get token;
  $QuickPaymentCopyWith<$Res> get payment;
}

/// @nodoc
class _$QuickPaymentStateCopyWithImpl<$Res>
    implements $QuickPaymentStateCopyWith<$Res> {
  _$QuickPaymentStateCopyWithImpl(this._value, this._then);

  final QuickPaymentState _value;
  // ignore: unused_field
  final $Res Function(QuickPaymentState) _then;

  @override
  $Res call({
    Object token = freezed,
    Object payment = freezed,
    Object amountToRequest = freezed,
    Object shouldValidatePayment = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object encryptedToken = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as QuickPaymentToken,
      payment: payment == freezed ? _value.payment : payment as QuickPayment,
      amountToRequest: amountToRequest == freezed
          ? _value.amountToRequest
          : amountToRequest as MoneyAmount,
      shouldValidatePayment: shouldValidatePayment == freezed
          ? _value.shouldValidatePayment
          : shouldValidatePayment as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<QuickPaymentFailure, Unit>>,
      encryptedToken: encryptedToken == freezed
          ? _value.encryptedToken
          : encryptedToken as String,
    ));
  }

  @override
  $QuickPaymentTokenCopyWith<$Res> get token {
    if (_value.token == null) {
      return null;
    }
    return $QuickPaymentTokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }

  @override
  $QuickPaymentCopyWith<$Res> get payment {
    if (_value.payment == null) {
      return null;
    }
    return $QuickPaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc
abstract class _$QuickPaymentStateCopyWith<$Res>
    implements $QuickPaymentStateCopyWith<$Res> {
  factory _$QuickPaymentStateCopyWith(
          _QuickPaymentState value, $Res Function(_QuickPaymentState) then) =
      __$QuickPaymentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {QuickPaymentToken token,
      QuickPayment payment,
      MoneyAmount amountToRequest,
      bool shouldValidatePayment,
      Option<Either<QuickPaymentFailure, Unit>> saveFailureOrSuccessOption,
      String encryptedToken});

  @override
  $QuickPaymentTokenCopyWith<$Res> get token;
  @override
  $QuickPaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$QuickPaymentStateCopyWithImpl<$Res>
    extends _$QuickPaymentStateCopyWithImpl<$Res>
    implements _$QuickPaymentStateCopyWith<$Res> {
  __$QuickPaymentStateCopyWithImpl(
      _QuickPaymentState _value, $Res Function(_QuickPaymentState) _then)
      : super(_value, (v) => _then(v as _QuickPaymentState));

  @override
  _QuickPaymentState get _value => super._value as _QuickPaymentState;

  @override
  $Res call({
    Object token = freezed,
    Object payment = freezed,
    Object amountToRequest = freezed,
    Object shouldValidatePayment = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object encryptedToken = freezed,
  }) {
    return _then(_QuickPaymentState(
      token: token == freezed ? _value.token : token as QuickPaymentToken,
      payment: payment == freezed ? _value.payment : payment as QuickPayment,
      amountToRequest: amountToRequest == freezed
          ? _value.amountToRequest
          : amountToRequest as MoneyAmount,
      shouldValidatePayment: shouldValidatePayment == freezed
          ? _value.shouldValidatePayment
          : shouldValidatePayment as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<QuickPaymentFailure, Unit>>,
      encryptedToken: encryptedToken == freezed
          ? _value.encryptedToken
          : encryptedToken as String,
    ));
  }
}

/// @nodoc
class _$_QuickPaymentState
    with DiagnosticableTreeMixin
    implements _QuickPaymentState {
  const _$_QuickPaymentState(
      {@required this.token,
      @required this.payment,
      @required this.amountToRequest,
      @required this.shouldValidatePayment,
      @required this.saveFailureOrSuccessOption,
      @required this.encryptedToken})
      : assert(token != null),
        assert(payment != null),
        assert(amountToRequest != null),
        assert(shouldValidatePayment != null),
        assert(saveFailureOrSuccessOption != null),
        assert(encryptedToken != null);

  @override
  final QuickPaymentToken token;
  @override
  final QuickPayment payment;
  @override
  final MoneyAmount amountToRequest;
  @override
  final bool shouldValidatePayment;
  @override
  final Option<Either<QuickPaymentFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final String encryptedToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuickPaymentState(token: $token, payment: $payment, amountToRequest: $amountToRequest, shouldValidatePayment: $shouldValidatePayment, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, encryptedToken: $encryptedToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuickPaymentState'))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('payment', payment))
      ..add(DiagnosticsProperty('amountToRequest', amountToRequest))
      ..add(DiagnosticsProperty('shouldValidatePayment', shouldValidatePayment))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption))
      ..add(DiagnosticsProperty('encryptedToken', encryptedToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuickPaymentState &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality()
                    .equals(other.payment, payment)) &&
            (identical(other.amountToRequest, amountToRequest) ||
                const DeepCollectionEquality()
                    .equals(other.amountToRequest, amountToRequest)) &&
            (identical(other.shouldValidatePayment, shouldValidatePayment) ||
                const DeepCollectionEquality().equals(
                    other.shouldValidatePayment, shouldValidatePayment)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.encryptedToken, encryptedToken) ||
                const DeepCollectionEquality()
                    .equals(other.encryptedToken, encryptedToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(payment) ^
      const DeepCollectionEquality().hash(amountToRequest) ^
      const DeepCollectionEquality().hash(shouldValidatePayment) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(encryptedToken);

  @override
  _$QuickPaymentStateCopyWith<_QuickPaymentState> get copyWith =>
      __$QuickPaymentStateCopyWithImpl<_QuickPaymentState>(this, _$identity);
}

abstract class _QuickPaymentState implements QuickPaymentState {
  const factory _QuickPaymentState(
      {@required
          QuickPaymentToken token,
      @required
          QuickPayment payment,
      @required
          MoneyAmount amountToRequest,
      @required
          bool shouldValidatePayment,
      @required
          Option<Either<QuickPaymentFailure, Unit>> saveFailureOrSuccessOption,
      @required
          String encryptedToken}) = _$_QuickPaymentState;

  @override
  QuickPaymentToken get token;
  @override
  QuickPayment get payment;
  @override
  MoneyAmount get amountToRequest;
  @override
  bool get shouldValidatePayment;
  @override
  Option<Either<QuickPaymentFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  String get encryptedToken;
  @override
  _$QuickPaymentStateCopyWith<_QuickPaymentState> get copyWith;
}
