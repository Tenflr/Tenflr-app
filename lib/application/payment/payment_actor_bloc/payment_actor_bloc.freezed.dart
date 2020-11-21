// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentActorEventTearOff {
  const _$PaymentActorEventTearOff();

// ignore: unused_element
  _Cash cash(Payment payment) {
    return _Cash(
      payment,
    );
  }

// ignore: unused_element
  _Hide hide(Payment payment) {
    return _Hide(
      payment,
    );
  }

// ignore: unused_element
  _UnlockSentPayment unlockSent(Payment payment) {
    return _UnlockSentPayment(
      payment,
    );
  }

// ignore: unused_element
  _FreezeSentPayment freezeSent(Payment payment) {
    return _FreezeSentPayment(
      payment,
    );
  }

// ignore: unused_element
  _DeleteSentPayment deleteCashed(Payment payment) {
    return _DeleteSentPayment(
      payment,
    );
  }

// ignore: unused_element
  _RequestUnlockOfReceivedPayment requestUnlockOfReceived(Payment payment) {
    return _RequestUnlockOfReceivedPayment(
      payment,
    );
  }

// ignore: unused_element
  _ReturnPayment returnPayment(Payment payment) {
    return _ReturnPayment(
      payment,
    );
  }

// ignore: unused_element
  _UpVoteUser upVoteUser(Payment payment) {
    return _UpVoteUser(
      payment,
    );
  }

