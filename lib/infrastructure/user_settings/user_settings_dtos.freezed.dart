// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_settings_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserSettingsDto _$UserSettingsDtoFromJson(Map<String, dynamic> json) {
  return _UserSettingsDto.fromJson(json);
}

/// @nodoc
class _$UserSettingsDtoTearOff {
  const _$UserSettingsDtoTearOff();

// ignore: unused_element
  _UserSettingsDto call(
      {@required Map<String, dynamic> addr,
      @required String dLang,
      @required bool sfu,
      @required bool twoFA,
      @required String pin,
      @required Map<String, dynamic> secQues,
      @required DateTime dOB,
      @required Map<String, dynamic> rep,
      @required String subMode,
      @required bool lApp}) {
    return _UserSettingsDto(
      addr: addr,
      dLang: dLang,
      sfu: sfu,
      twoFA: twoFA,
      pin: pin,
      secQues: secQues,
      dOB: dOB,
      rep: rep,
      subMode: subMode,
      lApp: lApp,
    );
  }

// ignore: unused_element
  UserSettingsDto fromJson(Map<String, Object> json) {
    return UserSettingsDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserSettingsDto = _$UserSettingsDtoTearOff();

/// @nodoc
mixin _$UserSettingsDto {
  Map<String, dynamic> get addr; // userAddress
  String get dLang; // defaultName
  bool get sfu; // smartFundsUsage
  bool get twoFA; // enable2FA
  String get pin; // userPin
  Map<String, dynamic> get secQues; // securityQuestion
  DateTime get dOB; // date of birth
  Map<String, dynamic> get rep; //user reputation
  String get subMode; // subscription Mode
  bool get lApp;

  Map<String, dynamic> toJson();
  $UserSettingsDtoCopyWith<UserSettingsDto> get copyWith;
}

/// @nodoc
abstract class $UserSettingsDtoCopyWith<$Res> {
  factory $UserSettingsDtoCopyWith(
          UserSettingsDto value, $Res Function(UserSettingsDto) then) =
      _$UserSettingsDtoCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic> addr,
      String dLang,
      bool sfu,
      bool twoFA,
      String pin,
      Map<String, dynamic> secQues,
      DateTime dOB,
      Map<String, dynamic> rep,
      String subMode,
      bool lApp});
}

