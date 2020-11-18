// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required UniqueId id,
      @required bool isNewUser,
      @required String photoUrl,
      @required String providerId,
      @required ValidNames displayName,
      @required EmailAddress email,
      @required ValidPhoneNumber phoneNumber}) {
    return _User(
      id: id,
      isNewUser: isNewUser,
      photoUrl: photoUrl,
      providerId: providerId,
      displayName: displayName,
      email: email,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId get id;
  bool get isNewUser;
  String get photoUrl;
  String get providerId;
  ValidNames get displayName;
  EmailAddress get email;
  ValidPhoneNumber get phoneNumber;

  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      bool isNewUser,
      String photoUrl,
      String providerId,
      ValidNames displayName,
      EmailAddress email,
      ValidPhoneNumber phoneNumber});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object isNewUser = freezed,
    Object photoUrl = freezed,
    Object providerId = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      isNewUser: isNewUser == freezed ? _value.isNewUser : isNewUser as bool,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as ValidNames,
      email: email == freezed ? _value.email : email as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as ValidPhoneNumber,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      bool isNewUser,
      String photoUrl,
      String providerId,
      ValidNames displayName,
      EmailAddress email,
      ValidPhoneNumber phoneNumber});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object isNewUser = freezed,
    Object photoUrl = freezed,
    Object providerId = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      isNewUser: isNewUser == freezed ? _value.isNewUser : isNewUser as bool,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as ValidNames,
      email: email == freezed ? _value.email : email as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as ValidPhoneNumber,
    ));
  }
}

/// @nodoc
class _$_User extends _User {
  const _$_User(
      {@required this.id,
      @required this.isNewUser,
      @required this.photoUrl,
      @required this.providerId,
      @required this.displayName,
      @required this.email,
      @required this.phoneNumber})
      : assert(id != null),
        assert(isNewUser != null),
        assert(photoUrl != null),
        assert(providerId != null),
        assert(displayName != null),
        assert(email != null),
        assert(phoneNumber != null),
        super._();

  @override
  final UniqueId id;
  @override
  final bool isNewUser;
  @override
  final String photoUrl;
  @override
  final String providerId;
  @override
  final ValidNames displayName;
  @override
  final EmailAddress email;
  @override
  final ValidPhoneNumber phoneNumber;

  @override
  String toString() {
    return 'User(id: $id, isNewUser: $isNewUser, photoUrl: $photoUrl, providerId: $providerId, displayName: $displayName, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isNewUser, isNewUser) ||
                const DeepCollectionEquality()
                    .equals(other.isNewUser, isNewUser)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isNewUser) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {@required UniqueId id,
      @required bool isNewUser,
      @required String photoUrl,
      @required String providerId,
      @required ValidNames displayName,
      @required EmailAddress email,
      @required ValidPhoneNumber phoneNumber}) = _$_User;

  @override
  UniqueId get id;
  @override
  bool get isNewUser;
  @override
  String get photoUrl;
  @override
  String get providerId;
  @override
  ValidNames get displayName;
  @override
  EmailAddress get email;
  @override
  ValidPhoneNumber get phoneNumber;
  @override
  _$UserCopyWith<_User> get copyWith;
}