// ignore: unused_element
  _DownVoteUser downVoteUser(Payment payment) {
    return _DownVoteUser(
      payment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentActorEvent = _$PaymentActorEventTearOff();

/// @nodoc
mixin _$PaymentActorEvent {
  Payment get payment;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cash(Payment payment),
    @required Result hide(Payment payment),
    @required Result unlockSent(Payment payment),
    @required Result freezeSent(Payment payment),
    @required Result deleteCashed(Payment payment),
    @required Result requestUnlockOfReceived(Payment payment),
    @required Result returnPayment(Payment payment),
    @required Result upVoteUser(Payment payment),
    @required Result downVoteUser(Payment payment),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cash(Payment payment),
    Result hide(Payment payment),
    Result unlockSent(Payment payment),
    Result freezeSent(Payment payment),
    Result deleteCashed(Payment payment),
    Result requestUnlockOfReceived(Payment payment),
    Result returnPayment(Payment payment),
    Result upVoteUser(Payment payment),
    Result downVoteUser(Payment payment),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cash(_Cash value),
    @required Result hide(_Hide value),
    @required Result unlockSent(_UnlockSentPayment value),
    @required Result freezeSent(_FreezeSentPayment value),
    @required Result deleteCashed(_DeleteSentPayment value),
    @required
        Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    @required Result returnPayment(_ReturnPayment value),
    @required Result upVoteUser(_UpVoteUser value),
    @required Result downVoteUser(_DownVoteUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cash(_Cash value),
    Result hide(_Hide value),
    Result unlockSent(_UnlockSentPayment value),
    Result freezeSent(_FreezeSentPayment value),
    Result deleteCashed(_DeleteSentPayment value),
    Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    Result returnPayment(_ReturnPayment value),
    Result upVoteUser(_UpVoteUser value),
    Result downVoteUser(_DownVoteUser value),
    @required Result orElse(),
  });

  $PaymentActorEventCopyWith<PaymentActorEvent> get copyWith;
}

/// @nodoc
abstract class $PaymentActorEventCopyWith<$Res> {
  factory $PaymentActorEventCopyWith(
          PaymentActorEvent value, $Res Function(PaymentActorEvent) then) =
      _$PaymentActorEventCopyWithImpl<$Res>;
  $Res call({Payment payment});

  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class _$PaymentActorEventCopyWithImpl<$Res>
    implements $PaymentActorEventCopyWith<$Res> {
  _$PaymentActorEventCopyWithImpl(this._value, this._then);

  final PaymentActorEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentActorEvent) _then;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_value.copyWith(
      payment: payment == freezed ? _value.payment : payment as Payment,
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
abstract class _$CashCopyWith<$Res>
    implements $PaymentActorEventCopyWith<$Res> {
  factory _$CashCopyWith(_Cash value, $Res Function(_Cash) then) =
      __$CashCopyWithImpl<$Res>;
  @override
  $Res call({Payment payment});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$CashCopyWithImpl<$Res> extends _$PaymentActorEventCopyWithImpl<$Res>
    implements _$CashCopyWith<$Res> {
  __$CashCopyWithImpl(_Cash _value, $Res Function(_Cash) _then)
      : super(_value, (v) => _then(v as _Cash));

  @override
  _Cash get _value => super._value as _Cash;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_Cash(
      payment == freezed ? _value.payment : payment as Payment,
    ));
  }
}

/// @nodoc
class _$_Cash with DiagnosticableTreeMixin implements _Cash {
  const _$_Cash(this.payment) : assert(payment != null);

  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentActorEvent.cash(payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentActorEvent.cash'))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cash &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @override
  _$CashCopyWith<_Cash> get copyWith =>
      __$CashCopyWithImpl<_Cash>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cash(Payment payment),
    @required Result hide(Payment payment),
    @required Result unlockSent(Payment payment),
    @required Result freezeSent(Payment payment),
    @required Result deleteCashed(Payment payment),
    @required Result requestUnlockOfReceived(Payment payment),
    @required Result returnPayment(Payment payment),
    @required Result upVoteUser(Payment payment),
    @required Result downVoteUser(Payment payment),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return cash(payment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cash(Payment payment),
    Result hide(Payment payment),
    Result unlockSent(Payment payment),
    Result freezeSent(Payment payment),
    Result deleteCashed(Payment payment),
    Result requestUnlockOfReceived(Payment payment),
    Result returnPayment(Payment payment),
    Result upVoteUser(Payment payment),
    Result downVoteUser(Payment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cash != null) {
      return cash(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cash(_Cash value),
    @required Result hide(_Hide value),
    @required Result unlockSent(_UnlockSentPayment value),
    @required Result freezeSent(_FreezeSentPayment value),
    @required Result deleteCashed(_DeleteSentPayment value),
    @required
        Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    @required Result returnPayment(_ReturnPayment value),
    @required Result upVoteUser(_UpVoteUser value),
    @required Result downVoteUser(_DownVoteUser value),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return cash(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cash(_Cash value),
    Result hide(_Hide value),
    Result unlockSent(_UnlockSentPayment value),
    Result freezeSent(_FreezeSentPayment value),
    Result deleteCashed(_DeleteSentPayment value),
    Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    Result returnPayment(_ReturnPayment value),
    Result upVoteUser(_UpVoteUser value),
    Result downVoteUser(_DownVoteUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cash != null) {
      return cash(this);
    }
    return orElse();
  }
}

abstract class _Cash implements PaymentActorEvent {
  const factory _Cash(Payment payment) = _$_Cash;

  @override
  Payment get payment;
  @override
  _$CashCopyWith<_Cash> get copyWith;
}

/// @nodoc
abstract class _$HideCopyWith<$Res>
    implements $PaymentActorEventCopyWith<$Res> {
  factory _$HideCopyWith(_Hide value, $Res Function(_Hide) then) =
      __$HideCopyWithImpl<$Res>;
  @override
  $Res call({Payment payment});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$HideCopyWithImpl<$Res> extends _$PaymentActorEventCopyWithImpl<$Res>
    implements _$HideCopyWith<$Res> {
  __$HideCopyWithImpl(_Hide _value, $Res Function(_Hide) _then)
      : super(_value, (v) => _then(v as _Hide));

  @override
  _Hide get _value => super._value as _Hide;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_Hide(
      payment == freezed ? _value.payment : payment as Payment,
    ));
  }
}

/// @nodoc
class _$_Hide with DiagnosticableTreeMixin implements _Hide {
  const _$_Hide(this.payment) : assert(payment != null);

  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentActorEvent.hide(payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentActorEvent.hide'))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hide &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @override
  _$HideCopyWith<_Hide> get copyWith =>
      __$HideCopyWithImpl<_Hide>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cash(Payment payment),
    @required Result hide(Payment payment),
    @required Result unlockSent(Payment payment),
    @required Result freezeSent(Payment payment),
    @required Result deleteCashed(Payment payment),
    @required Result requestUnlockOfReceived(Payment payment),
    @required Result returnPayment(Payment payment),
    @required Result upVoteUser(Payment payment),
    @required Result downVoteUser(Payment payment),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return hide(payment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cash(Payment payment),
    Result hide(Payment payment),
    Result unlockSent(Payment payment),
    Result freezeSent(Payment payment),
    Result deleteCashed(Payment payment),
    Result requestUnlockOfReceived(Payment payment),
    Result returnPayment(Payment payment),
    Result upVoteUser(Payment payment),
    Result downVoteUser(Payment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hide != null) {
      return hide(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cash(_Cash value),
    @required Result hide(_Hide value),
    @required Result unlockSent(_UnlockSentPayment value),
    @required Result freezeSent(_FreezeSentPayment value),
    @required Result deleteCashed(_DeleteSentPayment value),
    @required
        Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    @required Result returnPayment(_ReturnPayment value),
    @required Result upVoteUser(_UpVoteUser value),
    @required Result downVoteUser(_DownVoteUser value),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return hide(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cash(_Cash value),
    Result hide(_Hide value),
    Result unlockSent(_UnlockSentPayment value),
    Result freezeSent(_FreezeSentPayment value),
    Result deleteCashed(_DeleteSentPayment value),
    Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    Result returnPayment(_ReturnPayment value),
    Result upVoteUser(_UpVoteUser value),
    Result downVoteUser(_DownVoteUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hide != null) {
      return hide(this);
    }
    return orElse();
  }
}

abstract class _Hide implements PaymentActorEvent {
  const factory _Hide(Payment payment) = _$_Hide;

  @override
  Payment get payment;
  @override
  _$HideCopyWith<_Hide> get copyWith;
}

/// @nodoc
abstract class _$UnlockSentPaymentCopyWith<$Res>
    implements $PaymentActorEventCopyWith<$Res> {
  factory _$UnlockSentPaymentCopyWith(
          _UnlockSentPayment value, $Res Function(_UnlockSentPayment) then) =
      __$UnlockSentPaymentCopyWithImpl<$Res>;
  @override
  $Res call({Payment payment});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$UnlockSentPaymentCopyWithImpl<$Res>
    extends _$PaymentActorEventCopyWithImpl<$Res>
    implements _$UnlockSentPaymentCopyWith<$Res> {
  __$UnlockSentPaymentCopyWithImpl(
      _UnlockSentPayment _value, $Res Function(_UnlockSentPayment) _then)
      : super(_value, (v) => _then(v as _UnlockSentPayment));

  @override
  _UnlockSentPayment get _value => super._value as _UnlockSentPayment;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_UnlockSentPayment(
      payment == freezed ? _value.payment : payment as Payment,
    ));
  }
}

/// @nodoc
class _$_UnlockSentPayment
    with DiagnosticableTreeMixin
    implements _UnlockSentPayment {
  const _$_UnlockSentPayment(this.payment) : assert(payment != null);

  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentActorEvent.unlockSent(payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentActorEvent.unlockSent'))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnlockSentPayment &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @override
  _$UnlockSentPaymentCopyWith<_UnlockSentPayment> get copyWith =>
      __$UnlockSentPaymentCopyWithImpl<_UnlockSentPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cash(Payment payment),
    @required Result hide(Payment payment),
    @required Result unlockSent(Payment payment),
    @required Result freezeSent(Payment payment),
    @required Result deleteCashed(Payment payment),
    @required Result requestUnlockOfReceived(Payment payment),
    @required Result returnPayment(Payment payment),
    @required Result upVoteUser(Payment payment),
    @required Result downVoteUser(Payment payment),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return unlockSent(payment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cash(Payment payment),
    Result hide(Payment payment),
    Result unlockSent(Payment payment),
    Result freezeSent(Payment payment),
    Result deleteCashed(Payment payment),
    Result requestUnlockOfReceived(Payment payment),
    Result returnPayment(Payment payment),
    Result upVoteUser(Payment payment),
    Result downVoteUser(Payment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unlockSent != null) {
      return unlockSent(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cash(_Cash value),
    @required Result hide(_Hide value),
    @required Result unlockSent(_UnlockSentPayment value),
    @required Result freezeSent(_FreezeSentPayment value),
    @required Result deleteCashed(_DeleteSentPayment value),
    @required
        Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    @required Result returnPayment(_ReturnPayment value),
    @required Result upVoteUser(_UpVoteUser value),
    @required Result downVoteUser(_DownVoteUser value),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return unlockSent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cash(_Cash value),
    Result hide(_Hide value),
    Result unlockSent(_UnlockSentPayment value),
    Result freezeSent(_FreezeSentPayment value),
    Result deleteCashed(_DeleteSentPayment value),
    Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    Result returnPayment(_ReturnPayment value),
    Result upVoteUser(_UpVoteUser value),
    Result downVoteUser(_DownVoteUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unlockSent != null) {
      return unlockSent(this);
    }
    return orElse();
  }
}

abstract class _UnlockSentPayment implements PaymentActorEvent {
  const factory _UnlockSentPayment(Payment payment) = _$_UnlockSentPayment;

  @override
  Payment get payment;
  @override
  _$UnlockSentPaymentCopyWith<_UnlockSentPayment> get copyWith;
}

/// @nodoc
abstract class _$FreezeSentPaymentCopyWith<$Res>
    implements $PaymentActorEventCopyWith<$Res> {
  factory _$FreezeSentPaymentCopyWith(
          _FreezeSentPayment value, $Res Function(_FreezeSentPayment) then) =
      __$FreezeSentPaymentCopyWithImpl<$Res>;
  @override
  $Res call({Payment payment});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$FreezeSentPaymentCopyWithImpl<$Res>
    extends _$PaymentActorEventCopyWithImpl<$Res>
    implements _$FreezeSentPaymentCopyWith<$Res> {
  __$FreezeSentPaymentCopyWithImpl(
      _FreezeSentPayment _value, $Res Function(_FreezeSentPayment) _then)
      : super(_value, (v) => _then(v as _FreezeSentPayment));

  @override
  _FreezeSentPayment get _value => super._value as _FreezeSentPayment;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_FreezeSentPayment(
      payment == freezed ? _value.payment : payment as Payment,
    ));
  }
}

/// @nodoc
class _$_FreezeSentPayment
    with DiagnosticableTreeMixin
    implements _FreezeSentPayment {
  const _$_FreezeSentPayment(this.payment) : assert(payment != null);

  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentActorEvent.freezeSent(payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentActorEvent.freezeSent'))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FreezeSentPayment &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @override
  _$FreezeSentPaymentCopyWith<_FreezeSentPayment> get copyWith =>
      __$FreezeSentPaymentCopyWithImpl<_FreezeSentPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cash(Payment payment),
    @required Result hide(Payment payment),
    @required Result unlockSent(Payment payment),
    @required Result freezeSent(Payment payment),
    @required Result deleteCashed(Payment payment),
    @required Result requestUnlockOfReceived(Payment payment),
    @required Result returnPayment(Payment payment),
    @required Result upVoteUser(Payment payment),
    @required Result downVoteUser(Payment payment),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return freezeSent(payment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cash(Payment payment),
    Result hide(Payment payment),
    Result unlockSent(Payment payment),
    Result freezeSent(Payment payment),
    Result deleteCashed(Payment payment),
    Result requestUnlockOfReceived(Payment payment),
    Result returnPayment(Payment payment),
    Result upVoteUser(Payment payment),
    Result downVoteUser(Payment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (freezeSent != null) {
      return freezeSent(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cash(_Cash value),
    @required Result hide(_Hide value),
    @required Result unlockSent(_UnlockSentPayment value),
    @required Result freezeSent(_FreezeSentPayment value),
    @required Result deleteCashed(_DeleteSentPayment value),
    @required
        Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    @required Result returnPayment(_ReturnPayment value),
    @required Result upVoteUser(_UpVoteUser value),
    @required Result downVoteUser(_DownVoteUser value),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return freezeSent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cash(_Cash value),
    Result hide(_Hide value),
    Result unlockSent(_UnlockSentPayment value),
    Result freezeSent(_FreezeSentPayment value),
    Result deleteCashed(_DeleteSentPayment value),
    Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    Result returnPayment(_ReturnPayment value),
    Result upVoteUser(_UpVoteUser value),
    Result downVoteUser(_DownVoteUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (freezeSent != null) {
      return freezeSent(this);
    }
    return orElse();
  }
}

abstract class _FreezeSentPayment implements PaymentActorEvent {
  const factory _FreezeSentPayment(Payment payment) = _$_FreezeSentPayment;

  @override
  Payment get payment;
  @override
  _$FreezeSentPaymentCopyWith<_FreezeSentPayment> get copyWith;
}

/// @nodoc
abstract class _$DeleteSentPaymentCopyWith<$Res>
    implements $PaymentActorEventCopyWith<$Res> {
  factory _$DeleteSentPaymentCopyWith(
          _DeleteSentPayment value, $Res Function(_DeleteSentPayment) then) =
      __$DeleteSentPaymentCopyWithImpl<$Res>;
  @override
  $Res call({Payment payment});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$DeleteSentPaymentCopyWithImpl<$Res>
    extends _$PaymentActorEventCopyWithImpl<$Res>
    implements _$DeleteSentPaymentCopyWith<$Res> {
  __$DeleteSentPaymentCopyWithImpl(
      _DeleteSentPayment _value, $Res Function(_DeleteSentPayment) _then)
      : super(_value, (v) => _then(v as _DeleteSentPayment));

  @override
  _DeleteSentPayment get _value => super._value as _DeleteSentPayment;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_DeleteSentPayment(
      payment == freezed ? _value.payment : payment as Payment,
    ));
  }
}

/// @nodoc
class _$_DeleteSentPayment
    with DiagnosticableTreeMixin
    implements _DeleteSentPayment {
  const _$_DeleteSentPayment(this.payment) : assert(payment != null);

  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentActorEvent.deleteCashed(payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentActorEvent.deleteCashed'))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteSentPayment &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @override
  _$DeleteSentPaymentCopyWith<_DeleteSentPayment> get copyWith =>
      __$DeleteSentPaymentCopyWithImpl<_DeleteSentPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cash(Payment payment),
    @required Result hide(Payment payment),
    @required Result unlockSent(Payment payment),
    @required Result freezeSent(Payment payment),
    @required Result deleteCashed(Payment payment),
    @required Result requestUnlockOfReceived(Payment payment),
    @required Result returnPayment(Payment payment),
    @required Result upVoteUser(Payment payment),
    @required Result downVoteUser(Payment payment),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return deleteCashed(payment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cash(Payment payment),
    Result hide(Payment payment),
    Result unlockSent(Payment payment),
    Result freezeSent(Payment payment),
    Result deleteCashed(Payment payment),
    Result requestUnlockOfReceived(Payment payment),
    Result returnPayment(Payment payment),
    Result upVoteUser(Payment payment),
    Result downVoteUser(Payment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCashed != null) {
      return deleteCashed(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cash(_Cash value),
    @required Result hide(_Hide value),
    @required Result unlockSent(_UnlockSentPayment value),
    @required Result freezeSent(_FreezeSentPayment value),
    @required Result deleteCashed(_DeleteSentPayment value),
    @required
        Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    @required Result returnPayment(_ReturnPayment value),
    @required Result upVoteUser(_UpVoteUser value),
    @required Result downVoteUser(_DownVoteUser value),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return deleteCashed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cash(_Cash value),
    Result hide(_Hide value),
    Result unlockSent(_UnlockSentPayment value),
    Result freezeSent(_FreezeSentPayment value),
    Result deleteCashed(_DeleteSentPayment value),
    Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    Result returnPayment(_ReturnPayment value),
    Result upVoteUser(_UpVoteUser value),
    Result downVoteUser(_DownVoteUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCashed != null) {
      return deleteCashed(this);
    }
    return orElse();
  }
}

abstract class _DeleteSentPayment implements PaymentActorEvent {
  const factory _DeleteSentPayment(Payment payment) = _$_DeleteSentPayment;

  @override
  Payment get payment;
  @override
  _$DeleteSentPaymentCopyWith<_DeleteSentPayment> get copyWith;
}

/// @nodoc
abstract class _$RequestUnlockOfReceivedPaymentCopyWith<$Res>
    implements $PaymentActorEventCopyWith<$Res> {
  factory _$RequestUnlockOfReceivedPaymentCopyWith(
          _RequestUnlockOfReceivedPayment value,
          $Res Function(_RequestUnlockOfReceivedPayment) then) =
      __$RequestUnlockOfReceivedPaymentCopyWithImpl<$Res>;
  @override
  $Res call({Payment payment});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$RequestUnlockOfReceivedPaymentCopyWithImpl<$Res>
    extends _$PaymentActorEventCopyWithImpl<$Res>
    implements _$RequestUnlockOfReceivedPaymentCopyWith<$Res> {
  __$RequestUnlockOfReceivedPaymentCopyWithImpl(
      _RequestUnlockOfReceivedPayment _value,
      $Res Function(_RequestUnlockOfReceivedPayment) _then)
      : super(_value, (v) => _then(v as _RequestUnlockOfReceivedPayment));

  @override
  _RequestUnlockOfReceivedPayment get _value =>
      super._value as _RequestUnlockOfReceivedPayment;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_RequestUnlockOfReceivedPayment(
      payment == freezed ? _value.payment : payment as Payment,
    ));
  }
}

/// @nodoc
class _$_RequestUnlockOfReceivedPayment
    with DiagnosticableTreeMixin
    implements _RequestUnlockOfReceivedPayment {
  const _$_RequestUnlockOfReceivedPayment(this.payment)
      : assert(payment != null);

  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentActorEvent.requestUnlockOfReceived(payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PaymentActorEvent.requestUnlockOfReceived'))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestUnlockOfReceivedPayment &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @override
  _$RequestUnlockOfReceivedPaymentCopyWith<_RequestUnlockOfReceivedPayment>
      get copyWith => __$RequestUnlockOfReceivedPaymentCopyWithImpl<
          _RequestUnlockOfReceivedPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cash(Payment payment),
    @required Result hide(Payment payment),
    @required Result unlockSent(Payment payment),
    @required Result freezeSent(Payment payment),
    @required Result deleteCashed(Payment payment),
    @required Result requestUnlockOfReceived(Payment payment),
    @required Result returnPayment(Payment payment),
    @required Result upVoteUser(Payment payment),
    @required Result downVoteUser(Payment payment),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return requestUnlockOfReceived(payment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cash(Payment payment),
    Result hide(Payment payment),
    Result unlockSent(Payment payment),
    Result freezeSent(Payment payment),
    Result deleteCashed(Payment payment),
    Result requestUnlockOfReceived(Payment payment),
    Result returnPayment(Payment payment),
    Result upVoteUser(Payment payment),
    Result downVoteUser(Payment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestUnlockOfReceived != null) {
      return requestUnlockOfReceived(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cash(_Cash value),
    @required Result hide(_Hide value),
    @required Result unlockSent(_UnlockSentPayment value),
    @required Result freezeSent(_FreezeSentPayment value),
    @required Result deleteCashed(_DeleteSentPayment value),
    @required
        Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    @required Result returnPayment(_ReturnPayment value),
    @required Result upVoteUser(_UpVoteUser value),
    @required Result downVoteUser(_DownVoteUser value),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return requestUnlockOfReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cash(_Cash value),
    Result hide(_Hide value),
    Result unlockSent(_UnlockSentPayment value),
    Result freezeSent(_FreezeSentPayment value),
    Result deleteCashed(_DeleteSentPayment value),
    Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    Result returnPayment(_ReturnPayment value),
    Result upVoteUser(_UpVoteUser value),
    Result downVoteUser(_DownVoteUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestUnlockOfReceived != null) {
      return requestUnlockOfReceived(this);
    }
    return orElse();
  }
}

abstract class _RequestUnlockOfReceivedPayment implements PaymentActorEvent {
  const factory _RequestUnlockOfReceivedPayment(Payment payment) =
      _$_RequestUnlockOfReceivedPayment;

  @override
  Payment get payment;
  @override
  _$RequestUnlockOfReceivedPaymentCopyWith<_RequestUnlockOfReceivedPayment>
      get copyWith;
}

/// @nodoc
abstract class _$ReturnPaymentCopyWith<$Res>
    implements $PaymentActorEventCopyWith<$Res> {
  factory _$ReturnPaymentCopyWith(
          _ReturnPayment value, $Res Function(_ReturnPayment) then) =
      __$ReturnPaymentCopyWithImpl<$Res>;
  @override
  $Res call({Payment payment});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$ReturnPaymentCopyWithImpl<$Res>
    extends _$PaymentActorEventCopyWithImpl<$Res>
    implements _$ReturnPaymentCopyWith<$Res> {
  __$ReturnPaymentCopyWithImpl(
      _ReturnPayment _value, $Res Function(_ReturnPayment) _then)
      : super(_value, (v) => _then(v as _ReturnPayment));

  @override
  _ReturnPayment get _value => super._value as _ReturnPayment;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_ReturnPayment(
      payment == freezed ? _value.payment : payment as Payment,
    ));
  }
}

/// @nodoc
class _$_ReturnPayment with DiagnosticableTreeMixin implements _ReturnPayment {
  const _$_ReturnPayment(this.payment) : assert(payment != null);

  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentActorEvent.returnPayment(payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentActorEvent.returnPayment'))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReturnPayment &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @override
  _$ReturnPaymentCopyWith<_ReturnPayment> get copyWith =>
      __$ReturnPaymentCopyWithImpl<_ReturnPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cash(Payment payment),
    @required Result hide(Payment payment),
    @required Result unlockSent(Payment payment),
    @required Result freezeSent(Payment payment),
    @required Result deleteCashed(Payment payment),
    @required Result requestUnlockOfReceived(Payment payment),
    @required Result returnPayment(Payment payment),
    @required Result upVoteUser(Payment payment),
    @required Result downVoteUser(Payment payment),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return returnPayment(payment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cash(Payment payment),
    Result hide(Payment payment),
    Result unlockSent(Payment payment),
    Result freezeSent(Payment payment),
    Result deleteCashed(Payment payment),
    Result requestUnlockOfReceived(Payment payment),
    Result returnPayment(Payment payment),
    Result upVoteUser(Payment payment),
    Result downVoteUser(Payment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (returnPayment != null) {
      return returnPayment(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cash(_Cash value),
    @required Result hide(_Hide value),
    @required Result unlockSent(_UnlockSentPayment value),
    @required Result freezeSent(_FreezeSentPayment value),
    @required Result deleteCashed(_DeleteSentPayment value),
    @required
        Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    @required Result returnPayment(_ReturnPayment value),
    @required Result upVoteUser(_UpVoteUser value),
    @required Result downVoteUser(_DownVoteUser value),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return returnPayment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cash(_Cash value),
    Result hide(_Hide value),
    Result unlockSent(_UnlockSentPayment value),
    Result freezeSent(_FreezeSentPayment value),
    Result deleteCashed(_DeleteSentPayment value),
    Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    Result returnPayment(_ReturnPayment value),
    Result upVoteUser(_UpVoteUser value),
    Result downVoteUser(_DownVoteUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (returnPayment != null) {
      return returnPayment(this);
    }
    return orElse();
  }
}

abstract class _ReturnPayment implements PaymentActorEvent {
  const factory _ReturnPayment(Payment payment) = _$_ReturnPayment;

  @override
  Payment get payment;
  @override
  _$ReturnPaymentCopyWith<_ReturnPayment> get copyWith;
}

/// @nodoc
abstract class _$UpVoteUserCopyWith<$Res>
    implements $PaymentActorEventCopyWith<$Res> {
  factory _$UpVoteUserCopyWith(
          _UpVoteUser value, $Res Function(_UpVoteUser) then) =
      __$UpVoteUserCopyWithImpl<$Res>;
  @override
  $Res call({Payment payment});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$UpVoteUserCopyWithImpl<$Res>
    extends _$PaymentActorEventCopyWithImpl<$Res>
    implements _$UpVoteUserCopyWith<$Res> {
  __$UpVoteUserCopyWithImpl(
      _UpVoteUser _value, $Res Function(_UpVoteUser) _then)
      : super(_value, (v) => _then(v as _UpVoteUser));

  @override
  _UpVoteUser get _value => super._value as _UpVoteUser;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_UpVoteUser(
      payment == freezed ? _value.payment : payment as Payment,
    ));
  }
}

/// @nodoc
class _$_UpVoteUser with DiagnosticableTreeMixin implements _UpVoteUser {
  const _$_UpVoteUser(this.payment) : assert(payment != null);

  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentActorEvent.upVoteUser(payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentActorEvent.upVoteUser'))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpVoteUser &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @override
  _$UpVoteUserCopyWith<_UpVoteUser> get copyWith =>
      __$UpVoteUserCopyWithImpl<_UpVoteUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cash(Payment payment),
    @required Result hide(Payment payment),
    @required Result unlockSent(Payment payment),
    @required Result freezeSent(Payment payment),
    @required Result deleteCashed(Payment payment),
    @required Result requestUnlockOfReceived(Payment payment),
    @required Result returnPayment(Payment payment),
    @required Result upVoteUser(Payment payment),
    @required Result downVoteUser(Payment payment),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return upVoteUser(payment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cash(Payment payment),
    Result hide(Payment payment),
    Result unlockSent(Payment payment),
    Result freezeSent(Payment payment),
    Result deleteCashed(Payment payment),
    Result requestUnlockOfReceived(Payment payment),
    Result returnPayment(Payment payment),
    Result upVoteUser(Payment payment),
    Result downVoteUser(Payment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (upVoteUser != null) {
      return upVoteUser(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cash(_Cash value),
    @required Result hide(_Hide value),
    @required Result unlockSent(_UnlockSentPayment value),
    @required Result freezeSent(_FreezeSentPayment value),
    @required Result deleteCashed(_DeleteSentPayment value),
    @required
        Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    @required Result returnPayment(_ReturnPayment value),
    @required Result upVoteUser(_UpVoteUser value),
    @required Result downVoteUser(_DownVoteUser value),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return upVoteUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cash(_Cash value),
    Result hide(_Hide value),
    Result unlockSent(_UnlockSentPayment value),
    Result freezeSent(_FreezeSentPayment value),
    Result deleteCashed(_DeleteSentPayment value),
    Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    Result returnPayment(_ReturnPayment value),
    Result upVoteUser(_UpVoteUser value),
    Result downVoteUser(_DownVoteUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (upVoteUser != null) {
      return upVoteUser(this);
    }
    return orElse();
  }
}

abstract class _UpVoteUser implements PaymentActorEvent {
  const factory _UpVoteUser(Payment payment) = _$_UpVoteUser;

  @override
  Payment get payment;
  @override
  _$UpVoteUserCopyWith<_UpVoteUser> get copyWith;
}

/// @nodoc
abstract class _$DownVoteUserCopyWith<$Res>
    implements $PaymentActorEventCopyWith<$Res> {
  factory _$DownVoteUserCopyWith(
          _DownVoteUser value, $Res Function(_DownVoteUser) then) =
      __$DownVoteUserCopyWithImpl<$Res>;
  @override
  $Res call({Payment payment});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$DownVoteUserCopyWithImpl<$Res>
    extends _$PaymentActorEventCopyWithImpl<$Res>
    implements _$DownVoteUserCopyWith<$Res> {
  __$DownVoteUserCopyWithImpl(
      _DownVoteUser _value, $Res Function(_DownVoteUser) _then)
      : super(_value, (v) => _then(v as _DownVoteUser));

  @override
  _DownVoteUser get _value => super._value as _DownVoteUser;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_DownVoteUser(
      payment == freezed ? _value.payment : payment as Payment,
    ));
  }
}

/// @nodoc
class _$_DownVoteUser with DiagnosticableTreeMixin implements _DownVoteUser {
  const _$_DownVoteUser(this.payment) : assert(payment != null);

  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentActorEvent.downVoteUser(payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentActorEvent.downVoteUser'))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownVoteUser &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @override
  _$DownVoteUserCopyWith<_DownVoteUser> get copyWith =>
      __$DownVoteUserCopyWithImpl<_DownVoteUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cash(Payment payment),
    @required Result hide(Payment payment),
    @required Result unlockSent(Payment payment),
    @required Result freezeSent(Payment payment),
    @required Result deleteCashed(Payment payment),
    @required Result requestUnlockOfReceived(Payment payment),
    @required Result returnPayment(Payment payment),
    @required Result upVoteUser(Payment payment),
    @required Result downVoteUser(Payment payment),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return downVoteUser(payment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cash(Payment payment),
    Result hide(Payment payment),
    Result unlockSent(Payment payment),
    Result freezeSent(Payment payment),
    Result deleteCashed(Payment payment),
    Result requestUnlockOfReceived(Payment payment),
    Result returnPayment(Payment payment),
    Result upVoteUser(Payment payment),
    Result downVoteUser(Payment payment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (downVoteUser != null) {
      return downVoteUser(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cash(_Cash value),
    @required Result hide(_Hide value),
    @required Result unlockSent(_UnlockSentPayment value),
    @required Result freezeSent(_FreezeSentPayment value),
    @required Result deleteCashed(_DeleteSentPayment value),
    @required
        Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    @required Result returnPayment(_ReturnPayment value),
    @required Result upVoteUser(_UpVoteUser value),
    @required Result downVoteUser(_DownVoteUser value),
  }) {
    assert(cash != null);
    assert(hide != null);
    assert(unlockSent != null);
    assert(freezeSent != null);
    assert(deleteCashed != null);
    assert(requestUnlockOfReceived != null);
    assert(returnPayment != null);
    assert(upVoteUser != null);
    assert(downVoteUser != null);
    return downVoteUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cash(_Cash value),
    Result hide(_Hide value),
    Result unlockSent(_UnlockSentPayment value),
    Result freezeSent(_FreezeSentPayment value),
    Result deleteCashed(_DeleteSentPayment value),
    Result requestUnlockOfReceived(_RequestUnlockOfReceivedPayment value),
    Result returnPayment(_ReturnPayment value),
    Result upVoteUser(_UpVoteUser value),
    Result downVoteUser(_DownVoteUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (downVoteUser != null) {
      return downVoteUser(this);
    }
    return orElse();
  }
}

abstract class _DownVoteUser implements PaymentActorEvent {
  const factory _DownVoteUser(Payment payment) = _$_DownVoteUser;

  @override
  Payment get payment;
  @override
  _$DownVoteUserCopyWith<_DownVoteUser> get copyWith;
}

/// @nodoc
class _$PaymentActorStateTearOff {
  const _$PaymentActorStateTearOff();

// ignore: unused_element
  _PaymentActorState call(
      {@required
          bool isSaving,
      @required
          Option<Either<PaymentFailure, Unit>> saveFailureOrSuccessOption}) {
    return _PaymentActorState(
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentActorState = _$PaymentActorStateTearOff();

/// @nodoc
mixin _$PaymentActorState {
  bool get isSaving;
  Option<Either<PaymentFailure, Unit>> get saveFailureOrSuccessOption;

  $PaymentActorStateCopyWith<PaymentActorState> get copyWith;
}

/// @nodoc
abstract class $PaymentActorStateCopyWith<$Res> {
  factory $PaymentActorStateCopyWith(
          PaymentActorState value, $Res Function(PaymentActorState) then) =
      _$PaymentActorStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSaving,
      Option<Either<PaymentFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$PaymentActorStateCopyWithImpl<$Res>
    implements $PaymentActorStateCopyWith<$Res> {
  _$PaymentActorStateCopyWithImpl(this._value, this._then);

  final PaymentActorState _value;
  // ignore: unused_field
  final $Res Function(PaymentActorState) _then;

  @override
  $Res call({
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<PaymentFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$PaymentActorStateCopyWith<$Res>
    implements $PaymentActorStateCopyWith<$Res> {
  factory _$PaymentActorStateCopyWith(
          _PaymentActorState value, $Res Function(_PaymentActorState) then) =
      __$PaymentActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSaving,
      Option<Either<PaymentFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$PaymentActorStateCopyWithImpl<$Res>
    extends _$PaymentActorStateCopyWithImpl<$Res>
    implements _$PaymentActorStateCopyWith<$Res> {
  __$PaymentActorStateCopyWithImpl(
      _PaymentActorState _value, $Res Function(_PaymentActorState) _then)
      : super(_value, (v) => _then(v as _PaymentActorState));

  @override
  _PaymentActorState get _value => super._value as _PaymentActorState;

  @override
  $Res call({
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_PaymentActorState(
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<PaymentFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_PaymentActorState extends _PaymentActorState
    with DiagnosticableTreeMixin {
  _$_PaymentActorState(
      {@required this.isSaving, @required this.saveFailureOrSuccessOption})
      : assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null),
        super._();

  @override
  final bool isSaving;
  @override
  final Option<Either<PaymentFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentActorState(isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentActorState'))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentActorState &&
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
  _$PaymentActorStateCopyWith<_PaymentActorState> get copyWith =>
      __$PaymentActorStateCopyWithImpl<_PaymentActorState>(this, _$identity);
}

abstract class _PaymentActorState extends PaymentActorState {
  _PaymentActorState._() : super._();
  factory _PaymentActorState(
      {@required
          bool isSaving,
      @required
          Option<Either<PaymentFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_PaymentActorState;

  @override
  bool get isSaving;
  @override
  Option<Either<PaymentFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$PaymentActorStateCopyWith<_PaymentActorState> get copyWith;
}
