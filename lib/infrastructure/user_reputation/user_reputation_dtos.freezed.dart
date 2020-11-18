// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_reputation_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserReputationDto _$UserReputationDtoFromJson(Map<String, dynamic> json) {
  return _UserReputationDto.fromJson(json);
}

/// @nodoc
class _$UserReputationDtoTearOff {
  const _$UserReputationDtoTearOff();

// ignore: unused_element
  _UserReputationDto call(
      {@required int five,
      @required int four,
      @required int three,
      @required int two,
      @required int one,
      @required double reputation}) {
    return _UserReputationDto(
      five: five,
      four: four,
      three: three,
      two: two,
      one: one,
      reputation: reputation,
    );
  }

// ignore: unused_element
  UserReputationDto fromJson(Map<String, Object> json) {
    return UserReputationDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserReputationDto = _$UserReputationDtoTearOff();

/// @nodoc
mixin _$UserReputationDto {
  int get five;
  int get four;
  int get three;
  int get two;
  int get one;
  double get reputation;

  Map<String, dynamic> toJson();
  $UserReputationDtoCopyWith<UserReputationDto> get copyWith;
}

/// @nodoc
abstract class $UserReputationDtoCopyWith<$Res> {
  factory $UserReputationDtoCopyWith(
          UserReputationDto value, $Res Function(UserReputationDto) then) =
      _$UserReputationDtoCopyWithImpl<$Res>;
  $Res call(
      {int five, int four, int three, int two, int one, double reputation});
}

/// @nodoc
class _$UserReputationDtoCopyWithImpl<$Res>
    implements $UserReputationDtoCopyWith<$Res> {
  _$UserReputationDtoCopyWithImpl(this._value, this._then);

  final UserReputationDto _value;
  // ignore: unused_field
  final $Res Function(UserReputationDto) _then;

  @override
  $Res call({
    Object five = freezed,
    Object four = freezed,
    Object three = freezed,
    Object two = freezed,
    Object one = freezed,
    Object reputation = freezed,
  }) {
    return _then(_value.copyWith(
      five: five == freezed ? _value.five : five as int,
      four: four == freezed ? _value.four : four as int,
      three: three == freezed ? _value.three : three as int,
      two: two == freezed ? _value.two : two as int,
      one: one == freezed ? _value.one : one as int,
      reputation:
          reputation == freezed ? _value.reputation : reputation as double,
    ));
  }
}

/// @nodoc
abstract class _$UserReputationDtoCopyWith<$Res>
    implements $UserReputationDtoCopyWith<$Res> {
  factory _$UserReputationDtoCopyWith(
          _UserReputationDto value, $Res Function(_UserReputationDto) then) =
      __$UserReputationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int five, int four, int three, int two, int one, double reputation});
}

/// @nodoc
class __$UserReputationDtoCopyWithImpl<$Res>
    extends _$UserReputationDtoCopyWithImpl<$Res>
    implements _$UserReputationDtoCopyWith<$Res> {
  __$UserReputationDtoCopyWithImpl(
      _UserReputationDto _value, $Res Function(_UserReputationDto) _then)
      : super(_value, (v) => _then(v as _UserReputationDto));

  @override
  _UserReputationDto get _value => super._value as _UserReputationDto;

  @override
  $Res call({
    Object five = freezed,
    Object four = freezed,
    Object three = freezed,
    Object two = freezed,
    Object one = freezed,
    Object reputation = freezed,
  }) {
    return _then(_UserReputationDto(
      five: five == freezed ? _value.five : five as int,
      four: four == freezed ? _value.four : four as int,
      three: three == freezed ? _value.three : three as int,
      two: two == freezed ? _value.two : two as int,
      one: one == freezed ? _value.one : one as int,
      reputation:
          reputation == freezed ? _value.reputation : reputation as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserReputationDto extends _UserReputationDto
    with DiagnosticableTreeMixin {
  const _$_UserReputationDto(
      {@required this.five,
      @required this.four,
      @required this.three,
      @required this.two,
      @required this.one,
      @required this.reputation})
      : assert(five != null),
        assert(four != null),
        assert(three != null),
        assert(two != null),
        assert(one != null),
        assert(reputation != null),
        super._();

  factory _$_UserReputationDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserReputationDtoFromJson(json);

  @override
  final int five;
  @override
  final int four;
  @override
  final int three;
  @override
  final int two;
  @override
  final int one;
  @override
  final double reputation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserReputationDto(five: $five, four: $four, three: $three, two: $two, one: $one, reputation: $reputation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserReputationDto'))
      ..add(DiagnosticsProperty('five', five))
      ..add(DiagnosticsProperty('four', four))
      ..add(DiagnosticsProperty('three', three))
      ..add(DiagnosticsProperty('two', two))
      ..add(DiagnosticsProperty('one', one))
      ..add(DiagnosticsProperty('reputation', reputation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserReputationDto &&
            (identical(other.five, five) ||
                const DeepCollectionEquality().equals(other.five, five)) &&
            (identical(other.four, four) ||
                const DeepCollectionEquality().equals(other.four, four)) &&
            (identical(other.three, three) ||
                const DeepCollectionEquality().equals(other.three, three)) &&
            (identical(other.two, two) ||
                const DeepCollectionEquality().equals(other.two, two)) &&
            (identical(other.one, one) ||
                const DeepCollectionEquality().equals(other.one, one)) &&
            (identical(other.reputation, reputation) ||
                const DeepCollectionEquality()
                    .equals(other.reputation, reputation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(five) ^
      const DeepCollectionEquality().hash(four) ^
      const DeepCollectionEquality().hash(three) ^
      const DeepCollectionEquality().hash(two) ^
      const DeepCollectionEquality().hash(one) ^
      const DeepCollectionEquality().hash(reputation);

  @override
  _$UserReputationDtoCopyWith<_UserReputationDto> get copyWith =>
      __$UserReputationDtoCopyWithImpl<_UserReputationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserReputationDtoToJson(this);
  }
}

abstract class _UserReputationDto extends UserReputationDto {
  const _UserReputationDto._() : super._();
  const factory _UserReputationDto(
      {@required int five,
      @required int four,
      @required int three,
      @required int two,
      @required int one,
      @required double reputation}) = _$_UserReputationDto;

  factory _UserReputationDto.fromJson(Map<String, dynamic> json) =
      _$_UserReputationDto.fromJson;

  @override
  int get five;
  @override
  int get four;
  @override
  int get three;
  @override
  int get two;
  @override
  int get one;
  @override
  double get reputation;
  @override
  _$UserReputationDtoCopyWith<_UserReputationDto> get copyWith;
}
