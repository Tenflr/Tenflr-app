// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserDetailEventTearOff {
  const _$UserDetailEventTearOff();

// ignore: unused_element
  _Initialized initialize(User user) {
    return _Initialized(
      user,
    );
  }

// ignore: unused_element
  _PhoneNumberChangedE phoneNumberChanged(
      {@required ValidPhoneNumber phoneNumber}) {
    return _PhoneNumberChangedE(
      phoneNumber: phoneNumber,
    );
  }

// ignore: unused_element
  _EmailChangedE emailChanged({@required EmailAddress email}) {
    return _EmailChangedE(
      email: email,
    );
  }

// ignore: unused_element
  _FirstNameChangedE firstNameChanged({@required ValidUserName firstName}) {
    return _FirstNameChangedE(
      firstName: firstName,
    );
  }

// ignore: unused_element
  _LastNameChangedE lastNameChanged({@required ValidUserName lastName}) {
    return _LastNameChangedE(
      lastName: lastName,
    );
  }

// ignore: unused_element
  _Summited submit() {
    return const _Summited();
  }
}

/// @nodoc
// ignore: unused_element
const $UserDetailEvent = _$UserDetailEventTearOff();

/// @nodoc
mixin _$UserDetailEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User user),
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result emailChanged(EmailAddress email),
    @required Result firstNameChanged(ValidUserName firstName),
    @required Result lastNameChanged(ValidUserName lastName),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result emailChanged(EmailAddress email),
    Result firstNameChanged(ValidUserName firstName),
    Result lastNameChanged(ValidUserName lastName),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result phoneNumberChanged(_PhoneNumberChangedE value),
    @required Result emailChanged(_EmailChangedE value),
    @required Result firstNameChanged(_FirstNameChangedE value),
    @required Result lastNameChanged(_LastNameChangedE value),
    @required Result submit(_Summited value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result phoneNumberChanged(_PhoneNumberChangedE value),
    Result emailChanged(_EmailChangedE value),
    Result firstNameChanged(_FirstNameChangedE value),
    Result lastNameChanged(_LastNameChangedE value),
    Result submit(_Summited value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UserDetailEventCopyWith<$Res> {
  factory $UserDetailEventCopyWith(
          UserDetailEvent value, $Res Function(UserDetailEvent) then) =
      _$UserDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDetailEventCopyWithImpl<$Res>
    implements $UserDetailEventCopyWith<$Res> {
  _$UserDetailEventCopyWithImpl(this._value, this._then);

  final UserDetailEvent _value;
  // ignore: unused_field
  final $Res Function(UserDetailEvent) _then;
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
    extends _$UserDetailEventCopyWithImpl<$Res>
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
    return 'UserDetailEvent.initialize(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDetailEvent.initialize'))
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
    @required Result initialize(User user),
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result emailChanged(EmailAddress email),
    @required Result firstNameChanged(ValidUserName firstName),
    @required Result lastNameChanged(ValidUserName lastName),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return initialize(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result emailChanged(EmailAddress email),
    Result firstNameChanged(ValidUserName firstName),
    Result lastNameChanged(ValidUserName lastName),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result phoneNumberChanged(_PhoneNumberChangedE value),
    @required Result emailChanged(_EmailChangedE value),
    @required Result firstNameChanged(_FirstNameChangedE value),
    @required Result lastNameChanged(_LastNameChangedE value),
    @required Result submit(_Summited value),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result phoneNumberChanged(_PhoneNumberChangedE value),
    Result emailChanged(_EmailChangedE value),
    Result firstNameChanged(_FirstNameChangedE value),
    Result lastNameChanged(_LastNameChangedE value),
    Result submit(_Summited value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements UserDetailEvent {
  const factory _Initialized(User user) = _$_Initialized;

  User get user;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$PhoneNumberChangedECopyWith<$Res> {
  factory _$PhoneNumberChangedECopyWith(_PhoneNumberChangedE value,
          $Res Function(_PhoneNumberChangedE) then) =
      __$PhoneNumberChangedECopyWithImpl<$Res>;
  $Res call({ValidPhoneNumber phoneNumber});
}

/// @nodoc
class __$PhoneNumberChangedECopyWithImpl<$Res>
    extends _$UserDetailEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedECopyWith<$Res> {
  __$PhoneNumberChangedECopyWithImpl(
      _PhoneNumberChangedE _value, $Res Function(_PhoneNumberChangedE) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChangedE));

  @override
  _PhoneNumberChangedE get _value => super._value as _PhoneNumberChangedE;

  @override
  $Res call({
    Object phoneNumber = freezed,
  }) {
    return _then(_PhoneNumberChangedE(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as ValidPhoneNumber,
    ));
  }
}

/// @nodoc
class _$_PhoneNumberChangedE
    with DiagnosticableTreeMixin
    implements _PhoneNumberChangedE {
  const _$_PhoneNumberChangedE({@required this.phoneNumber})
      : assert(phoneNumber != null);

  @override
  final ValidPhoneNumber phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDetailEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDetailEvent.phoneNumberChanged'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneNumberChangedE &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @override
  _$PhoneNumberChangedECopyWith<_PhoneNumberChangedE> get copyWith =>
      __$PhoneNumberChangedECopyWithImpl<_PhoneNumberChangedE>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User user),
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result emailChanged(EmailAddress email),
    @required Result firstNameChanged(ValidUserName firstName),
    @required Result lastNameChanged(ValidUserName lastName),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result emailChanged(EmailAddress email),
    Result firstNameChanged(ValidUserName firstName),
    Result lastNameChanged(ValidUserName lastName),
    Result submit(),
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
    @required Result initialize(_Initialized value),
    @required Result phoneNumberChanged(_PhoneNumberChangedE value),
    @required Result emailChanged(_EmailChangedE value),
    @required Result firstNameChanged(_FirstNameChangedE value),
    @required Result lastNameChanged(_LastNameChangedE value),
    @required Result submit(_Summited value),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result phoneNumberChanged(_PhoneNumberChangedE value),
    Result emailChanged(_EmailChangedE value),
    Result firstNameChanged(_FirstNameChangedE value),
    Result lastNameChanged(_LastNameChangedE value),
    Result submit(_Summited value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChangedE implements UserDetailEvent {
  const factory _PhoneNumberChangedE({@required ValidPhoneNumber phoneNumber}) =
      _$_PhoneNumberChangedE;

  ValidPhoneNumber get phoneNumber;
  _$PhoneNumberChangedECopyWith<_PhoneNumberChangedE> get copyWith;
}

/// @nodoc
abstract class _$EmailChangedECopyWith<$Res> {
  factory _$EmailChangedECopyWith(
          _EmailChangedE value, $Res Function(_EmailChangedE) then) =
      __$EmailChangedECopyWithImpl<$Res>;
  $Res call({EmailAddress email});
}

/// @nodoc
class __$EmailChangedECopyWithImpl<$Res>
    extends _$UserDetailEventCopyWithImpl<$Res>
    implements _$EmailChangedECopyWith<$Res> {
  __$EmailChangedECopyWithImpl(
      _EmailChangedE _value, $Res Function(_EmailChangedE) _then)
      : super(_value, (v) => _then(v as _EmailChangedE));

  @override
  _EmailChangedE get _value => super._value as _EmailChangedE;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_EmailChangedE(
      email: email == freezed ? _value.email : email as EmailAddress,
    ));
  }
}

/// @nodoc
class _$_EmailChangedE with DiagnosticableTreeMixin implements _EmailChangedE {
  const _$_EmailChangedE({@required this.email}) : assert(email != null);

  @override
  final EmailAddress email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDetailEvent.emailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDetailEvent.emailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChangedE &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$EmailChangedECopyWith<_EmailChangedE> get copyWith =>
      __$EmailChangedECopyWithImpl<_EmailChangedE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User user),
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result emailChanged(EmailAddress email),
    @required Result firstNameChanged(ValidUserName firstName),
    @required Result lastNameChanged(ValidUserName lastName),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result emailChanged(EmailAddress email),
    Result firstNameChanged(ValidUserName firstName),
    Result lastNameChanged(ValidUserName lastName),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result phoneNumberChanged(_PhoneNumberChangedE value),
    @required Result emailChanged(_EmailChangedE value),
    @required Result firstNameChanged(_FirstNameChangedE value),
    @required Result lastNameChanged(_LastNameChangedE value),
    @required Result submit(_Summited value),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result phoneNumberChanged(_PhoneNumberChangedE value),
    Result emailChanged(_EmailChangedE value),
    Result firstNameChanged(_FirstNameChangedE value),
    Result lastNameChanged(_LastNameChangedE value),
    Result submit(_Summited value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChangedE implements UserDetailEvent {
  const factory _EmailChangedE({@required EmailAddress email}) =
      _$_EmailChangedE;

  EmailAddress get email;
  _$EmailChangedECopyWith<_EmailChangedE> get copyWith;
}

/// @nodoc
abstract class _$FirstNameChangedECopyWith<$Res> {
  factory _$FirstNameChangedECopyWith(
          _FirstNameChangedE value, $Res Function(_FirstNameChangedE) then) =
      __$FirstNameChangedECopyWithImpl<$Res>;
  $Res call({ValidUserName firstName});
}

/// @nodoc
class __$FirstNameChangedECopyWithImpl<$Res>
    extends _$UserDetailEventCopyWithImpl<$Res>
    implements _$FirstNameChangedECopyWith<$Res> {
  __$FirstNameChangedECopyWithImpl(
      _FirstNameChangedE _value, $Res Function(_FirstNameChangedE) _then)
      : super(_value, (v) => _then(v as _FirstNameChangedE));

  @override
  _FirstNameChangedE get _value => super._value as _FirstNameChangedE;

  @override
  $Res call({
    Object firstName = freezed,
  }) {
    return _then(_FirstNameChangedE(
      firstName:
          firstName == freezed ? _value.firstName : firstName as ValidUserName,
    ));
  }
}

/// @nodoc
class _$_FirstNameChangedE
    with DiagnosticableTreeMixin
    implements _FirstNameChangedE {
  const _$_FirstNameChangedE({@required this.firstName})
      : assert(firstName != null);

  @override
  final ValidUserName firstName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDetailEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDetailEvent.firstNameChanged'))
      ..add(DiagnosticsProperty('firstName', firstName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirstNameChangedE &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstName);

  @override
  _$FirstNameChangedECopyWith<_FirstNameChangedE> get copyWith =>
      __$FirstNameChangedECopyWithImpl<_FirstNameChangedE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User user),
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result emailChanged(EmailAddress email),
    @required Result firstNameChanged(ValidUserName firstName),
    @required Result lastNameChanged(ValidUserName lastName),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result emailChanged(EmailAddress email),
    Result firstNameChanged(ValidUserName firstName),
    Result lastNameChanged(ValidUserName lastName),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result phoneNumberChanged(_PhoneNumberChangedE value),
    @required Result emailChanged(_EmailChangedE value),
    @required Result firstNameChanged(_FirstNameChangedE value),
    @required Result lastNameChanged(_LastNameChangedE value),
    @required Result submit(_Summited value),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result phoneNumberChanged(_PhoneNumberChangedE value),
    Result emailChanged(_EmailChangedE value),
    Result firstNameChanged(_FirstNameChangedE value),
    Result lastNameChanged(_LastNameChangedE value),
    Result submit(_Summited value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChangedE implements UserDetailEvent {
  const factory _FirstNameChangedE({@required ValidUserName firstName}) =
      _$_FirstNameChangedE;

  ValidUserName get firstName;
  _$FirstNameChangedECopyWith<_FirstNameChangedE> get copyWith;
}

/// @nodoc
abstract class _$LastNameChangedECopyWith<$Res> {
  factory _$LastNameChangedECopyWith(
          _LastNameChangedE value, $Res Function(_LastNameChangedE) then) =
      __$LastNameChangedECopyWithImpl<$Res>;
  $Res call({ValidUserName lastName});
}

/// @nodoc
class __$LastNameChangedECopyWithImpl<$Res>
    extends _$UserDetailEventCopyWithImpl<$Res>
    implements _$LastNameChangedECopyWith<$Res> {
  __$LastNameChangedECopyWithImpl(
      _LastNameChangedE _value, $Res Function(_LastNameChangedE) _then)
      : super(_value, (v) => _then(v as _LastNameChangedE));

  @override
  _LastNameChangedE get _value => super._value as _LastNameChangedE;

  @override
  $Res call({
    Object lastName = freezed,
  }) {
    return _then(_LastNameChangedE(
      lastName:
          lastName == freezed ? _value.lastName : lastName as ValidUserName,
    ));
  }
}

/// @nodoc
class _$_LastNameChangedE
    with DiagnosticableTreeMixin
    implements _LastNameChangedE {
  const _$_LastNameChangedE({@required this.lastName})
      : assert(lastName != null);

  @override
  final ValidUserName lastName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDetailEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDetailEvent.lastNameChanged'))
      ..add(DiagnosticsProperty('lastName', lastName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LastNameChangedE &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastName);

  @override
  _$LastNameChangedECopyWith<_LastNameChangedE> get copyWith =>
      __$LastNameChangedECopyWithImpl<_LastNameChangedE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User user),
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result emailChanged(EmailAddress email),
    @required Result firstNameChanged(ValidUserName firstName),
    @required Result lastNameChanged(ValidUserName lastName),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result emailChanged(EmailAddress email),
    Result firstNameChanged(ValidUserName firstName),
    Result lastNameChanged(ValidUserName lastName),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result phoneNumberChanged(_PhoneNumberChangedE value),
    @required Result emailChanged(_EmailChangedE value),
    @required Result firstNameChanged(_FirstNameChangedE value),
    @required Result lastNameChanged(_LastNameChangedE value),
    @required Result submit(_Summited value),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result phoneNumberChanged(_PhoneNumberChangedE value),
    Result emailChanged(_EmailChangedE value),
    Result firstNameChanged(_FirstNameChangedE value),
    Result lastNameChanged(_LastNameChangedE value),
    Result submit(_Summited value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChangedE implements UserDetailEvent {
  const factory _LastNameChangedE({@required ValidUserName lastName}) =
      _$_LastNameChangedE;

  ValidUserName get lastName;
  _$LastNameChangedECopyWith<_LastNameChangedE> get copyWith;
}

/// @nodoc
abstract class _$SummitedCopyWith<$Res> {
  factory _$SummitedCopyWith(_Summited value, $Res Function(_Summited) then) =
      __$SummitedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SummitedCopyWithImpl<$Res> extends _$UserDetailEventCopyWithImpl<$Res>
    implements _$SummitedCopyWith<$Res> {
  __$SummitedCopyWithImpl(_Summited _value, $Res Function(_Summited) _then)
      : super(_value, (v) => _then(v as _Summited));

  @override
  _Summited get _value => super._value as _Summited;
}

/// @nodoc
class _$_Summited with DiagnosticableTreeMixin implements _Summited {
  const _$_Summited();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDetailEvent.submit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'UserDetailEvent.submit'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Summited);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User user),
    @required Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    @required Result emailChanged(EmailAddress email),
    @required Result firstNameChanged(ValidUserName firstName),
    @required Result lastNameChanged(ValidUserName lastName),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result phoneNumberChanged(ValidPhoneNumber phoneNumber),
    Result emailChanged(EmailAddress email),
    Result firstNameChanged(ValidUserName firstName),
    Result lastNameChanged(ValidUserName lastName),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialized value),
    @required Result phoneNumberChanged(_PhoneNumberChangedE value),
    @required Result emailChanged(_EmailChangedE value),
    @required Result firstNameChanged(_FirstNameChangedE value),
    @required Result lastNameChanged(_LastNameChangedE value),
    @required Result submit(_Summited value),
  }) {
    assert(initialize != null);
    assert(phoneNumberChanged != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialized value),
    Result phoneNumberChanged(_PhoneNumberChangedE value),
    Result emailChanged(_EmailChangedE value),
    Result firstNameChanged(_FirstNameChangedE value),
    Result lastNameChanged(_LastNameChangedE value),
    Result submit(_Summited value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Summited implements UserDetailEvent {
  const factory _Summited() = _$_Summited;
}

/// @nodoc
class _$UserDetailStateTearOff {
  const _$UserDetailStateTearOff();

// ignore: unused_element
  _UserDetailState call(
      {@required
          User user,
      @required
          ValidUserName firstName,
      @required
          ValidUserName lastName,
      @required
          DeviceId deviceId,
      @required
          bool showErrorMessage,
      @required
          bool initialAuthFailed,
      @required
          bool newUserInfoUpdated,
      @required
          bool isSubmitting,
      @required
          bool isEditing,
      @required
          Option<Either<DatabaseFailure, bool>> saveFailureOrSuccessOption}) {
    return _UserDetailState(
      user: user,
      firstName: firstName,
      lastName: lastName,
      deviceId: deviceId,
      showErrorMessage: showErrorMessage,
      initialAuthFailed: initialAuthFailed,
      newUserInfoUpdated: newUserInfoUpdated,
      isSubmitting: isSubmitting,
      isEditing: isEditing,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserDetailState = _$UserDetailStateTearOff();

/// @nodoc
mixin _$UserDetailState {
  User get user;
  ValidUserName get firstName;
  ValidUserName get lastName;
  DeviceId get deviceId;
  bool get showErrorMessage;
  bool get initialAuthFailed;
  bool get newUserInfoUpdated;
  bool get isSubmitting;
  bool get isEditing;
  Option<Either<DatabaseFailure, bool>> get saveFailureOrSuccessOption;

  $UserDetailStateCopyWith<UserDetailState> get copyWith;
}

/// @nodoc
abstract class $UserDetailStateCopyWith<$Res> {
  factory $UserDetailStateCopyWith(
          UserDetailState value, $Res Function(UserDetailState) then) =
      _$UserDetailStateCopyWithImpl<$Res>;
  $Res call(
      {User user,
      ValidUserName firstName,
      ValidUserName lastName,
      DeviceId deviceId,
      bool showErrorMessage,
      bool initialAuthFailed,
      bool newUserInfoUpdated,
      bool isSubmitting,
      bool isEditing,
      Option<Either<DatabaseFailure, bool>> saveFailureOrSuccessOption});

  $UserCopyWith<$Res> get user;
  $DeviceIdCopyWith<$Res> get deviceId;
}

/// @nodoc
class _$UserDetailStateCopyWithImpl<$Res>
    implements $UserDetailStateCopyWith<$Res> {
  _$UserDetailStateCopyWithImpl(this._value, this._then);

  final UserDetailState _value;
  // ignore: unused_field
  final $Res Function(UserDetailState) _then;

  @override
  $Res call({
    Object user = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object deviceId = freezed,
    Object showErrorMessage = freezed,
    Object initialAuthFailed = freezed,
    Object newUserInfoUpdated = freezed,
    Object isSubmitting = freezed,
    Object isEditing = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      firstName:
          firstName == freezed ? _value.firstName : firstName as ValidUserName,
      lastName:
          lastName == freezed ? _value.lastName : lastName as ValidUserName,
      deviceId: deviceId == freezed ? _value.deviceId : deviceId as DeviceId,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      initialAuthFailed: initialAuthFailed == freezed
          ? _value.initialAuthFailed
          : initialAuthFailed as bool,
      newUserInfoUpdated: newUserInfoUpdated == freezed
          ? _value.newUserInfoUpdated
          : newUserInfoUpdated as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<DatabaseFailure, bool>>,
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

  @override
  $DeviceIdCopyWith<$Res> get deviceId {
    if (_value.deviceId == null) {
      return null;
    }
    return $DeviceIdCopyWith<$Res>(_value.deviceId, (value) {
      return _then(_value.copyWith(deviceId: value));
    });
  }
}

/// @nodoc
abstract class _$UserDetailStateCopyWith<$Res>
    implements $UserDetailStateCopyWith<$Res> {
  factory _$UserDetailStateCopyWith(
          _UserDetailState value, $Res Function(_UserDetailState) then) =
      __$UserDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      ValidUserName firstName,
      ValidUserName lastName,
      DeviceId deviceId,
      bool showErrorMessage,
      bool initialAuthFailed,
      bool newUserInfoUpdated,
      bool isSubmitting,
      bool isEditing,
      Option<Either<DatabaseFailure, bool>> saveFailureOrSuccessOption});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $DeviceIdCopyWith<$Res> get deviceId;
}

/// @nodoc
class __$UserDetailStateCopyWithImpl<$Res>
    extends _$UserDetailStateCopyWithImpl<$Res>
    implements _$UserDetailStateCopyWith<$Res> {
  __$UserDetailStateCopyWithImpl(
      _UserDetailState _value, $Res Function(_UserDetailState) _then)
      : super(_value, (v) => _then(v as _UserDetailState));

  @override
  _UserDetailState get _value => super._value as _UserDetailState;

  @override
  $Res call({
    Object user = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object deviceId = freezed,
    Object showErrorMessage = freezed,
    Object initialAuthFailed = freezed,
    Object newUserInfoUpdated = freezed,
    Object isSubmitting = freezed,
    Object isEditing = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_UserDetailState(
      user: user == freezed ? _value.user : user as User,
      firstName:
          firstName == freezed ? _value.firstName : firstName as ValidUserName,
      lastName:
          lastName == freezed ? _value.lastName : lastName as ValidUserName,
      deviceId: deviceId == freezed ? _value.deviceId : deviceId as DeviceId,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      initialAuthFailed: initialAuthFailed == freezed
          ? _value.initialAuthFailed
          : initialAuthFailed as bool,
      newUserInfoUpdated: newUserInfoUpdated == freezed
          ? _value.newUserInfoUpdated
          : newUserInfoUpdated as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<DatabaseFailure, bool>>,
    ));
  }
}

/// @nodoc
class _$_UserDetailState
    with DiagnosticableTreeMixin
    implements _UserDetailState {
  const _$_UserDetailState(
      {@required this.user,
      @required this.firstName,
      @required this.lastName,
      @required this.deviceId,
      @required this.showErrorMessage,
      @required this.initialAuthFailed,
      @required this.newUserInfoUpdated,
      @required this.isSubmitting,
      @required this.isEditing,
      @required this.saveFailureOrSuccessOption})
      : assert(user != null),
        assert(firstName != null),
        assert(lastName != null),
        assert(deviceId != null),
        assert(showErrorMessage != null),
        assert(initialAuthFailed != null),
        assert(newUserInfoUpdated != null),
        assert(isSubmitting != null),
        assert(isEditing != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final User user;
  @override
  final ValidUserName firstName;
  @override
  final ValidUserName lastName;
  @override
  final DeviceId deviceId;
  @override
  final bool showErrorMessage;
  @override
  final bool initialAuthFailed;
  @override
  final bool newUserInfoUpdated;
  @override
  final bool isSubmitting;
  @override
  final bool isEditing;
  @override
  final Option<Either<DatabaseFailure, bool>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDetailState(user: $user, firstName: $firstName, lastName: $lastName, deviceId: $deviceId, showErrorMessage: $showErrorMessage, initialAuthFailed: $initialAuthFailed, newUserInfoUpdated: $newUserInfoUpdated, isSubmitting: $isSubmitting, isEditing: $isEditing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDetailState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('showErrorMessage', showErrorMessage))
      ..add(DiagnosticsProperty('initialAuthFailed', initialAuthFailed))
      ..add(DiagnosticsProperty('newUserInfoUpdated', newUserInfoUpdated))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetailState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.initialAuthFailed, initialAuthFailed) ||
                const DeepCollectionEquality()
                    .equals(other.initialAuthFailed, initialAuthFailed)) &&
            (identical(other.newUserInfoUpdated, newUserInfoUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.newUserInfoUpdated, newUserInfoUpdated)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(initialAuthFailed) ^
      const DeepCollectionEquality().hash(newUserInfoUpdated) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$UserDetailStateCopyWith<_UserDetailState> get copyWith =>
      __$UserDetailStateCopyWithImpl<_UserDetailState>(this, _$identity);
}

abstract class _UserDetailState implements UserDetailState {
  const factory _UserDetailState(
      {@required
          User user,
      @required
          ValidUserName firstName,
      @required
          ValidUserName lastName,
      @required
          DeviceId deviceId,
      @required
          bool showErrorMessage,
      @required
          bool initialAuthFailed,
      @required
          bool newUserInfoUpdated,
      @required
          bool isSubmitting,
      @required
          bool isEditing,
      @required
          Option<Either<DatabaseFailure, bool>>
              saveFailureOrSuccessOption}) = _$_UserDetailState;

  @override
  User get user;
  @override
  ValidUserName get firstName;
  @override
  ValidUserName get lastName;
  @override
  DeviceId get deviceId;
  @override
  bool get showErrorMessage;
  @override
  bool get initialAuthFailed;
  @override
  bool get newUserInfoUpdated;
  @override
  bool get isSubmitting;
  @override
  bool get isEditing;
  @override
  Option<Either<DatabaseFailure, bool>> get saveFailureOrSuccessOption;
  @override
  _$UserDetailStateCopyWith<_UserDetailState> get copyWith;
}
