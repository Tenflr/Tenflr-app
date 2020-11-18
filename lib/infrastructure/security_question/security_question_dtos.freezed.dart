// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'security_question_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SecurityQuestionDto _$SecurityQuestionDtoFromJson(Map<String, dynamic> json) {
  return _SecurityQuestionDto.fromJson(json);
}

/// @nodoc
class _$SecurityQuestionDtoTearOff {
  const _$SecurityQuestionDtoTearOff();

// ignore: unused_element
  _SecurityQuestionDto call(
      {@required String question, @required String answer}) {
    return _SecurityQuestionDto(
      question: question,
      answer: answer,
    );
  }

// ignore: unused_element
  SecurityQuestionDto fromJson(Map<String, Object> json) {
    return SecurityQuestionDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SecurityQuestionDto = _$SecurityQuestionDtoTearOff();

/// @nodoc
mixin _$SecurityQuestionDto {
  String get question;
  String get answer;

  Map<String, dynamic> toJson();
  $SecurityQuestionDtoCopyWith<SecurityQuestionDto> get copyWith;
}

/// @nodoc
abstract class $SecurityQuestionDtoCopyWith<$Res> {
  factory $SecurityQuestionDtoCopyWith(
          SecurityQuestionDto value, $Res Function(SecurityQuestionDto) then) =
      _$SecurityQuestionDtoCopyWithImpl<$Res>;
  $Res call({String question, String answer});
}

/// @nodoc
class _$SecurityQuestionDtoCopyWithImpl<$Res>
    implements $SecurityQuestionDtoCopyWith<$Res> {
  _$SecurityQuestionDtoCopyWithImpl(this._value, this._then);

  final SecurityQuestionDto _value;
  // ignore: unused_field
  final $Res Function(SecurityQuestionDto) _then;

  @override
  $Res call({
    Object question = freezed,
    Object answer = freezed,
  }) {
    return _then(_value.copyWith(
      question: question == freezed ? _value.question : question as String,
      answer: answer == freezed ? _value.answer : answer as String,
    ));
  }
}

/// @nodoc
abstract class _$SecurityQuestionDtoCopyWith<$Res>
    implements $SecurityQuestionDtoCopyWith<$Res> {
  factory _$SecurityQuestionDtoCopyWith(_SecurityQuestionDto value,
          $Res Function(_SecurityQuestionDto) then) =
      __$SecurityQuestionDtoCopyWithImpl<$Res>;
  @override
  $Res call({String question, String answer});
}

/// @nodoc
class __$SecurityQuestionDtoCopyWithImpl<$Res>
    extends _$SecurityQuestionDtoCopyWithImpl<$Res>
    implements _$SecurityQuestionDtoCopyWith<$Res> {
  __$SecurityQuestionDtoCopyWithImpl(
      _SecurityQuestionDto _value, $Res Function(_SecurityQuestionDto) _then)
      : super(_value, (v) => _then(v as _SecurityQuestionDto));

  @override
  _SecurityQuestionDto get _value => super._value as _SecurityQuestionDto;

  @override
  $Res call({
    Object question = freezed,
    Object answer = freezed,
  }) {
    return _then(_SecurityQuestionDto(
      question: question == freezed ? _value.question : question as String,
      answer: answer == freezed ? _value.answer : answer as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SecurityQuestionDto extends _SecurityQuestionDto {
  const _$_SecurityQuestionDto({@required this.question, @required this.answer})
      : assert(question != null),
        assert(answer != null),
        super._();

  factory _$_SecurityQuestionDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SecurityQuestionDtoFromJson(json);

  @override
  final String question;
  @override
  final String answer;

  @override
  String toString() {
    return 'SecurityQuestionDto(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SecurityQuestionDto &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(answer);

  @override
  _$SecurityQuestionDtoCopyWith<_SecurityQuestionDto> get copyWith =>
      __$SecurityQuestionDtoCopyWithImpl<_SecurityQuestionDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SecurityQuestionDtoToJson(this);
  }
}

abstract class _SecurityQuestionDto extends SecurityQuestionDto {
  const _SecurityQuestionDto._() : super._();
  const factory _SecurityQuestionDto(
      {@required String question,
      @required String answer}) = _$_SecurityQuestionDto;

  factory _SecurityQuestionDto.fromJson(Map<String, dynamic> json) =
      _$_SecurityQuestionDto.fromJson;

  @override
  String get question;
  @override
  String get answer;
  @override
  _$SecurityQuestionDtoCopyWith<_SecurityQuestionDto> get copyWith;
}
