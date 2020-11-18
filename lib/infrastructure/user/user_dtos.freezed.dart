// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

// ignore: unused_element
  _UserDto call(
      {@required String id,
      @required bool isNewUser,
      @required String photoUrl,
      @required String displayName,
      @required String email,
      @required String providerId,
      @required String phoneNumber}) {
    return _UserDto(
      id: id,
      isNewUser: isNewUser,
      photoUrl: photoUrl,
      displayName: displayName,
      email: email,
      providerId: providerId,
      phoneNumber: phoneNumber,
    );
  }

// ignore: unused_element
  UserDto fromJson(Map<String, Object> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  String get id;
  bool get isNewUser;
  String get photoUrl;
  String get displayName;
  String get email;
  String get providerId;
  String get phoneNumber;

  Map<String, dynamic> toJson();
  $UserDtoCopyWith<UserDto> get copyWith;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      bool isNewUser,
      String photoUrl,
      String displayName,
      String email,
      String providerId,
      String phoneNumber});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object isNewUser = freezed,
    Object photoUrl = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object providerId = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      isNewUser: isNewUser == freezed ? _value.isNewUser : isNewUser as bool,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      bool isNewUser,
      String photoUrl,
      String displayName,
      String email,
      String providerId,
      String phoneNumber});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object id = freezed,
    Object isNewUser = freezed,
    Object photoUrl = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object providerId = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed ? _value.id : id as String,
      isNewUser: isNewUser == freezed ? _value.isNewUser : isNewUser as bool,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDto extends _UserDto with DiagnosticableTreeMixin {
  const _$_UserDto(
      {@required this.id,
      @required this.isNewUser,
      @required this.photoUrl,
      @required this.displayName,
      @required this.email,
      @required this.providerId,
      @required this.phoneNumber})
      : assert(id != null),
        assert(isNewUser != null),
        assert(photoUrl != null),
        assert(displayName != null),
        assert(email != null),
        assert(providerId != null),
        assert(phoneNumber != null),
        super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  final String id;
  @override
  final bool isNewUser;
  @override
  final String photoUrl;
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String providerId;
  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDto(id: $id, isNewUser: $isNewUser, photoUrl: $photoUrl, displayName: $displayName, email: $email, providerId: $providerId, phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isNewUser', isNewUser))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('providerId', providerId))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isNewUser, isNewUser) ||
                const DeepCollectionEquality()
                    .equals(other.isNewUser, isNewUser)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)) &&
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
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const _UserDto._() : super._();
  const factory _UserDto(
      {@required String id,
      @required bool isNewUser,
      @required String photoUrl,
      @required String displayName,
      @required String email,
      @required String providerId,
      @required String phoneNumber}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get id;
  @override
  bool get isNewUser;
  @override
  String get photoUrl;
  @override
  String get displayName;
  @override
  String get email;
  @override
  String get providerId;
  @override
  String get phoneNumber;
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
