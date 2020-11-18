// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

// ignore: unused_element
  _UpdateUserAddress updateUserAddress(UserAddress userAddress) {
    return _UpdateUserAddress(
      userAddress,
    );
  }

// ignore: unused_element
  _UpdateDefaultLanguage updateDefaultLanguage(
      DefaultLanguage defaultLanguage) {
    return _UpdateDefaultLanguage(
      defaultLanguage,
    );
  }

// ignore: unused_element
  _Enable2FA enable2FA(bool enable2FA) {
    return _Enable2FA(
      enable2FA,
    );
  }

// ignore: unused_element
  _UpdateSmartFunds updateSmartFunds(bool smartFundsUsage) {
    return _UpdateSmartFunds(
      smartFundsUsage,
    );
  }

// ignore: unused_element
  _UpdateUserPin updateUserPin(UserPin userPin) {
    return _UpdateUserPin(
      userPin,
    );
  }

// ignore: unused_element
  _UupdateSubscriptionMode updateSubscriptionMode(
      SubscriptionMode subscriptionMode) {
    return _UupdateSubscriptionMode(
      subscriptionMode,
    );
  }

// ignore: unused_element
  _SetSecurityQuestion setSecurityQuestion(SecurityQuestion securityQuestion) {
    return _SetSecurityQuestion(
      securityQuestion,
    );
  }

// ignore: unused_element
  _UupdateUserReputation updateUserReputation(UserReputation userReputation) {
    return _UupdateUserReputation(
      userReputation,
    );
  }

// ignore: unused_element
  _EenableAppLock enableAppLock(bool lockEntireApp) {
    return _EenableAppLock(
      lockEntireApp,
    );
  }

// ignore: unused_element
  _SsetDateOfBirth setDateOfBirth(ValidDateOfBirth dateOfBirth) {
    return _SsetDateOfBirth(
      dateOfBirth,
    );
  }

// ignore: unused_element
  _Initial initial(UserSettings userSettings) {
    return _Initial(
      userSettings,
    );
  }

