// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserSettingsTearOff {
  const _$UserSettingsTearOff();

// ignore: unused_element
  _UserSettings call(
      {@required UserAddress userAddress,
      @required DefaultLanguage defaultLanguage,
      @required bool smartFundsUsage,
      @required bool enable2FA,
      @required UserPin userPin,
      @required SecurityQuestion securityQuestion,
      @required ValidDateOfBirth dateOfBirth,
      @required UserReputation userReputation,
      @required SubscriptionMode subscriptionMode,
      @required bool lockEntireApp}) {
    return _UserSettings(
      userAddress: userAddress,
      defaultLanguage: defaultLanguage,
      smartFundsUsage: smartFundsUsage,
      enable2FA: enable2FA,
      userPin: userPin,
      securityQuestion: securityQuestion,
      dateOfBirth: dateOfBirth,
      userReputation: userReputation,
      subscriptionMode: subscriptionMode,
      lockEntireApp: lockEntireApp,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserSettings = _$UserSettingsTearOff();

/// @nodoc
mixin _$UserSettings {
  UserAddress get userAddress;
  DefaultLanguage get defaultLanguage;
  bool get smartFundsUsage;
  bool get enable2FA;
  UserPin get userPin;
  SecurityQuestion get securityQuestion;
  ValidDateOfBirth get dateOfBirth;
  UserReputation get userReputation;
  SubscriptionMode get subscriptionMode;
  bool get lockEntireApp;

  $UserSettingsCopyWith<UserSettings> get copyWith;
}

/// @nodoc
abstract class $UserSettingsCopyWith<$Res> {
  factory $UserSettingsCopyWith(
          UserSettings value, $Res Function(UserSettings) then) =
      _$UserSettingsCopyWithImpl<$Res>;
  $Res call(
      {UserAddress userAddress,
      DefaultLanguage defaultLanguage,
      bool smartFundsUsage,
      bool enable2FA,
      UserPin userPin,
      SecurityQuestion securityQuestion,
      ValidDateOfBirth dateOfBirth,
      UserReputation userReputation,
      SubscriptionMode subscriptionMode,
      bool lockEntireApp});

  $UserAddressCopyWith<$Res> get userAddress;
  $SecurityQuestionCopyWith<$Res> get securityQuestion;
  $UserReputationCopyWith<$Res> get userReputation;
}

/// @nodoc
class _$UserSettingsCopyWithImpl<$Res> implements $UserSettingsCopyWith<$Res> {
  _$UserSettingsCopyWithImpl(this._value, this._then);

  final UserSettings _value;
  // ignore: unused_field
  final $Res Function(UserSettings) _then;

  @override
  $Res call({
    Object userAddress = freezed,
    Object defaultLanguage = freezed,
    Object smartFundsUsage = freezed,
    Object enable2FA = freezed,
    Object userPin = freezed,
    Object securityQuestion = freezed,
    Object dateOfBirth = freezed,
    Object userReputation = freezed,
    Object subscriptionMode = freezed,
    Object lockEntireApp = freezed,
  }) {
    return _then(_value.copyWith(
      userAddress: userAddress == freezed
          ? _value.userAddress
          : userAddress as UserAddress,
      defaultLanguage: defaultLanguage == freezed
          ? _value.defaultLanguage
          : defaultLanguage as DefaultLanguage,
      smartFundsUsage: smartFundsUsage == freezed
          ? _value.smartFundsUsage
          : smartFundsUsage as bool,
      enable2FA: enable2FA == freezed ? _value.enable2FA : enable2FA as bool,
      userPin: userPin == freezed ? _value.userPin : userPin as UserPin,
      securityQuestion: securityQuestion == freezed
          ? _value.securityQuestion
          : securityQuestion as SecurityQuestion,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth as ValidDateOfBirth,
      userReputation: userReputation == freezed
          ? _value.userReputation
          : userReputation as UserReputation,
      subscriptionMode: subscriptionMode == freezed
          ? _value.subscriptionMode
          : subscriptionMode as SubscriptionMode,
      lockEntireApp: lockEntireApp == freezed
          ? _value.lockEntireApp
          : lockEntireApp as bool,
    ));
  }

  @override
  $UserAddressCopyWith<$Res> get userAddress {
    if (_value.userAddress == null) {
      return null;
    }
    return $UserAddressCopyWith<$Res>(_value.userAddress, (value) {
      return _then(_value.copyWith(userAddress: value));
    });
  }

  @override
  $SecurityQuestionCopyWith<$Res> get securityQuestion {
    if (_value.securityQuestion == null) {
      return null;
    }
    return $SecurityQuestionCopyWith<$Res>(_value.securityQuestion, (value) {
      return _then(_value.copyWith(securityQuestion: value));
    });
  }

  @override
  $UserReputationCopyWith<$Res> get userReputation {
    if (_value.userReputation == null) {
      return null;
    }
    return $UserReputationCopyWith<$Res>(_value.userReputation, (value) {
      return _then(_value.copyWith(userReputation: value));
    });
  }
}

/// @nodoc
abstract class _$UserSettingsCopyWith<$Res>
    implements $UserSettingsCopyWith<$Res> {
  factory _$UserSettingsCopyWith(
          _UserSettings value, $Res Function(_UserSettings) then) =
      __$UserSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserAddress userAddress,
      DefaultLanguage defaultLanguage,
      bool smartFundsUsage,
      bool enable2FA,
      UserPin userPin,
      SecurityQuestion securityQuestion,
      ValidDateOfBirth dateOfBirth,
      UserReputation userReputation,
      SubscriptionMode subscriptionMode,
      bool lockEntireApp});

  @override
  $UserAddressCopyWith<$Res> get userAddress;
  @override
  $SecurityQuestionCopyWith<$Res> get securityQuestion;
  @override
  $UserReputationCopyWith<$Res> get userReputation;
}

