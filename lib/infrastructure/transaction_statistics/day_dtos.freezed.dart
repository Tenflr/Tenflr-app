// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'day_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DayDto _$DayDtoFromJson(Map<String, dynamic> json) {
  return _DayDto.fromJson(json);
}

/// @nodoc
class _$DayDtoTearOff {
  const _$DayDtoTearOff();

// ignore: unused_element
  _DayDto call(
      {@JsonKey(ignore: true) String day,
      @required int index,
      @required double expenditure,
      @required double income,
      @required DateTime todayDate}) {
    return _DayDto(
      day: day,
      index: index,
      expenditure: expenditure,
      income: income,
      todayDate: todayDate,
    );
  }

// ignore: unused_element
  DayDto fromJson(Map<String, Object> json) {
    return DayDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DayDto = _$DayDtoTearOff();

/// @nodoc
mixin _$DayDto {
  @JsonKey(ignore: true)
  String get day;
  int get index;
  double get expenditure;
  double get income;
  DateTime get todayDate;

  Map<String, dynamic> toJson();
  $DayDtoCopyWith<DayDto> get copyWith;
}

/// @nodoc
abstract class $DayDtoCopyWith<$Res> {
  factory $DayDtoCopyWith(DayDto value, $Res Function(DayDto) then) =
      _$DayDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String day,
      int index,
      double expenditure,
      double income,
      DateTime todayDate});
}

/// @nodoc
class _$DayDtoCopyWithImpl<$Res> implements $DayDtoCopyWith<$Res> {
  _$DayDtoCopyWithImpl(this._value, this._then);

  final DayDto _value;
  // ignore: unused_field
  final $Res Function(DayDto) _then;

  @override
  $Res call({
    Object day = freezed,
    Object index = freezed,
    Object expenditure = freezed,
    Object income = freezed,
    Object todayDate = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed ? _value.day : day as String,
      index: index == freezed ? _value.index : index as int,
      expenditure:
          expenditure == freezed ? _value.expenditure : expenditure as double,
      income: income == freezed ? _value.income : income as double,
      todayDate:
          todayDate == freezed ? _value.todayDate : todayDate as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$DayDtoCopyWith<$Res> implements $DayDtoCopyWith<$Res> {
  factory _$DayDtoCopyWith(_DayDto value, $Res Function(_DayDto) then) =
      __$DayDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String day,
      int index,
      double expenditure,
      double income,
      DateTime todayDate});
}

/// @nodoc
class __$DayDtoCopyWithImpl<$Res> extends _$DayDtoCopyWithImpl<$Res>
    implements _$DayDtoCopyWith<$Res> {
  __$DayDtoCopyWithImpl(_DayDto _value, $Res Function(_DayDto) _then)
      : super(_value, (v) => _then(v as _DayDto));

  @override
  _DayDto get _value => super._value as _DayDto;

  @override
  $Res call({
    Object day = freezed,
    Object index = freezed,
    Object expenditure = freezed,
    Object income = freezed,
    Object todayDate = freezed,
  }) {
    return _then(_DayDto(
      day: day == freezed ? _value.day : day as String,
      index: index == freezed ? _value.index : index as int,
      expenditure:
          expenditure == freezed ? _value.expenditure : expenditure as double,
      income: income == freezed ? _value.income : income as double,
      todayDate:
          todayDate == freezed ? _value.todayDate : todayDate as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DayDto extends _DayDto {
  const _$_DayDto(
      {@JsonKey(ignore: true) this.day,
      @required this.index,
      @required this.expenditure,
      @required this.income,
      @required this.todayDate})
      : assert(index != null),
        assert(expenditure != null),
        assert(income != null),
        assert(todayDate != null),
        super._();

  factory _$_DayDto.fromJson(Map<String, dynamic> json) =>
      _$_$_DayDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String day;
  @override
  final int index;
  @override
  final double expenditure;
  @override
  final double income;
  @override
  final DateTime todayDate;

  @override
  String toString() {
    return 'DayDto(day: $day, index: $index, expenditure: $expenditure, income: $income, todayDate: $todayDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DayDto &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.expenditure, expenditure) ||
                const DeepCollectionEquality()
                    .equals(other.expenditure, expenditure)) &&
            (identical(other.income, income) ||
                const DeepCollectionEquality().equals(other.income, income)) &&
            (identical(other.todayDate, todayDate) ||
                const DeepCollectionEquality()
                    .equals(other.todayDate, todayDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(expenditure) ^
      const DeepCollectionEquality().hash(income) ^
      const DeepCollectionEquality().hash(todayDate);

  @override
  _$DayDtoCopyWith<_DayDto> get copyWith =>
      __$DayDtoCopyWithImpl<_DayDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DayDtoToJson(this);
  }
}

abstract class _DayDto extends DayDto {
  const _DayDto._() : super._();
  const factory _DayDto(
      {@JsonKey(ignore: true) String day,
      @required int index,
      @required double expenditure,
      @required double income,
      @required DateTime todayDate}) = _$_DayDto;

  factory _DayDto.fromJson(Map<String, dynamic> json) = _$_DayDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get day;
  @override
  int get index;
  @override
  double get expenditure;
  @override
  double get income;
  @override
  DateTime get todayDate;
  @override
  _$DayDtoCopyWith<_DayDto> get copyWith;
}