/// @nodoc
class _$UserSettingsDtoCopyWithImpl<$Res>
    implements $UserSettingsDtoCopyWith<$Res> {
  _$UserSettingsDtoCopyWithImpl(this._value, this._then);

  final UserSettingsDto _value;
  // ignore: unused_field
  final $Res Function(UserSettingsDto) _then;

  @override
  $Res call({
    Object addr = freezed,
    Object dLang = freezed,
    Object sfu = freezed,
    Object twoFA = freezed,
    Object pin = freezed,
    Object secQues = freezed,
    Object dOB = freezed,
    Object rep = freezed,
    Object subMode = freezed,
    Object lApp = freezed,
  }) {
    return _then(_value.copyWith(
      addr: addr == freezed ? _value.addr : addr as Map<String, dynamic>,
      dLang: dLang == freezed ? _value.dLang : dLang as String,
      sfu: sfu == freezed ? _value.sfu : sfu as bool,
      twoFA: twoFA == freezed ? _value.twoFA : twoFA as bool,
      pin: pin == freezed ? _value.pin : pin as String,
      secQues:
          secQues == freezed ? _value.secQues : secQues as Map<String, dynamic>,
      dOB: dOB == freezed ? _value.dOB : dOB as DateTime,
      rep: rep == freezed ? _value.rep : rep as Map<String, dynamic>,
      subMode: subMode == freezed ? _value.subMode : subMode as String,
      lApp: lApp == freezed ? _value.lApp : lApp as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserSettingsDtoCopyWith<$Res>
    implements $UserSettingsDtoCopyWith<$Res> {
  factory _$UserSettingsDtoCopyWith(
          _UserSettingsDto value, $Res Function(_UserSettingsDto) then) =
      __$UserSettingsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic> addr,
      String dLang,
      bool sfu,
      bool twoFA,
      String pin,
      Map<String, dynamic> secQues,
      DateTime dOB,
      Map<String, dynamic> rep,
      String subMode,
      bool lApp});
}

/// @nodoc
class __$UserSettingsDtoCopyWithImpl<$Res>
    extends _$UserSettingsDtoCopyWithImpl<$Res>
    implements _$UserSettingsDtoCopyWith<$Res> {
  __$UserSettingsDtoCopyWithImpl(
      _UserSettingsDto _value, $Res Function(_UserSettingsDto) _then)
      : super(_value, (v) => _then(v as _UserSettingsDto));

  @override
  _UserSettingsDto get _value => super._value as _UserSettingsDto;

  @override
  $Res call({
    Object addr = freezed,
    Object dLang = freezed,
    Object sfu = freezed,
    Object twoFA = freezed,
    Object pin = freezed,
    Object secQues = freezed,
    Object dOB = freezed,
    Object rep = freezed,
    Object subMode = freezed,
    Object lApp = freezed,
  }) {
    return _then(_UserSettingsDto(
      addr: addr == freezed ? _value.addr : addr as Map<String, dynamic>,
      dLang: dLang == freezed ? _value.dLang : dLang as String,
      sfu: sfu == freezed ? _value.sfu : sfu as bool,
      twoFA: twoFA == freezed ? _value.twoFA : twoFA as bool,
      pin: pin == freezed ? _value.pin : pin as String,
      secQues:
          secQues == freezed ? _value.secQues : secQues as Map<String, dynamic>,
      dOB: dOB == freezed ? _value.dOB : dOB as DateTime,
      rep: rep == freezed ? _value.rep : rep as Map<String, dynamic>,
      subMode: subMode == freezed ? _value.subMode : subMode as String,
      lApp: lApp == freezed ? _value.lApp : lApp as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserSettingsDto extends _UserSettingsDto {
  const _$_UserSettingsDto(
      {@required this.addr,
      @required this.dLang,
      @required this.sfu,
      @required this.twoFA,
      @required this.pin,
      @required this.secQues,
      @required this.dOB,
      @required this.rep,
      @required this.subMode,
      @required this.lApp})
      : assert(addr != null),
        assert(dLang != null),
        assert(sfu != null),
        assert(twoFA != null),
        assert(pin != null),
        assert(secQues != null),
        assert(dOB != null),
        assert(rep != null),
        assert(subMode != null),
        assert(lApp != null),
        super._();

  factory _$_UserSettingsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserSettingsDtoFromJson(json);

  @override
  final Map<String, dynamic> addr;
  @override // userAddress
  final String dLang;
  @override // defaultName
  final bool sfu;
  @override // smartFundsUsage
  final bool twoFA;
  @override // enable2FA
  final String pin;
  @override // userPin
  final Map<String, dynamic> secQues;
  @override // securityQuestion
  final DateTime dOB;
  @override // date of birth
  final Map<String, dynamic> rep;
  @override //user reputation
  final String subMode;
  @override // subscription Mode
  final bool lApp;

  @override
  String toString() {
    return 'UserSettingsDto(addr: $addr, dLang: $dLang, sfu: $sfu, twoFA: $twoFA, pin: $pin, secQues: $secQues, dOB: $dOB, rep: $rep, subMode: $subMode, lApp: $lApp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSettingsDto &&
            (identical(other.addr, addr) ||
                const DeepCollectionEquality().equals(other.addr, addr)) &&
            (identical(other.dLang, dLang) ||
                const DeepCollectionEquality().equals(other.dLang, dLang)) &&
            (identical(other.sfu, sfu) ||
                const DeepCollectionEquality().equals(other.sfu, sfu)) &&
            (identical(other.twoFA, twoFA) ||
                const DeepCollectionEquality().equals(other.twoFA, twoFA)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)) &&
            (identical(other.secQues, secQues) ||
                const DeepCollectionEquality()
                    .equals(other.secQues, secQues)) &&
            (identical(other.dOB, dOB) ||
                const DeepCollectionEquality().equals(other.dOB, dOB)) &&
            (identical(other.rep, rep) ||
                const DeepCollectionEquality().equals(other.rep, rep)) &&
            (identical(other.subMode, subMode) ||
                const DeepCollectionEquality()
                    .equals(other.subMode, subMode)) &&
            (identical(other.lApp, lApp) ||
                const DeepCollectionEquality().equals(other.lApp, lApp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addr) ^
      const DeepCollectionEquality().hash(dLang) ^
      const DeepCollectionEquality().hash(sfu) ^
      const DeepCollectionEquality().hash(twoFA) ^
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(secQues) ^
      const DeepCollectionEquality().hash(dOB) ^
      const DeepCollectionEquality().hash(rep) ^
      const DeepCollectionEquality().hash(subMode) ^
      const DeepCollectionEquality().hash(lApp);

  @override
  _$UserSettingsDtoCopyWith<_UserSettingsDto> get copyWith =>
      __$UserSettingsDtoCopyWithImpl<_UserSettingsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserSettingsDtoToJson(this);
  }
}

abstract class _UserSettingsDto extends UserSettingsDto {
  const _UserSettingsDto._() : super._();
  const factory _UserSettingsDto(
      {@required Map<String, dynamic> addr,
      @required String dLang,
      @required bool sfu,
      @required bool twoFA,
      @required String pin,
      @required Map<String, dynamic> secQues,
      @required DateTime dOB,
      @required Map<String, dynamic> rep,
      @required String subMode,
      @required bool lApp}) = _$_UserSettingsDto;

  factory _UserSettingsDto.fromJson(Map<String, dynamic> json) =
      _$_UserSettingsDto.fromJson;

  @override
  Map<String, dynamic> get addr;
  @override // userAddress
  String get dLang;
  @override // defaultName
  bool get sfu;
  @override // smartFundsUsage
  bool get twoFA;
  @override // enable2FA
  String get pin;
  @override // userPin
  Map<String, dynamic> get secQues;
  @override // securityQuestion
  DateTime get dOB;
  @override // date of birth
  Map<String, dynamic> get rep;
  @override //user reputation
  String get subMode;
  @override // subscription Mode
  bool get lApp;
  @override
  _$UserSettingsDtoCopyWith<_UserSettingsDto> get copyWith;
}