/// @nodoc
class __$UserSettingsCopyWithImpl<$Res> extends _$UserSettingsCopyWithImpl<$Res>
    implements _$UserSettingsCopyWith<$Res> {
  __$UserSettingsCopyWithImpl(
      _UserSettings _value, $Res Function(_UserSettings) _then)
      : super(_value, (v) => _then(v as _UserSettings));

  @override
  _UserSettings get _value => super._value as _UserSettings;

  @override
  $Res call({
    Object userAddress = freezed,
    Object defaultLanguage = freezed,
    Object smartFundsUsage = freezed,
    Object enable2FA = freezed,
    Object userPin = freezed,
    Object securityQuestion = freezed,
    Object dateOfBirth = freezed,
    Object userReputation = freezed,
    Object subscriptionMode = freezed,
    Object lockEntireApp = freezed,
  }) {
    return _then(_UserSettings(
      userAddress: userAddress == freezed
          ? _value.userAddress
          : userAddress as UserAddress,
      defaultLanguage: defaultLanguage == freezed
          ? _value.defaultLanguage
          : defaultLanguage as DefaultLanguage,
      smartFundsUsage: smartFundsUsage == freezed
          ? _value.smartFundsUsage
          : smartFundsUsage as bool,
      enable2FA: enable2FA == freezed ? _value.enable2FA : enable2FA as bool,
      userPin: userPin == freezed ? _value.userPin : userPin as UserPin,
      securityQuestion: securityQuestion == freezed
          ? _value.securityQuestion
          : securityQuestion as SecurityQuestion,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth as ValidDateOfBirth,
      userReputation: userReputation == freezed
          ? _value.userReputation
          : userReputation as UserReputation,
      subscriptionMode: subscriptionMode == freezed
          ? _value.subscriptionMode
          : subscriptionMode as SubscriptionMode,
      lockEntireApp: lockEntireApp == freezed
          ? _value.lockEntireApp
          : lockEntireApp as bool,
    ));
  }
}

/// @nodoc
class _$_UserSettings extends _UserSettings {
  const _$_UserSettings(
      {@required this.userAddress,
      @required this.defaultLanguage,
      @required this.smartFundsUsage,
      @required this.enable2FA,
      @required this.userPin,
      @required this.securityQuestion,
      @required this.dateOfBirth,
      @required this.userReputation,
      @required this.subscriptionMode,
      @required this.lockEntireApp})
      : assert(userAddress != null),
        assert(defaultLanguage != null),
        assert(smartFundsUsage != null),
        assert(enable2FA != null),
        assert(userPin != null),
        assert(securityQuestion != null),
        assert(dateOfBirth != null),
        assert(userReputation != null),
        assert(subscriptionMode != null),
        assert(lockEntireApp != null),
        super._();