// ignore: unused_element
  _SetUserSettings setUserSettings(UserSettings userSettings) {
    return _SetUserSettings(
      userSettings,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$UpdateUserAddressCopyWith<$Res> {
  factory _$UpdateUserAddressCopyWith(
          _UpdateUserAddress value, $Res Function(_UpdateUserAddress) then) =
      __$UpdateUserAddressCopyWithImpl<$Res>;
  $Res call({UserAddress userAddress});

  $UserAddressCopyWith<$Res> get userAddress;
}

/// @nodoc
class __$UpdateUserAddressCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$UpdateUserAddressCopyWith<$Res> {
  __$UpdateUserAddressCopyWithImpl(
      _UpdateUserAddress _value, $Res Function(_UpdateUserAddress) _then)
      : super(_value, (v) => _then(v as _UpdateUserAddress));

  @override
  _UpdateUserAddress get _value => super._value as _UpdateUserAddress;

  @override
  $Res call({
    Object userAddress = freezed,
  }) {
    return _then(_UpdateUserAddress(
      userAddress == freezed ? _value.userAddress : userAddress as UserAddress,
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
}

/// @nodoc
class _$_UpdateUserAddress implements _UpdateUserAddress {
  const _$_UpdateUserAddress(this.userAddress) : assert(userAddress != null);

  @override
  final UserAddress userAddress;

  @override
  String toString() {
    return 'SettingsEvent.updateUserAddress(userAddress: $userAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserAddress &&
            (identical(other.userAddress, userAddress) ||
                const DeepCollectionEquality()
                    .equals(other.userAddress, userAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userAddress);

  @override
  _$UpdateUserAddressCopyWith<_UpdateUserAddress> get copyWith =>
      __$UpdateUserAddressCopyWithImpl<_UpdateUserAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateUserAddress(userAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUserAddress != null) {
      return updateUserAddress(userAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateUserAddress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUserAddress != null) {
      return updateUserAddress(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserAddress implements SettingsEvent {
  const factory _UpdateUserAddress(UserAddress userAddress) =
      _$_UpdateUserAddress;

  UserAddress get userAddress;
  _$UpdateUserAddressCopyWith<_UpdateUserAddress> get copyWith;
}

/// @nodoc
abstract class _$UpdateDefaultLanguageCopyWith<$Res> {
  factory _$UpdateDefaultLanguageCopyWith(_UpdateDefaultLanguage value,
          $Res Function(_UpdateDefaultLanguage) then) =
      __$UpdateDefaultLanguageCopyWithImpl<$Res>;
  $Res call({DefaultLanguage defaultLanguage});
}

/// @nodoc
class __$UpdateDefaultLanguageCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$UpdateDefaultLanguageCopyWith<$Res> {
  __$UpdateDefaultLanguageCopyWithImpl(_UpdateDefaultLanguage _value,
      $Res Function(_UpdateDefaultLanguage) _then)
      : super(_value, (v) => _then(v as _UpdateDefaultLanguage));

  @override
  _UpdateDefaultLanguage get _value => super._value as _UpdateDefaultLanguage;

  @override
  $Res call({
    Object defaultLanguage = freezed,
  }) {
    return _then(_UpdateDefaultLanguage(
      defaultLanguage == freezed
          ? _value.defaultLanguage
          : defaultLanguage as DefaultLanguage,
    ));
  }
}

/// @nodoc
class _$_UpdateDefaultLanguage implements _UpdateDefaultLanguage {
  const _$_UpdateDefaultLanguage(this.defaultLanguage)
      : assert(defaultLanguage != null);

  @override
  final DefaultLanguage defaultLanguage;

  @override
  String toString() {
    return 'SettingsEvent.updateDefaultLanguage(defaultLanguage: $defaultLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateDefaultLanguage &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.defaultLanguage, defaultLanguage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(defaultLanguage);

  @override
  _$UpdateDefaultLanguageCopyWith<_UpdateDefaultLanguage> get copyWith =>
      __$UpdateDefaultLanguageCopyWithImpl<_UpdateDefaultLanguage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateDefaultLanguage(defaultLanguage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateDefaultLanguage != null) {
      return updateDefaultLanguage(defaultLanguage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateDefaultLanguage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateDefaultLanguage != null) {
      return updateDefaultLanguage(this);
    }
    return orElse();
  }
}

abstract class _UpdateDefaultLanguage implements SettingsEvent {
  const factory _UpdateDefaultLanguage(DefaultLanguage defaultLanguage) =
      _$_UpdateDefaultLanguage;

  DefaultLanguage get defaultLanguage;
  _$UpdateDefaultLanguageCopyWith<_UpdateDefaultLanguage> get copyWith;
}

/// @nodoc
abstract class _$Enable2FACopyWith<$Res> {
  factory _$Enable2FACopyWith(
          _Enable2FA value, $Res Function(_Enable2FA) then) =
      __$Enable2FACopyWithImpl<$Res>;
  $Res call({bool enable2FA});
}

/// @nodoc
class __$Enable2FACopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$Enable2FACopyWith<$Res> {
  __$Enable2FACopyWithImpl(_Enable2FA _value, $Res Function(_Enable2FA) _then)
      : super(_value, (v) => _then(v as _Enable2FA));

  @override
  _Enable2FA get _value => super._value as _Enable2FA;

  @override
  $Res call({
    Object enable2FA = freezed,
  }) {
    return _then(_Enable2FA(
      enable2FA == freezed ? _value.enable2FA : enable2FA as bool,
    ));
  }
}

/// @nodoc
class _$_Enable2FA implements _Enable2FA {
  const _$_Enable2FA(this.enable2FA) : assert(enable2FA != null);

  @override
  final bool enable2FA;

  @override
  String toString() {
    return 'SettingsEvent.enable2FA(enable2FA: $enable2FA)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Enable2FA &&
            (identical(other.enable2FA, enable2FA) ||
                const DeepCollectionEquality()
                    .equals(other.enable2FA, enable2FA)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(enable2FA);

  @override
  _$Enable2FACopyWith<_Enable2FA> get copyWith =>
      __$Enable2FACopyWithImpl<_Enable2FA>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return enable2FA(this.enable2FA);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enable2FA != null) {
      return enable2FA(this.enable2FA);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return enable2FA(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enable2FA != null) {
      return enable2FA(this);
    }
    return orElse();
  }
}

abstract class _Enable2FA implements SettingsEvent {
  const factory _Enable2FA(bool enable2FA) = _$_Enable2FA;

  bool get enable2FA;
  _$Enable2FACopyWith<_Enable2FA> get copyWith;
}

/// @nodoc
abstract class _$UpdateSmartFundsCopyWith<$Res> {
  factory _$UpdateSmartFundsCopyWith(
          _UpdateSmartFunds value, $Res Function(_UpdateSmartFunds) then) =
      __$UpdateSmartFundsCopyWithImpl<$Res>;
  $Res call({bool smartFundsUsage});
}

/// @nodoc
class __$UpdateSmartFundsCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$UpdateSmartFundsCopyWith<$Res> {
  __$UpdateSmartFundsCopyWithImpl(
      _UpdateSmartFunds _value, $Res Function(_UpdateSmartFunds) _then)
      : super(_value, (v) => _then(v as _UpdateSmartFunds));

  @override
  _UpdateSmartFunds get _value => super._value as _UpdateSmartFunds;

  @override
  $Res call({
    Object smartFundsUsage = freezed,
  }) {
    return _then(_UpdateSmartFunds(
      smartFundsUsage == freezed
          ? _value.smartFundsUsage
          : smartFundsUsage as bool,
    ));
  }
}

/// @nodoc
class _$_UpdateSmartFunds implements _UpdateSmartFunds {
  const _$_UpdateSmartFunds(this.smartFundsUsage)
      : assert(smartFundsUsage != null);

  @override
  final bool smartFundsUsage;

  @override
  String toString() {
    return 'SettingsEvent.updateSmartFunds(smartFundsUsage: $smartFundsUsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSmartFunds &&
            (identical(other.smartFundsUsage, smartFundsUsage) ||
                const DeepCollectionEquality()
                    .equals(other.smartFundsUsage, smartFundsUsage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(smartFundsUsage);

  @override
  _$UpdateSmartFundsCopyWith<_UpdateSmartFunds> get copyWith =>
      __$UpdateSmartFundsCopyWithImpl<_UpdateSmartFunds>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateSmartFunds(smartFundsUsage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSmartFunds != null) {
      return updateSmartFunds(smartFundsUsage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateSmartFunds(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSmartFunds != null) {
      return updateSmartFunds(this);
    }
    return orElse();
  }
}

abstract class _UpdateSmartFunds implements SettingsEvent {
  const factory _UpdateSmartFunds(bool smartFundsUsage) = _$_UpdateSmartFunds;

  bool get smartFundsUsage;
  _$UpdateSmartFundsCopyWith<_UpdateSmartFunds> get copyWith;
}

/// @nodoc
abstract class _$UpdateUserPinCopyWith<$Res> {
  factory _$UpdateUserPinCopyWith(
          _UpdateUserPin value, $Res Function(_UpdateUserPin) then) =
      __$UpdateUserPinCopyWithImpl<$Res>;
  $Res call({UserPin userPin});
}

/// @nodoc
class __$UpdateUserPinCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$UpdateUserPinCopyWith<$Res> {
  __$UpdateUserPinCopyWithImpl(
      _UpdateUserPin _value, $Res Function(_UpdateUserPin) _then)
      : super(_value, (v) => _then(v as _UpdateUserPin));

  @override
  _UpdateUserPin get _value => super._value as _UpdateUserPin;

  @override
  $Res call({
    Object userPin = freezed,
  }) {
    return _then(_UpdateUserPin(
      userPin == freezed ? _value.userPin : userPin as UserPin,
    ));
  }
}

/// @nodoc
class _$_UpdateUserPin implements _UpdateUserPin {
  const _$_UpdateUserPin(this.userPin) : assert(userPin != null);

  @override
  final UserPin userPin;

  @override
  String toString() {
    return 'SettingsEvent.updateUserPin(userPin: $userPin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserPin &&
            (identical(other.userPin, userPin) ||
                const DeepCollectionEquality().equals(other.userPin, userPin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userPin);

  @override
  _$UpdateUserPinCopyWith<_UpdateUserPin> get copyWith =>
      __$UpdateUserPinCopyWithImpl<_UpdateUserPin>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateUserPin(userPin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUserPin != null) {
      return updateUserPin(userPin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateUserPin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUserPin != null) {
      return updateUserPin(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserPin implements SettingsEvent {
  const factory _UpdateUserPin(UserPin userPin) = _$_UpdateUserPin;

  UserPin get userPin;
  _$UpdateUserPinCopyWith<_UpdateUserPin> get copyWith;
}

/// @nodoc
abstract class _$UupdateSubscriptionModeCopyWith<$Res> {
  factory _$UupdateSubscriptionModeCopyWith(_UupdateSubscriptionMode value,
          $Res Function(_UupdateSubscriptionMode) then) =
      __$UupdateSubscriptionModeCopyWithImpl<$Res>;
  $Res call({SubscriptionMode subscriptionMode});
}

/// @nodoc
class __$UupdateSubscriptionModeCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$UupdateSubscriptionModeCopyWith<$Res> {
  __$UupdateSubscriptionModeCopyWithImpl(_UupdateSubscriptionMode _value,
      $Res Function(_UupdateSubscriptionMode) _then)
      : super(_value, (v) => _then(v as _UupdateSubscriptionMode));

  @override
  _UupdateSubscriptionMode get _value =>
      super._value as _UupdateSubscriptionMode;

  @override
  $Res call({
    Object subscriptionMode = freezed,
  }) {
    return _then(_UupdateSubscriptionMode(
      subscriptionMode == freezed
          ? _value.subscriptionMode
          : subscriptionMode as SubscriptionMode,
    ));
  }
}

/// @nodoc
class _$_UupdateSubscriptionMode implements _UupdateSubscriptionMode {
  const _$_UupdateSubscriptionMode(this.subscriptionMode)
      : assert(subscriptionMode != null);

  @override
  final SubscriptionMode subscriptionMode;

  @override
  String toString() {
    return 'SettingsEvent.updateSubscriptionMode(subscriptionMode: $subscriptionMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UupdateSubscriptionMode &&
            (identical(other.subscriptionMode, subscriptionMode) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionMode, subscriptionMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscriptionMode);

  @override
  _$UupdateSubscriptionModeCopyWith<_UupdateSubscriptionMode> get copyWith =>
      __$UupdateSubscriptionModeCopyWithImpl<_UupdateSubscriptionMode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateSubscriptionMode(subscriptionMode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSubscriptionMode != null) {
      return updateSubscriptionMode(subscriptionMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateSubscriptionMode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSubscriptionMode != null) {
      return updateSubscriptionMode(this);
    }
    return orElse();
  }
}

abstract class _UupdateSubscriptionMode implements SettingsEvent {
  const factory _UupdateSubscriptionMode(SubscriptionMode subscriptionMode) =
      _$_UupdateSubscriptionMode;

  SubscriptionMode get subscriptionMode;
  _$UupdateSubscriptionModeCopyWith<_UupdateSubscriptionMode> get copyWith;
}

/// @nodoc
abstract class _$SetSecurityQuestionCopyWith<$Res> {
  factory _$SetSecurityQuestionCopyWith(_SetSecurityQuestion value,
          $Res Function(_SetSecurityQuestion) then) =
      __$SetSecurityQuestionCopyWithImpl<$Res>;
  $Res call({SecurityQuestion securityQuestion});

  $SecurityQuestionCopyWith<$Res> get securityQuestion;
}

/// @nodoc
class __$SetSecurityQuestionCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$SetSecurityQuestionCopyWith<$Res> {
  __$SetSecurityQuestionCopyWithImpl(
      _SetSecurityQuestion _value, $Res Function(_SetSecurityQuestion) _then)
      : super(_value, (v) => _then(v as _SetSecurityQuestion));

  @override
  _SetSecurityQuestion get _value => super._value as _SetSecurityQuestion;

  @override
  $Res call({
    Object securityQuestion = freezed,
  }) {
    return _then(_SetSecurityQuestion(
      securityQuestion == freezed
          ? _value.securityQuestion
          : securityQuestion as SecurityQuestion,
    ));
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
}

/// @nodoc
class _$_SetSecurityQuestion implements _SetSecurityQuestion {
  const _$_SetSecurityQuestion(this.securityQuestion)
      : assert(securityQuestion != null);

  @override
  final SecurityQuestion securityQuestion;

  @override
  String toString() {
    return 'SettingsEvent.setSecurityQuestion(securityQuestion: $securityQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetSecurityQuestion &&
            (identical(other.securityQuestion, securityQuestion) ||
                const DeepCollectionEquality()
                    .equals(other.securityQuestion, securityQuestion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(securityQuestion);

  @override
  _$SetSecurityQuestionCopyWith<_SetSecurityQuestion> get copyWith =>
      __$SetSecurityQuestionCopyWithImpl<_SetSecurityQuestion>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return setSecurityQuestion(securityQuestion);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setSecurityQuestion != null) {
      return setSecurityQuestion(securityQuestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return setSecurityQuestion(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setSecurityQuestion != null) {
      return setSecurityQuestion(this);
    }
    return orElse();
  }
}

abstract class _SetSecurityQuestion implements SettingsEvent {
  const factory _SetSecurityQuestion(SecurityQuestion securityQuestion) =
      _$_SetSecurityQuestion;

  SecurityQuestion get securityQuestion;
  _$SetSecurityQuestionCopyWith<_SetSecurityQuestion> get copyWith;
}

/// @nodoc
abstract class _$UupdateUserReputationCopyWith<$Res> {
  factory _$UupdateUserReputationCopyWith(_UupdateUserReputation value,
          $Res Function(_UupdateUserReputation) then) =
      __$UupdateUserReputationCopyWithImpl<$Res>;
  $Res call({UserReputation userReputation});

  $UserReputationCopyWith<$Res> get userReputation;
}

/// @nodoc
class __$UupdateUserReputationCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$UupdateUserReputationCopyWith<$Res> {
  __$UupdateUserReputationCopyWithImpl(_UupdateUserReputation _value,
      $Res Function(_UupdateUserReputation) _then)
      : super(_value, (v) => _then(v as _UupdateUserReputation));

  @override
  _UupdateUserReputation get _value => super._value as _UupdateUserReputation;

  @override
  $Res call({
    Object userReputation = freezed,
  }) {
    return _then(_UupdateUserReputation(
      userReputation == freezed
          ? _value.userReputation
          : userReputation as UserReputation,
    ));
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
class _$_UupdateUserReputation implements _UupdateUserReputation {
  const _$_UupdateUserReputation(this.userReputation)
      : assert(userReputation != null);

  @override
  final UserReputation userReputation;

  @override
  String toString() {
    return 'SettingsEvent.updateUserReputation(userReputation: $userReputation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UupdateUserReputation &&
            (identical(other.userReputation, userReputation) ||
                const DeepCollectionEquality()
                    .equals(other.userReputation, userReputation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userReputation);

  @override
  _$UupdateUserReputationCopyWith<_UupdateUserReputation> get copyWith =>
      __$UupdateUserReputationCopyWithImpl<_UupdateUserReputation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateUserReputation(userReputation);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUserReputation != null) {
      return updateUserReputation(userReputation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return updateUserReputation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUserReputation != null) {
      return updateUserReputation(this);
    }
    return orElse();
  }
}

abstract class _UupdateUserReputation implements SettingsEvent {
  const factory _UupdateUserReputation(UserReputation userReputation) =
      _$_UupdateUserReputation;

  UserReputation get userReputation;
  _$UupdateUserReputationCopyWith<_UupdateUserReputation> get copyWith;
}

/// @nodoc
abstract class _$EenableAppLockCopyWith<$Res> {
  factory _$EenableAppLockCopyWith(
          _EenableAppLock value, $Res Function(_EenableAppLock) then) =
      __$EenableAppLockCopyWithImpl<$Res>;
  $Res call({bool lockEntireApp});
}

/// @nodoc
class __$EenableAppLockCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$EenableAppLockCopyWith<$Res> {
  __$EenableAppLockCopyWithImpl(
      _EenableAppLock _value, $Res Function(_EenableAppLock) _then)
      : super(_value, (v) => _then(v as _EenableAppLock));

  @override
  _EenableAppLock get _value => super._value as _EenableAppLock;

  @override
  $Res call({
    Object lockEntireApp = freezed,
  }) {
    return _then(_EenableAppLock(
      lockEntireApp == freezed ? _value.lockEntireApp : lockEntireApp as bool,
    ));
  }
}

/// @nodoc
class _$_EenableAppLock implements _EenableAppLock {
  const _$_EenableAppLock(this.lockEntireApp) : assert(lockEntireApp != null);

  @override
  final bool lockEntireApp;

  @override
  String toString() {
    return 'SettingsEvent.enableAppLock(lockEntireApp: $lockEntireApp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EenableAppLock &&
            (identical(other.lockEntireApp, lockEntireApp) ||
                const DeepCollectionEquality()
                    .equals(other.lockEntireApp, lockEntireApp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lockEntireApp);

  @override
  _$EenableAppLockCopyWith<_EenableAppLock> get copyWith =>
      __$EenableAppLockCopyWithImpl<_EenableAppLock>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return enableAppLock(lockEntireApp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enableAppLock != null) {
      return enableAppLock(lockEntireApp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return enableAppLock(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enableAppLock != null) {
      return enableAppLock(this);
    }
    return orElse();
  }
}

abstract class _EenableAppLock implements SettingsEvent {
  const factory _EenableAppLock(bool lockEntireApp) = _$_EenableAppLock;

  bool get lockEntireApp;
  _$EenableAppLockCopyWith<_EenableAppLock> get copyWith;
}

/// @nodoc
abstract class _$SsetDateOfBirthCopyWith<$Res> {
  factory _$SsetDateOfBirthCopyWith(
          _SsetDateOfBirth value, $Res Function(_SsetDateOfBirth) then) =
      __$SsetDateOfBirthCopyWithImpl<$Res>;
  $Res call({ValidDateOfBirth dateOfBirth});
}

/// @nodoc
class __$SsetDateOfBirthCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$SsetDateOfBirthCopyWith<$Res> {
  __$SsetDateOfBirthCopyWithImpl(
      _SsetDateOfBirth _value, $Res Function(_SsetDateOfBirth) _then)
      : super(_value, (v) => _then(v as _SsetDateOfBirth));

  @override
  _SsetDateOfBirth get _value => super._value as _SsetDateOfBirth;

  @override
  $Res call({
    Object dateOfBirth = freezed,
  }) {
    return _then(_SsetDateOfBirth(
      dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth as ValidDateOfBirth,
    ));
  }
}

/// @nodoc
class _$_SsetDateOfBirth implements _SsetDateOfBirth {
  const _$_SsetDateOfBirth(this.dateOfBirth) : assert(dateOfBirth != null);

  @override
  final ValidDateOfBirth dateOfBirth;

  @override
  String toString() {
    return 'SettingsEvent.setDateOfBirth(dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SsetDateOfBirth &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dateOfBirth);

  @override
  _$SsetDateOfBirthCopyWith<_SsetDateOfBirth> get copyWith =>
      __$SsetDateOfBirthCopyWithImpl<_SsetDateOfBirth>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return setDateOfBirth(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setDateOfBirth != null) {
      return setDateOfBirth(dateOfBirth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return setDateOfBirth(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setDateOfBirth != null) {
      return setDateOfBirth(this);
    }
    return orElse();
  }
}

abstract class _SsetDateOfBirth implements SettingsEvent {
  const factory _SsetDateOfBirth(ValidDateOfBirth dateOfBirth) =
      _$_SsetDateOfBirth;

  ValidDateOfBirth get dateOfBirth;
  _$SsetDateOfBirthCopyWith<_SsetDateOfBirth> get copyWith;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({UserSettings userSettings});

  $UserSettingsCopyWith<$Res> get userSettings;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object userSettings = freezed,
  }) {
    return _then(_Initial(
      userSettings == freezed
          ? _value.userSettings
          : userSettings as UserSettings,
    ));
  }

  @override
  $UserSettingsCopyWith<$Res> get userSettings {
    if (_value.userSettings == null) {
      return null;
    }
    return $UserSettingsCopyWith<$Res>(_value.userSettings, (value) {
      return _then(_value.copyWith(userSettings: value));
    });
  }
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial(this.userSettings) : assert(userSettings != null);

  @override
  final UserSettings userSettings;

  @override
  String toString() {
    return 'SettingsEvent.initial(userSettings: $userSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.userSettings, userSettings) ||
                const DeepCollectionEquality()
                    .equals(other.userSettings, userSettings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userSettings);

  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return initial(userSettings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(userSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SettingsEvent {
  const factory _Initial(UserSettings userSettings) = _$_Initial;

  UserSettings get userSettings;
  _$InitialCopyWith<_Initial> get copyWith;
}

/// @nodoc
abstract class _$SetUserSettingsCopyWith<$Res> {
  factory _$SetUserSettingsCopyWith(
          _SetUserSettings value, $Res Function(_SetUserSettings) then) =
      __$SetUserSettingsCopyWithImpl<$Res>;
  $Res call({UserSettings userSettings});

  $UserSettingsCopyWith<$Res> get userSettings;
}

/// @nodoc
class __$SetUserSettingsCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$SetUserSettingsCopyWith<$Res> {
  __$SetUserSettingsCopyWithImpl(
      _SetUserSettings _value, $Res Function(_SetUserSettings) _then)
      : super(_value, (v) => _then(v as _SetUserSettings));

  @override
  _SetUserSettings get _value => super._value as _SetUserSettings;

  @override
  $Res call({
    Object userSettings = freezed,
  }) {
    return _then(_SetUserSettings(
      userSettings == freezed
          ? _value.userSettings
          : userSettings as UserSettings,
    ));
  }

  @override
  $UserSettingsCopyWith<$Res> get userSettings {
    if (_value.userSettings == null) {
      return null;
    }
    return $UserSettingsCopyWith<$Res>(_value.userSettings, (value) {
      return _then(_value.copyWith(userSettings: value));
    });
  }
}

/// @nodoc
class _$_SetUserSettings implements _SetUserSettings {
  const _$_SetUserSettings(this.userSettings) : assert(userSettings != null);

  @override
  final UserSettings userSettings;

  @override
  String toString() {
    return 'SettingsEvent.setUserSettings(userSettings: $userSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetUserSettings &&
            (identical(other.userSettings, userSettings) ||
                const DeepCollectionEquality()
                    .equals(other.userSettings, userSettings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userSettings);

  @override
  _$SetUserSettingsCopyWith<_SetUserSettings> get copyWith =>
      __$SetUserSettingsCopyWithImpl<_SetUserSettings>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUserAddress(UserAddress userAddress),
    @required Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    @required Result enable2FA(bool enable2FA),
    @required Result updateSmartFunds(bool smartFundsUsage),
    @required Result updateUserPin(UserPin userPin),
    @required Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    @required Result setSecurityQuestion(SecurityQuestion securityQuestion),
    @required Result updateUserReputation(UserReputation userReputation),
    @required Result enableAppLock(bool lockEntireApp),
    @required Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    @required Result initial(UserSettings userSettings),
    @required Result setUserSettings(UserSettings userSettings),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return setUserSettings(userSettings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUserAddress(UserAddress userAddress),
    Result updateDefaultLanguage(DefaultLanguage defaultLanguage),
    Result enable2FA(bool enable2FA),
    Result updateSmartFunds(bool smartFundsUsage),
    Result updateUserPin(UserPin userPin),
    Result updateSubscriptionMode(SubscriptionMode subscriptionMode),
    Result setSecurityQuestion(SecurityQuestion securityQuestion),
    Result updateUserReputation(UserReputation userReputation),
    Result enableAppLock(bool lockEntireApp),
    Result setDateOfBirth(ValidDateOfBirth dateOfBirth),
    Result initial(UserSettings userSettings),
    Result setUserSettings(UserSettings userSettings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setUserSettings != null) {
      return setUserSettings(userSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUserAddress(_UpdateUserAddress value),
    @required Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    @required Result enable2FA(_Enable2FA value),
    @required Result updateSmartFunds(_UpdateSmartFunds value),
    @required Result updateUserPin(_UpdateUserPin value),
    @required Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    @required Result setSecurityQuestion(_SetSecurityQuestion value),
    @required Result updateUserReputation(_UupdateUserReputation value),
    @required Result enableAppLock(_EenableAppLock value),
    @required Result setDateOfBirth(_SsetDateOfBirth value),
    @required Result initial(_Initial value),
    @required Result setUserSettings(_SetUserSettings value),
  }) {
    assert(updateUserAddress != null);
    assert(updateDefaultLanguage != null);
    assert(enable2FA != null);
    assert(updateSmartFunds != null);
    assert(updateUserPin != null);
    assert(updateSubscriptionMode != null);
    assert(setSecurityQuestion != null);
    assert(updateUserReputation != null);
    assert(enableAppLock != null);
    assert(setDateOfBirth != null);
    assert(initial != null);
    assert(setUserSettings != null);
    return setUserSettings(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUserAddress(_UpdateUserAddress value),
    Result updateDefaultLanguage(_UpdateDefaultLanguage value),
    Result enable2FA(_Enable2FA value),
    Result updateSmartFunds(_UpdateSmartFunds value),
    Result updateUserPin(_UpdateUserPin value),
    Result updateSubscriptionMode(_UupdateSubscriptionMode value),
    Result setSecurityQuestion(_SetSecurityQuestion value),
    Result updateUserReputation(_UupdateUserReputation value),
    Result enableAppLock(_EenableAppLock value),
    Result setDateOfBirth(_SsetDateOfBirth value),
    Result initial(_Initial value),
    Result setUserSettings(_SetUserSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setUserSettings != null) {
      return setUserSettings(this);
    }
    return orElse();
  }
}

abstract class _SetUserSettings implements SettingsEvent {
  const factory _SetUserSettings(UserSettings userSettings) =
      _$_SetUserSettings;

  UserSettings get userSettings;
  _$SetUserSettingsCopyWith<_SetUserSettings> get copyWith;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

// ignore: unused_element
  _SettingsState call(
      {@required
          UserSettings userSettings,
      @required
          bool isSaving,
      @required
          Option<Either<UserSettingsFailure, Object>> failureOrSuccessOption}) {
    return _SettingsState(
      userSettings: userSettings,
      isSaving: isSaving,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  UserSettings get userSettings;
  bool get isSaving;
  Option<Either<UserSettingsFailure, Object>> get failureOrSuccessOption;

  $SettingsStateCopyWith<SettingsState> get copyWith;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {UserSettings userSettings,
      bool isSaving,
      Option<Either<UserSettingsFailure, Object>> failureOrSuccessOption});

  $UserSettingsCopyWith<$Res> get userSettings;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object userSettings = freezed,
    Object isSaving = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      userSettings: userSettings == freezed
          ? _value.userSettings
          : userSettings as UserSettings,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption
              as Option<Either<UserSettingsFailure, Object>>,
    ));
  }

  @override
  $UserSettingsCopyWith<$Res> get userSettings {
    if (_value.userSettings == null) {
      return null;
    }
    return $UserSettingsCopyWith<$Res>(_value.userSettings, (value) {
      return _then(_value.copyWith(userSettings: value));
    });
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserSettings userSettings,
      bool isSaving,
      Option<Either<UserSettingsFailure, Object>> failureOrSuccessOption});

  @override
  $UserSettingsCopyWith<$Res> get userSettings;
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object userSettings = freezed,
    Object isSaving = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_SettingsState(
      userSettings: userSettings == freezed
          ? _value.userSettings
          : userSettings as UserSettings,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption
              as Option<Either<UserSettingsFailure, Object>>,
    ));
  }
}

/// @nodoc
class _$_SettingsState extends _SettingsState {
  const _$_SettingsState(
      {@required this.userSettings,
      @required this.isSaving,
      @required this.failureOrSuccessOption})
      : assert(userSettings != null),
        assert(isSaving != null),
        assert(failureOrSuccessOption != null),
        super._();

  @override
  final UserSettings userSettings;
  @override
  final bool isSaving;
  @override
  final Option<Either<UserSettingsFailure, Object>> failureOrSuccessOption;

  @override
  String toString() {
    return 'SettingsState(userSettings: $userSettings, isSaving: $isSaving, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsState &&
            (identical(other.userSettings, userSettings) ||
                const DeepCollectionEquality()
                    .equals(other.userSettings, userSettings)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userSettings) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);
}

abstract class _SettingsState extends SettingsState {
  const _SettingsState._() : super._();
  const factory _SettingsState(
      {@required
          UserSettings userSettings,
      @required
          bool isSaving,
      @required
          Option<Either<UserSettingsFailure, Object>>
              failureOrSuccessOption}) = _$_SettingsState;

  @override
  UserSettings get userSettings;
  @override
  bool get isSaving;
  @override
  Option<Either<UserSettingsFailure, Object>> get failureOrSuccessOption;
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith;
}
