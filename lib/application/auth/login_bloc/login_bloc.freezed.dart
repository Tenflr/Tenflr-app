// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

// ignore: unused_element
  _PhoneNumberChanged phoneNumberChanged(ValidPhoneNumber phoneNumber) {
    return _PhoneNumberChanged(
      phoneNumber,
    );
  }

// ignore: unused_element
  _LoginWithGooglePressed loginWithGooglePressed() {
    return const _LoginWithGooglePressed();
  }

// ignore: unused_element
  _LoginWithPhonePressed loginWithPhonePressed() {
    return const _LoginWithPhonePressed();
  }

// ignore: unused_element
  _VerifyOTP verifyOTP({@required String otp}) {
    return _VerifyOTP(
      otp: otp,
    );
  }

// ignore: unused_element
  _TriggerOtpVerification triggerOtpVerification() {
    return const _TriggerOtpVerification();
  }

// ignore: unused_element
  _SetVerificaitonId setVerificationId({@required String verId}) {
    return _SetVerificaitonId(
      verId: verId,
    );
  }

// ignore: unused_element
  _CancelledByUser cancelledByUser() {
    return const _CancelledByUser();
  }

// ignore: unused_element
  _PhoneVerificationFailed phoneVerificationFailed() {
    return const _PhoneVerificationFailed();
  }
}

/// @nodoc
// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result loginWithGooglePressed(),
    @required Result loginWithPhonePressed(),
    @required Result verifyOTP(String otp),
    @required Result triggerOtpVerification(),
    @required Result setVerificationId(String verId),
    @required Result cancelledByUser(),
    @required Result phoneVerificationFailed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result loginWithGooglePressed(),
    Result loginWithPhonePressed(),
    Result verifyOTP(String otp),
    Result triggerOtpVerification(),
    Result setVerificationId(String verId),
    Result cancelledByUser(),
    Result phoneVerificationFailed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result loginWithGooglePressed(_LoginWithGooglePressed value),
    @required Result loginWithPhonePressed(_LoginWithPhonePressed value),
    @required Result verifyOTP(_VerifyOTP value),
    @required Result triggerOtpVerification(_TriggerOtpVerification value),
    @required Result setVerificationId(_SetVerificaitonId value),
    @required Result cancelledByUser(_CancelledByUser value),
    @required Result phoneVerificationFailed(_PhoneVerificationFailed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result loginWithGooglePressed(_LoginWithGooglePressed value),
    Result loginWithPhonePressed(_LoginWithPhonePressed value),
    Result verifyOTP(_VerifyOTP value),
    Result triggerOtpVerification(_TriggerOtpVerification value),
    Result setVerificationId(_SetVerificaitonId value),
    Result cancelledByUser(_CancelledByUser value),
    Result phoneVerificationFailed(_PhoneVerificationFailed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$PhoneNumberChangedCopyWith<$Res> {
  factory _$PhoneNumberChangedCopyWith(
          _PhoneNumberChanged value, $Res Function(_PhoneNumberChanged) then) =
      __$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({ValidPhoneNumber phoneNumber});
}

/// @nodoc
class __$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(
      _PhoneNumberChanged _value, $Res Function(_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChanged));

  @override
  _PhoneNumberChanged get _value => super._value as _PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumber = freezed,
  }) {
    return _then(_PhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as ValidPhoneNumber,
    ));
  }
}