  @override
  final UserAddress userAddress;
  @override
  final DefaultLanguage defaultLanguage;
  @override
  final bool smartFundsUsage;
  @override
  final bool enable2FA;
  @override
  final UserPin userPin;
  @override
  final SecurityQuestion securityQuestion;
  @override
  final ValidDateOfBirth dateOfBirth;
  @override
  final UserReputation userReputation;
  @override
  final SubscriptionMode subscriptionMode;
  @override
  final bool lockEntireApp;

  @override
  String toString() {
    return 'UserSettings(userAddress: $userAddress, defaultLanguage: $defaultLanguage, smartFundsUsage: $smartFundsUsage, enable2FA: $enable2FA, userPin: $userPin, securityQuestion: $securityQuestion, dateOfBirth: $dateOfBirth, userReputation: $userReputation, subscriptionMode: $subscriptionMode, lockEntireApp: $lockEntireApp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSettings &&
            (identical(other.userAddress, userAddress) ||
                const DeepCollectionEquality()
                    .equals(other.userAddress, userAddress)) &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.defaultLanguage, defaultLanguage)) &&
            (identical(other.smartFundsUsage, smartFundsUsage) ||
                const DeepCollectionEquality()
                    .equals(other.smartFundsUsage, smartFundsUsage)) &&
            (identical(other.enable2FA, enable2FA) ||
                const DeepCollectionEquality()
                    .equals(other.enable2FA, enable2FA)) &&
            (identical(other.userPin, userPin) ||
                const DeepCollectionEquality()
                    .equals(other.userPin, userPin)) &&
            (identical(other.securityQuestion, securityQuestion) ||
                const DeepCollectionEquality()
                    .equals(other.securityQuestion, securityQuestion)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.userReputation, userReputation) ||
                const DeepCollectionEquality()
                    .equals(other.userReputation, userReputation)) &&
            (identical(other.subscriptionMode, subscriptionMode) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionMode, subscriptionMode)) &&
            (identical(other.lockEntireApp, lockEntireApp) ||
                const DeepCollectionEquality()
                    .equals(other.lockEntireApp, lockEntireApp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userAddress) ^
      const DeepCollectionEquality().hash(defaultLanguage) ^
      const DeepCollectionEquality().hash(smartFundsUsage) ^
      const DeepCollectionEquality().hash(enable2FA) ^
      const DeepCollectionEquality().hash(userPin) ^
      const DeepCollectionEquality().hash(securityQuestion) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(userReputation) ^
      const DeepCollectionEquality().hash(subscriptionMode) ^
      const DeepCollectionEquality().hash(lockEntireApp);

  @override
  _$UserSettingsCopyWith<_UserSettings> get copyWith =>
      __$UserSettingsCopyWithImpl<_UserSettings>(this, _$identity);
}

abstract class _UserSettings extends UserSettings {
  const _UserSettings._() : super._();
  const factory _UserSettings(
      {@required UserAddress userAddress,
      @required DefaultLanguage defaultLanguage,
      @required bool smartFundsUsage,
      @required bool enable2FA,
      @required UserPin userPin,
      @required SecurityQuestion securityQuestion,
      @required ValidDateOfBirth dateOfBirth,
      @required UserReputation userReputation,
      @required SubscriptionMode subscriptionMode,
      @required bool lockEntireApp}) = _$_UserSettings;

  @override
  UserAddress get userAddress;
  @override
  DefaultLanguage get defaultLanguage;
  @override
  bool get smartFundsUsage;
  @override
  bool get enable2FA;
  @override
  UserPin get userPin;
  @override
  SecurityQuestion get securityQuestion;
  @override
  ValidDateOfBirth get dateOfBirth;
  @override
  UserReputation get userReputation;
  @override
  SubscriptionMode get subscriptionMode;
  @override
  bool get lockEntireApp;
  @override
  _$UserSettingsCopyWith<_UserSettings> get copyWith;
}
