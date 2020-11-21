import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/valid_objects.dart';

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