/// @nodoc
class _$_PhoneNumberChanged
    with DiagnosticableTreeMixin
    implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumber) : assert(phoneNumber != null);

  @override
  final ValidPhoneNumber phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.phoneNumberChanged'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @override
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result loginWithGooglePressed(),
    @required Result loginWithPhonePressed(),
    @required Result verifyOTP(String otp),
    @required Result triggerOtpVerification(),
    @required Result setVerificationId(String verId),
    @required Result cancelledByUser(),
    @required Result phoneVerificationFailed(),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result loginWithGooglePressed(),
    Result loginWithPhonePressed(),
    Result verifyOTP(String otp),
    Result triggerOtpVerification(),
    Result setVerificationId(String verId),
    Result cancelledByUser(),
    Result phoneVerificationFailed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result loginWithGooglePressed(_LoginWithGooglePressed value),
    @required Result loginWithPhonePressed(_LoginWithPhonePressed value),
    @required Result verifyOTP(_VerifyOTP value),
    @required Result triggerOtpVerification(_TriggerOtpVerification value),
    @required Result setVerificationId(_SetVerificaitonId value),
    @required Result cancelledByUser(_CancelledByUser value),
    @required Result phoneVerificationFailed(_PhoneVerificationFailed value),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result loginWithGooglePressed(_LoginWithGooglePressed value),
    Result loginWithPhonePressed(_LoginWithPhonePressed value),
    Result verifyOTP(_VerifyOTP value),
    Result triggerOtpVerification(_TriggerOtpVerification value),
    Result setVerificationId(_SetVerificaitonId value),
    Result cancelledByUser(_CancelledByUser value),
    Result phoneVerificationFailed(_PhoneVerificationFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements LoginEvent {
  const factory _PhoneNumberChanged(ValidPhoneNumber phoneNumber) =
      _$_PhoneNumberChanged;

  ValidPhoneNumber get phoneNumber;
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class _$LoginWithGooglePressedCopyWith<$Res> {
  factory _$LoginWithGooglePressedCopyWith(_LoginWithGooglePressed value,
          $Res Function(_LoginWithGooglePressed) then) =
      __$LoginWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginWithGooglePressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginWithGooglePressedCopyWith<$Res> {
  __$LoginWithGooglePressedCopyWithImpl(_LoginWithGooglePressed _value,
      $Res Function(_LoginWithGooglePressed) _then)
      : super(_value, (v) => _then(v as _LoginWithGooglePressed));

  @override
  _LoginWithGooglePressed get _value => super._value as _LoginWithGooglePressed;
}

/// @nodoc
class _$_LoginWithGooglePressed
    with DiagnosticableTreeMixin
    implements _LoginWithGooglePressed {
  const _$_LoginWithGooglePressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.loginWithGooglePressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.loginWithGooglePressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result loginWithGooglePressed(),
    @required Result loginWithPhonePressed(),
    @required Result verifyOTP(String otp),
    @required Result triggerOtpVerification(),
    @required Result setVerificationId(String verId),
    @required Result cancelledByUser(),
    @required Result phoneVerificationFailed(),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return loginWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result loginWithGooglePressed(),
    Result loginWithPhonePressed(),
    Result verifyOTP(String otp),
    Result triggerOtpVerification(),
    Result setVerificationId(String verId),
    Result cancelledByUser(),
    Result phoneVerificationFailed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGooglePressed != null) {
      return loginWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result loginWithGooglePressed(_LoginWithGooglePressed value),
    @required Result loginWithPhonePressed(_LoginWithPhonePressed value),
    @required Result verifyOTP(_VerifyOTP value),
    @required Result triggerOtpVerification(_TriggerOtpVerification value),
    @required Result setVerificationId(_SetVerificaitonId value),
    @required Result cancelledByUser(_CancelledByUser value),
    @required Result phoneVerificationFailed(_PhoneVerificationFailed value),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return loginWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result loginWithGooglePressed(_LoginWithGooglePressed value),
    Result loginWithPhonePressed(_LoginWithPhonePressed value),
    Result verifyOTP(_VerifyOTP value),
    Result triggerOtpVerification(_TriggerOtpVerification value),
    Result setVerificationId(_SetVerificaitonId value),
    Result cancelledByUser(_CancelledByUser value),
    Result phoneVerificationFailed(_PhoneVerificationFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGooglePressed != null) {
      return loginWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _LoginWithGooglePressed implements LoginEvent {
  const factory _LoginWithGooglePressed() = _$_LoginWithGooglePressed;
}

/// @nodoc
abstract class _$LoginWithPhonePressedCopyWith<$Res> {
  factory _$LoginWithPhonePressedCopyWith(_LoginWithPhonePressed value,
          $Res Function(_LoginWithPhonePressed) then) =
      __$LoginWithPhonePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginWithPhonePressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginWithPhonePressedCopyWith<$Res> {
  __$LoginWithPhonePressedCopyWithImpl(_LoginWithPhonePressed _value,
      $Res Function(_LoginWithPhonePressed) _then)
      : super(_value, (v) => _then(v as _LoginWithPhonePressed));

  @override
  _LoginWithPhonePressed get _value => super._value as _LoginWithPhonePressed;
}

/// @nodoc
class _$_LoginWithPhonePressed
    with DiagnosticableTreeMixin
    implements _LoginWithPhonePressed {
  const _$_LoginWithPhonePressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.loginWithPhonePressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.loginWithPhonePressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginWithPhonePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result loginWithGooglePressed(),
    @required Result loginWithPhonePressed(),
    @required Result verifyOTP(String otp),
    @required Result triggerOtpVerification(),
    @required Result setVerificationId(String verId),
    @required Result cancelledByUser(),
    @required Result phoneVerificationFailed(),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return loginWithPhonePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result loginWithGooglePressed(),
    Result loginWithPhonePressed(),
    Result verifyOTP(String otp),
    Result triggerOtpVerification(),
    Result setVerificationId(String verId),
    Result cancelledByUser(),
    Result phoneVerificationFailed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithPhonePressed != null) {
      return loginWithPhonePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result loginWithGooglePressed(_LoginWithGooglePressed value),
    @required Result loginWithPhonePressed(_LoginWithPhonePressed value),
    @required Result verifyOTP(_VerifyOTP value),
    @required Result triggerOtpVerification(_TriggerOtpVerification value),
    @required Result setVerificationId(_SetVerificaitonId value),
    @required Result cancelledByUser(_CancelledByUser value),
    @required Result phoneVerificationFailed(_PhoneVerificationFailed value),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return loginWithPhonePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result loginWithGooglePressed(_LoginWithGooglePressed value),
    Result loginWithPhonePressed(_LoginWithPhonePressed value),
    Result verifyOTP(_VerifyOTP value),
    Result triggerOtpVerification(_TriggerOtpVerification value),
    Result setVerificationId(_SetVerificaitonId value),
    Result cancelledByUser(_CancelledByUser value),
    Result phoneVerificationFailed(_PhoneVerificationFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithPhonePressed != null) {
      return loginWithPhonePressed(this);
    }
    return orElse();
  }
}

abstract class _LoginWithPhonePressed implements LoginEvent {
  const factory _LoginWithPhonePressed() = _$_LoginWithPhonePressed;
}

/// @nodoc
abstract class _$VerifyOTPCopyWith<$Res> {
  factory _$VerifyOTPCopyWith(
          _VerifyOTP value, $Res Function(_VerifyOTP) then) =
      __$VerifyOTPCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class __$VerifyOTPCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$VerifyOTPCopyWith<$Res> {
  __$VerifyOTPCopyWithImpl(_VerifyOTP _value, $Res Function(_VerifyOTP) _then)
      : super(_value, (v) => _then(v as _VerifyOTP));

  @override
  _VerifyOTP get _value => super._value as _VerifyOTP;

  @override
  $Res call({
    Object otp = freezed,
  }) {
    return _then(_VerifyOTP(
      otp: otp == freezed ? _value.otp : otp as String,
    ));
  }
}

/// @nodoc
class _$_VerifyOTP with DiagnosticableTreeMixin implements _VerifyOTP {
  const _$_VerifyOTP({@required this.otp}) : assert(otp != null);

  @override
  final String otp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.verifyOTP(otp: $otp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.verifyOTP'))
      ..add(DiagnosticsProperty('otp', otp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyOTP &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otp);

  @override
  _$VerifyOTPCopyWith<_VerifyOTP> get copyWith =>
      __$VerifyOTPCopyWithImpl<_VerifyOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result loginWithGooglePressed(),
    @required Result loginWithPhonePressed(),
    @required Result verifyOTP(String otp),
    @required Result triggerOtpVerification(),
    @required Result setVerificationId(String verId),
    @required Result cancelledByUser(),
    @required Result phoneVerificationFailed(),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return verifyOTP(otp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result loginWithGooglePressed(),
    Result loginWithPhonePressed(),
    Result verifyOTP(String otp),
    Result triggerOtpVerification(),
    Result setVerificationId(String verId),
    Result cancelledByUser(),
    Result phoneVerificationFailed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyOTP != null) {
      return verifyOTP(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result loginWithGooglePressed(_LoginWithGooglePressed value),
    @required Result loginWithPhonePressed(_LoginWithPhonePressed value),
    @required Result verifyOTP(_VerifyOTP value),
    @required Result triggerOtpVerification(_TriggerOtpVerification value),
    @required Result setVerificationId(_SetVerificaitonId value),
    @required Result cancelledByUser(_CancelledByUser value),
    @required Result phoneVerificationFailed(_PhoneVerificationFailed value),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return verifyOTP(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result loginWithGooglePressed(_LoginWithGooglePressed value),
    Result loginWithPhonePressed(_LoginWithPhonePressed value),
    Result verifyOTP(_VerifyOTP value),
    Result triggerOtpVerification(_TriggerOtpVerification value),
    Result setVerificationId(_SetVerificaitonId value),
    Result cancelledByUser(_CancelledByUser value),
    Result phoneVerificationFailed(_PhoneVerificationFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyOTP != null) {
      return verifyOTP(this);
    }
    return orElse();
  }
}

abstract class _VerifyOTP implements LoginEvent {
  const factory _VerifyOTP({@required String otp}) = _$_VerifyOTP;

  String get otp;
  _$VerifyOTPCopyWith<_VerifyOTP> get copyWith;
}

/// @nodoc
abstract class _$TriggerOtpVerificationCopyWith<$Res> {
  factory _$TriggerOtpVerificationCopyWith(_TriggerOtpVerification value,
          $Res Function(_TriggerOtpVerification) then) =
      __$TriggerOtpVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$TriggerOtpVerificationCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$TriggerOtpVerificationCopyWith<$Res> {
  __$TriggerOtpVerificationCopyWithImpl(_TriggerOtpVerification _value,
      $Res Function(_TriggerOtpVerification) _then)
      : super(_value, (v) => _then(v as _TriggerOtpVerification));

  @override
  _TriggerOtpVerification get _value => super._value as _TriggerOtpVerification;
}

/// @nodoc
class _$_TriggerOtpVerification
    with DiagnosticableTreeMixin
    implements _TriggerOtpVerification {
  const _$_TriggerOtpVerification();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.triggerOtpVerification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.triggerOtpVerification'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TriggerOtpVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result loginWithGooglePressed(),
    @required Result loginWithPhonePressed(),
    @required Result verifyOTP(String otp),
    @required Result triggerOtpVerification(),
    @required Result setVerificationId(String verId),
    @required Result cancelledByUser(),
    @required Result phoneVerificationFailed(),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return triggerOtpVerification();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result loginWithGooglePressed(),
    Result loginWithPhonePressed(),
    Result verifyOTP(String otp),
    Result triggerOtpVerification(),
    Result setVerificationId(String verId),
    Result cancelledByUser(),
    Result phoneVerificationFailed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (triggerOtpVerification != null) {
      return triggerOtpVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result loginWithGooglePressed(_LoginWithGooglePressed value),
    @required Result loginWithPhonePressed(_LoginWithPhonePressed value),
    @required Result verifyOTP(_VerifyOTP value),
    @required Result triggerOtpVerification(_TriggerOtpVerification value),
    @required Result setVerificationId(_SetVerificaitonId value),
    @required Result cancelledByUser(_CancelledByUser value),
    @required Result phoneVerificationFailed(_PhoneVerificationFailed value),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return triggerOtpVerification(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result loginWithGooglePressed(_LoginWithGooglePressed value),
    Result loginWithPhonePressed(_LoginWithPhonePressed value),
    Result verifyOTP(_VerifyOTP value),
    Result triggerOtpVerification(_TriggerOtpVerification value),
    Result setVerificationId(_SetVerificaitonId value),
    Result cancelledByUser(_CancelledByUser value),
    Result phoneVerificationFailed(_PhoneVerificationFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (triggerOtpVerification != null) {
      return triggerOtpVerification(this);
    }
    return orElse();
  }
}

abstract class _TriggerOtpVerification implements LoginEvent {
  const factory _TriggerOtpVerification() = _$_TriggerOtpVerification;
}

/// @nodoc
abstract class _$SetVerificaitonIdCopyWith<$Res> {
  factory _$SetVerificaitonIdCopyWith(
          _SetVerificaitonId value, $Res Function(_SetVerificaitonId) then) =
      __$SetVerificaitonIdCopyWithImpl<$Res>;
  $Res call({String verId});
}

/// @nodoc
class __$SetVerificaitonIdCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$SetVerificaitonIdCopyWith<$Res> {
  __$SetVerificaitonIdCopyWithImpl(
      _SetVerificaitonId _value, $Res Function(_SetVerificaitonId) _then)
      : super(_value, (v) => _then(v as _SetVerificaitonId));

  @override
  _SetVerificaitonId get _value => super._value as _SetVerificaitonId;

  @override
  $Res call({
    Object verId = freezed,
  }) {
    return _then(_SetVerificaitonId(
      verId: verId == freezed ? _value.verId : verId as String,
    ));
  }
}

/// @nodoc
class _$_SetVerificaitonId
    with DiagnosticableTreeMixin
    implements _SetVerificaitonId {
  const _$_SetVerificaitonId({@required this.verId}) : assert(verId != null);

  @override
  final String verId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.setVerificationId(verId: $verId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.setVerificationId'))
      ..add(DiagnosticsProperty('verId', verId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetVerificaitonId &&
            (identical(other.verId, verId) ||
                const DeepCollectionEquality().equals(other.verId, verId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(verId);

  @override
  _$SetVerificaitonIdCopyWith<_SetVerificaitonId> get copyWith =>
      __$SetVerificaitonIdCopyWithImpl<_SetVerificaitonId>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result loginWithGooglePressed(),
    @required Result loginWithPhonePressed(),
    @required Result verifyOTP(String otp),
    @required Result triggerOtpVerification(),
    @required Result setVerificationId(String verId),
    @required Result cancelledByUser(),
    @required Result phoneVerificationFailed(),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return setVerificationId(verId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result loginWithGooglePressed(),
    Result loginWithPhonePressed(),
    Result verifyOTP(String otp),
    Result triggerOtpVerification(),
    Result setVerificationId(String verId),
    Result cancelledByUser(),
    Result phoneVerificationFailed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setVerificationId != null) {
      return setVerificationId(verId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result loginWithGooglePressed(_LoginWithGooglePressed value),
    @required Result loginWithPhonePressed(_LoginWithPhonePressed value),
    @required Result verifyOTP(_VerifyOTP value),
    @required Result triggerOtpVerification(_TriggerOtpVerification value),
    @required Result setVerificationId(_SetVerificaitonId value),
    @required Result cancelledByUser(_CancelledByUser value),
    @required Result phoneVerificationFailed(_PhoneVerificationFailed value),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return setVerificationId(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result loginWithGooglePressed(_LoginWithGooglePressed value),
    Result loginWithPhonePressed(_LoginWithPhonePressed value),
    Result verifyOTP(_VerifyOTP value),
    Result triggerOtpVerification(_TriggerOtpVerification value),
    Result setVerificationId(_SetVerificaitonId value),
    Result cancelledByUser(_CancelledByUser value),
    Result phoneVerificationFailed(_PhoneVerificationFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setVerificationId != null) {
      return setVerificationId(this);
    }
    return orElse();
  }
}

abstract class _SetVerificaitonId implements LoginEvent {
  const factory _SetVerificaitonId({@required String verId}) =
      _$_SetVerificaitonId;

  String get verId;
  _$SetVerificaitonIdCopyWith<_SetVerificaitonId> get copyWith;
}

/// @nodoc
abstract class _$CancelledByUserCopyWith<$Res> {
  factory _$CancelledByUserCopyWith(
          _CancelledByUser value, $Res Function(_CancelledByUser) then) =
      __$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelledByUserCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$CancelledByUserCopyWith<$Res> {
  __$CancelledByUserCopyWithImpl(
      _CancelledByUser _value, $Res Function(_CancelledByUser) _then)
      : super(_value, (v) => _then(v as _CancelledByUser));

  @override
  _CancelledByUser get _value => super._value as _CancelledByUser;
}

/// @nodoc
class _$_CancelledByUser
    with DiagnosticableTreeMixin
    implements _CancelledByUser {
  const _$_CancelledByUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.cancelledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginEvent.cancelledByUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result loginWithGooglePressed(),
    @required Result loginWithPhonePressed(),
    @required Result verifyOTP(String otp),
    @required Result triggerOtpVerification(),
    @required Result setVerificationId(String verId),
    @required Result cancelledByUser(),
    @required Result phoneVerificationFailed(),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result loginWithGooglePressed(),
    Result loginWithPhonePressed(),
    Result verifyOTP(String otp),
    Result triggerOtpVerification(),
    Result setVerificationId(String verId),
    Result cancelledByUser(),
    Result phoneVerificationFailed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result loginWithGooglePressed(_LoginWithGooglePressed value),
    @required Result loginWithPhonePressed(_LoginWithPhonePressed value),
    @required Result verifyOTP(_VerifyOTP value),
    @required Result triggerOtpVerification(_TriggerOtpVerification value),
    @required Result setVerificationId(_SetVerificaitonId value),
    @required Result cancelledByUser(_CancelledByUser value),
    @required Result phoneVerificationFailed(_PhoneVerificationFailed value),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result loginWithGooglePressed(_LoginWithGooglePressed value),
    Result loginWithPhonePressed(_LoginWithPhonePressed value),
    Result verifyOTP(_VerifyOTP value),
    Result triggerOtpVerification(_TriggerOtpVerification value),
    Result setVerificationId(_SetVerificaitonId value),
    Result cancelledByUser(_CancelledByUser value),
    Result phoneVerificationFailed(_PhoneVerificationFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class _CancelledByUser implements LoginEvent {
  const factory _CancelledByUser() = _$_CancelledByUser;
}

/// @nodoc
abstract class _$PhoneVerificationFailedCopyWith<$Res> {
  factory _$PhoneVerificationFailedCopyWith(_PhoneVerificationFailed value,
          $Res Function(_PhoneVerificationFailed) then) =
      __$PhoneVerificationFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PhoneVerificationFailedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$PhoneVerificationFailedCopyWith<$Res> {
  __$PhoneVerificationFailedCopyWithImpl(_PhoneVerificationFailed _value,
      $Res Function(_PhoneVerificationFailed) _then)
      : super(_value, (v) => _then(v as _PhoneVerificationFailed));

  @override
  _PhoneVerificationFailed get _value =>
      super._value as _PhoneVerificationFailed;
}

/// @nodoc
class _$_PhoneVerificationFailed
    with DiagnosticableTreeMixin
    implements _PhoneVerificationFailed {
  const _$_PhoneVerificationFailed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.phoneVerificationFailed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.phoneVerificationFailed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PhoneVerificationFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result loginWithGooglePressed(),
    @required Result loginWithPhonePressed(),
    @required Result verifyOTP(String otp),
    @required Result triggerOtpVerification(),
    @required Result setVerificationId(String verId),
    @required Result cancelledByUser(),
    @required Result phoneVerificationFailed(),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return phoneVerificationFailed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result loginWithGooglePressed(),
    Result loginWithPhonePressed(),
    Result verifyOTP(String otp),
    Result triggerOtpVerification(),
    Result setVerificationId(String verId),
    Result cancelledByUser(),
    Result phoneVerificationFailed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneVerificationFailed != null) {
      return phoneVerificationFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result loginWithGooglePressed(_LoginWithGooglePressed value),
    @required Result loginWithPhonePressed(_LoginWithPhonePressed value),
    @required Result verifyOTP(_VerifyOTP value),
    @required Result triggerOtpVerification(_TriggerOtpVerification value),
    @required Result setVerificationId(_SetVerificaitonId value),
    @required Result cancelledByUser(_CancelledByUser value),
    @required Result phoneVerificationFailed(_PhoneVerificationFailed value),
  }) {
    assert(phoneNumberChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithPhonePressed != null);
    assert(verifyOTP != null);
    assert(triggerOtpVerification != null);
    assert(setVerificationId != null);
    assert(cancelledByUser != null);
    assert(phoneVerificationFailed != null);
    return phoneVerificationFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result loginWithGooglePressed(_LoginWithGooglePressed value),
    Result loginWithPhonePressed(_LoginWithPhonePressed value),
    Result verifyOTP(_VerifyOTP value),
    Result triggerOtpVerification(_TriggerOtpVerification value),
    Result setVerificationId(_SetVerificaitonId value),
    Result cancelledByUser(_CancelledByUser value),
    Result phoneVerificationFailed(_PhoneVerificationFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneVerificationFailed != null) {
      return phoneVerificationFailed(this);
    }
    return orElse();
  }
}

abstract class _PhoneVerificationFailed implements LoginEvent {
  const factory _PhoneVerificationFailed() = _$_PhoneVerificationFailed;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _LoginState call(
      {@required ValidPhoneNumber phoneNumber,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required bool newUserCreated,
      @required bool newUserCouldNotBeCreated,
      @required bool isEditing,
      @required bool otpSent,
      @required String verId,
      @required bool oldUserReturned,
      @required bool otpVerified,
      @required User user,
      @required Option<Either<AuthFailure, bool>> authFailureOrSuccessOption}) {
    return _LoginState(
      phoneNumber: phoneNumber,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      newUserCreated: newUserCreated,
      newUserCouldNotBeCreated: newUserCouldNotBeCreated,
      isEditing: isEditing,
      otpSent: otpSent,
      verId: verId,
      oldUserReturned: oldUserReturned,
      otpVerified: otpVerified,
      user: user,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  ValidPhoneNumber get phoneNumber;
  bool get showErrorMessages;
  bool get isSubmitting;
  bool get newUserCreated;
  bool get newUserCouldNotBeCreated;
  bool get isEditing;
  bool get otpSent;
  String get verId;
  bool get oldUserReturned;
  bool get otpVerified;
  User get user;
  Option<Either<AuthFailure, bool>> get authFailureOrSuccessOption;

  $LoginStateCopyWith<LoginState> get copyWith;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {ValidPhoneNumber phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      bool newUserCreated,
      bool newUserCouldNotBeCreated,
      bool isEditing,
      bool otpSent,
      String verId,
      bool oldUserReturned,
      bool otpVerified,
      User user,
      Option<Either<AuthFailure, bool>> authFailureOrSuccessOption});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object newUserCreated = freezed,
    Object newUserCouldNotBeCreated = freezed,
    Object isEditing = freezed,
    Object otpSent = freezed,
    Object verId = freezed,
    Object oldUserReturned = freezed,
    Object otpVerified = freezed,
    Object user = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as ValidPhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      newUserCreated: newUserCreated == freezed
          ? _value.newUserCreated
          : newUserCreated as bool,
      newUserCouldNotBeCreated: newUserCouldNotBeCreated == freezed
          ? _value.newUserCouldNotBeCreated
          : newUserCouldNotBeCreated as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      otpSent: otpSent == freezed ? _value.otpSent : otpSent as bool,
      verId: verId == freezed ? _value.verId : verId as String,
      oldUserReturned: oldUserReturned == freezed
          ? _value.oldUserReturned
          : oldUserReturned as bool,
      otpVerified:
          otpVerified == freezed ? _value.otpVerified : otpVerified as bool,
      user: user == freezed ? _value.user : user as User,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, bool>>,
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
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ValidPhoneNumber phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      bool newUserCreated,
      bool newUserCouldNotBeCreated,
      bool isEditing,
      bool otpSent,
      String verId,
      bool oldUserReturned,
      bool otpVerified,
      User user,
      Option<Either<AuthFailure, bool>> authFailureOrSuccessOption});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object newUserCreated = freezed,
    Object newUserCouldNotBeCreated = freezed,
    Object isEditing = freezed,
    Object otpSent = freezed,
    Object verId = freezed,
    Object oldUserReturned = freezed,
    Object otpVerified = freezed,
    Object user = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_LoginState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as ValidPhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      newUserCreated: newUserCreated == freezed
          ? _value.newUserCreated
          : newUserCreated as bool,
      newUserCouldNotBeCreated: newUserCouldNotBeCreated == freezed
          ? _value.newUserCouldNotBeCreated
          : newUserCouldNotBeCreated as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      otpSent: otpSent == freezed ? _value.otpSent : otpSent as bool,
      verId: verId == freezed ? _value.verId : verId as String,
      oldUserReturned: oldUserReturned == freezed
          ? _value.oldUserReturned
          : oldUserReturned as bool,
      otpVerified:
          otpVerified == freezed ? _value.otpVerified : otpVerified as bool,
      user: user == freezed ? _value.user : user as User,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, bool>>,
    ));
  }
}

/// @nodoc
class _$_LoginState with DiagnosticableTreeMixin implements _LoginState {
  const _$_LoginState(
      {@required this.phoneNumber,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.newUserCreated,
      @required this.newUserCouldNotBeCreated,
      @required this.isEditing,
      @required this.otpSent,
      @required this.verId,
      @required this.oldUserReturned,
      @required this.otpVerified,
      @required this.user,
      @required this.authFailureOrSuccessOption})
      : assert(phoneNumber != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(newUserCreated != null),
        assert(newUserCouldNotBeCreated != null),
        assert(isEditing != null),
        assert(otpSent != null),
        assert(verId != null),
        assert(oldUserReturned != null),
        assert(otpVerified != null),
        assert(user != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final ValidPhoneNumber phoneNumber;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool newUserCreated;
  @override
  final bool newUserCouldNotBeCreated;
  @override
  final bool isEditing;
  @override
  final bool otpSent;
  @override
  final String verId;
  @override
  final bool oldUserReturned;
  @override
  final bool otpVerified;
  @override
  final User user;
  @override
  final Option<Either<AuthFailure, bool>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState(phoneNumber: $phoneNumber, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, newUserCreated: $newUserCreated, newUserCouldNotBeCreated: $newUserCouldNotBeCreated, isEditing: $isEditing, otpSent: $otpSent, verId: $verId, oldUserReturned: $oldUserReturned, otpVerified: $otpVerified, user: $user, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('newUserCreated', newUserCreated))
      ..add(DiagnosticsProperty(
          'newUserCouldNotBeCreated', newUserCouldNotBeCreated))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('otpSent', otpSent))
      ..add(DiagnosticsProperty('verId', verId))
      ..add(DiagnosticsProperty('oldUserReturned', oldUserReturned))
      ..add(DiagnosticsProperty('otpVerified', otpVerified))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.newUserCreated, newUserCreated) ||
                const DeepCollectionEquality()
                    .equals(other.newUserCreated, newUserCreated)) &&
            (identical(
                    other.newUserCouldNotBeCreated, newUserCouldNotBeCreated) ||
                const DeepCollectionEquality().equals(
                    other.newUserCouldNotBeCreated,
                    newUserCouldNotBeCreated)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.otpSent, otpSent) ||
                const DeepCollectionEquality()
                    .equals(other.otpSent, otpSent)) &&
            (identical(other.verId, verId) ||
                const DeepCollectionEquality().equals(other.verId, verId)) &&
            (identical(other.oldUserReturned, oldUserReturned) ||
                const DeepCollectionEquality()
                    .equals(other.oldUserReturned, oldUserReturned)) &&
            (identical(other.otpVerified, otpVerified) ||
                const DeepCollectionEquality()
                    .equals(other.otpVerified, otpVerified)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(newUserCreated) ^
      const DeepCollectionEquality().hash(newUserCouldNotBeCreated) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(otpSent) ^
      const DeepCollectionEquality().hash(verId) ^
      const DeepCollectionEquality().hash(oldUserReturned) ^
      const DeepCollectionEquality().hash(otpVerified) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
          {@required
              ValidPhoneNumber phoneNumber,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              bool newUserCreated,
          @required
              bool newUserCouldNotBeCreated,
          @required
              bool isEditing,
          @required
              bool otpSent,
          @required
              String verId,
          @required
              bool oldUserReturned,
          @required
              bool otpVerified,
          @required
              User user,
          @required
              Option<Either<AuthFailure, bool>> authFailureOrSuccessOption}) =
      _$_LoginState;

  @override
  ValidPhoneNumber get phoneNumber;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get newUserCreated;
  @override
  bool get newUserCouldNotBeCreated;
  @override
  bool get isEditing;
  @override
  bool get otpSent;
  @override
  String get verId;
  @override
  bool get oldUserReturned;
  @override
  bool get otpVerified;
  @override
  User get user;
  @override
  Option<Either<AuthFailure, bool>> get authFailureOrSuccessOption;
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith;
}
