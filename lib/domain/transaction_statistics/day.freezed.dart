// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DayTearOff {
  const _$DayTearOff();

// ignore: unused_element
  _Day call(
      {@required ValidUserName day,
      @required int index,
      @required StatsAmount expenditure,
      @required StatsAmount income,
      @required ValidDate todayDate}) {
    return _Day(
      day: day,
      index: index,
      expenditure: expenditure,
      income: income,
      todayDate: todayDate,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Day = _$DayTearOff();

/// @nodoc
mixin _$Day {
  ValidUserName get day;
  int get index;
  StatsAmount get expenditure;
  StatsAmount get income;
  ValidDate get todayDate;

  $DayCopyWith<Day> get copyWith;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res>;
  $Res call(
      {ValidUserName day,
      int index,
      StatsAmount expenditure,
      StatsAmount income,
      ValidDate todayDate});
}

/// @nodoc
class _$DayCopyWithImpl<$Res> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  final Day _value;
  // ignore: unused_field
  final $Res Function(Day) _then;

  @override
  $Res call({
    Object day = freezed,
    Object index = freezed,
    Object expenditure = freezed,
    Object income = freezed,
    Object todayDate = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed ? _value.day : day as ValidUserName,
      index: index == freezed ? _value.index : index as int,
      expenditure: expenditure == freezed
          ? _value.expenditure
          : expenditure as StatsAmount,
      income: income == freezed ? _value.income : income as StatsAmount,
      todayDate:
          todayDate == freezed ? _value.todayDate : todayDate as ValidDate,
    ));
  }
}

/// @nodoc
abstract class _$DayCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$DayCopyWith(_Day value, $Res Function(_Day) then) =
      __$DayCopyWithImpl<$Res>;
  @override
  $Res call(
      {ValidUserName day,
      int index,
      StatsAmount expenditure,
      StatsAmount income,
      ValidDate todayDate});
}

/// @nodoc
class __$DayCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res>
    implements _$DayCopyWith<$Res> {
  __$DayCopyWithImpl(_Day _value, $Res Function(_Day) _then)
      : super(_value, (v) => _then(v as _Day));

  @override
  _Day get _value => super._value as _Day;

  @override
  $Res call({
    Object day = freezed,
    Object index = freezed,
    Object expenditure = freezed,
    Object income = freezed,
    Object todayDate = freezed,
  }) {
    return _then(_Day(
      day: day == freezed ? _value.day : day as ValidUserName,
      index: index == freezed ? _value.index : index as int,
      expenditure: expenditure == freezed
          ? _value.expenditure
          : expenditure as StatsAmount,
      income: income == freezed ? _value.income : income as StatsAmount,
      todayDate:
          todayDate == freezed ? _value.todayDate : todayDate as ValidDate,
    ));
  }
}

/// @nodoc
class _$_Day extends _Day with DiagnosticableTreeMixin {
  const _$_Day(
      {@required this.day,
      @required this.index,
      @required this.expenditure,
      @required this.income,
      @required this.todayDate})
      : assert(day != null),
        assert(index != null),
        assert(expenditure != null),
        assert(income != null),
        assert(todayDate != null),
        super._();

  @override
  final ValidUserName day;
  @override
  final int index;
  @override
  final StatsAmount expenditure;
  @override
  final StatsAmount income;
  @override
  final ValidDate todayDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Day(day: $day, index: $index, expenditure: $expenditure, income: $income, todayDate: $todayDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Day'))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('expenditure', expenditure))
      ..add(DiagnosticsProperty('income', income))
      ..add(DiagnosticsProperty('todayDate', todayDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Day &&
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
  _$DayCopyWith<_Day> get copyWith =>
      __$DayCopyWithImpl<_Day>(this, _$identity);
}

abstract class _Day extends Day {
  const _Day._() : super._();
  const factory _Day(
      {@required ValidUserName day,
      @required int index,
      @required StatsAmount expenditure,
      @required StatsAmount income,
      @required ValidDate todayDate}) = _$_Day;

  @override
  ValidUserName get day;
  @override
  int get index;
  @override
  StatsAmount get expenditure;
  @override
  StatsAmount get income;
  @override
  ValidDate get todayDate;
  @override
  _$DayCopyWith<_Day> get copyWith;
}
