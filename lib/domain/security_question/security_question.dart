import 'package:auto_route/auto_route_annotations.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_question.freezed.dart';

@immutable
@freezed
abstract class SecurityQuestion implements _$SecurityQuestion {
  const SecurityQuestion._();
  const factory SecurityQuestion({
    @required ValidSecurityQuestion question,
    @required ValidSecurityAnswer answer,
  }) = _SecurityQuestion;

  factory SecurityQuestion.empty() => SecurityQuestion(
        question: ValidSecurityQuestion(''),
        answer: ValidSecurityAnswer(''),
      );
}
