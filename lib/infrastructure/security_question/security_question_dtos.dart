import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/security_question/security_question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_question_dtos.freezed.dart';
part 'security_question_dtos.g.dart';

@immutable
@freezed
abstract class SecurityQuestionDto implements _$SecurityQuestionDto {
  const SecurityQuestionDto._();

  const factory SecurityQuestionDto({
    @required String question,
    @required String answer,
  }) = _SecurityQuestionDto;

  factory SecurityQuestionDto.fromDomain(SecurityQuestion securityQuestion) =>
      SecurityQuestionDto(
        question: securityQuestion.question.getOrCrash(),
        answer: securityQuestion.answer.getOrCrash(),
      );

  SecurityQuestion toDomain() => SecurityQuestion(
      answer: ValidSecurityAnswer(answer),
      question: ValidSecurityQuestion(question));

  factory SecurityQuestionDto.fromJson(Map<String, dynamic> json) =>
      _$SecurityQuestionDtoFromJson(json);
}
