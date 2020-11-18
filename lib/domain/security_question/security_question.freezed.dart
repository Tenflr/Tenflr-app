// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'security_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SecurityQuestionTearOff {
  const _$SecurityQuestionTearOff();

// ignore: unused_element
  _SecurityQuestion call(
      {@required ValidSecurityQuestion question,
      @required ValidSecurityAnswer answer}) {
    return _SecurityQuestion(
      question: question,
      answer: answer,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SecurityQuestion = _$SecurityQuestionTearOff();

/// @nodoc
mixin _$SecurityQuestion {
  ValidSecurityQuestion get question;
  ValidSecurityAnswer get answer;

  $SecurityQuestionCopyWith<SecurityQuestion> get copyWith;
}

/// @nodoc
abstract class $SecurityQuestionCopyWith<$Res> {
  factory $SecurityQuestionCopyWith(
          SecurityQuestion value, $Res Function(SecurityQuestion) then) =
      _$SecurityQuestionCopyWithImpl<$Res>;
  $Res call({ValidSecurityQuestion question, ValidSecurityAnswer answer});
}

/// @nodoc
class _$SecurityQuestionCopyWithImpl<$Res>
    implements $SecurityQuestionCopyWith<$Res> {
  _$SecurityQuestionCopyWithImpl(this._value, this._then);

  final SecurityQuestion _value;
  // ignore: unused_field
  final $Res Function(SecurityQuestion) _then;

  @override
  $Res call({
    Object question = freezed,
    Object answer = freezed,
  }) {
    return _then(_value.copyWith(
      question: question == freezed
          ? _value.question
          : question as ValidSecurityQuestion,
      answer: answer == freezed ? _value.answer : answer as ValidSecurityAnswer,
    ));
  }
}

/// @nodoc
abstract class _$SecurityQuestionCopyWith<$Res>
    implements $SecurityQuestionCopyWith<$Res> {
  factory _$SecurityQuestionCopyWith(
          _SecurityQuestion value, $Res Function(_SecurityQuestion) then) =
      __$SecurityQuestionCopyWithImpl<$Res>;
  @override
  $Res call({ValidSecurityQuestion question, ValidSecurityAnswer answer});
}

/// @nodoc
class __$SecurityQuestionCopyWithImpl<$Res>
    extends _$SecurityQuestionCopyWithImpl<$Res>
    implements _$SecurityQuestionCopyWith<$Res> {
  __$SecurityQuestionCopyWithImpl(
      _SecurityQuestion _value, $Res Function(_SecurityQuestion) _then)
      : super(_value, (v) => _then(v as _SecurityQuestion));

  @override
  _SecurityQuestion get _value => super._value as _SecurityQuestion;

  @override
  $Res call({
    Object question = freezed,
    Object answer = freezed,
  }) {
    return _then(_SecurityQuestion(
      question: question == freezed
          ? _value.question
          : question as ValidSecurityQuestion,
      answer: answer == freezed ? _value.answer : answer as ValidSecurityAnswer,
    ));
  }
}

/// @nodoc
class _$_SecurityQuestion extends _SecurityQuestion {
  const _$_SecurityQuestion({@required this.question, @required this.answer})
      : assert(question != null),
        assert(answer != null),
        super._();

  @override
  final ValidSecurityQuestion question;
  @override
  final ValidSecurityAnswer answer;

  @override
  String toString() {
    return 'SecurityQuestion(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SecurityQuestion &&
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
  _$SecurityQuestionCopyWith<_SecurityQuestion> get copyWith =>
      __$SecurityQuestionCopyWithImpl<_SecurityQuestion>(this, _$identity);
}

abstract class _SecurityQuestion extends SecurityQuestion {
  const _SecurityQuestion._() : super._();
  const factory _SecurityQuestion(
      {@required ValidSecurityQuestion question,
      @required ValidSecurityAnswer answer}) = _$_SecurityQuestion;

  @override
  ValidSecurityQuestion get question;
  @override
  ValidSecurityAnswer get answer;
  @override
  _$SecurityQuestionCopyWith<_SecurityQuestion> get copyWith;
}
