import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'failures.dart';
import 'value_object.dart';
import 'value_validators.dart';

@immutable
class AccountName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory AccountName(String input) {
    assert(input != null);
    return AccountName._(validateAccountName(input));
  }

  const AccountName._(this.value);
}




@immutable
class TransactionType extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TransactionType(String input) {
    assert(input != null);
    return TransactionType._(validateTransactionType(input));
  }

  const TransactionType._(this.value);
}

@immutable
class MoneyAmount extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory MoneyAmount(double input) {
    assert(input != null);
    return MoneyAmount._(validateMoneyAmount(input));
  }

  const MoneyAmount._(this.value);
}

@immutable
class StatsAmount extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory StatsAmount(double input) {
    assert(input != null);
    return StatsAmount._(validateStatsAmount(input));
  }

  const StatsAmount._(this.value);
}

@immutable
class ReputationPoints extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory ReputationPoints(double input) {
    assert(input != null);
    return ReputationPoints._(validateReputaion(input));
  }

  const ReputationPoints._(this.value);
}

@immutable
class ValidDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory ValidDate(DateTime input) {
    assert(input != null);
    return ValidDate._(validateDate(input));
  }

  const ValidDate._(this.value);
}

@immutable
class SubscriptionMode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SubscriptionMode(String input) {
    assert(input != null);
    return SubscriptionMode._(validateSubscriptionMode(input));
  }

  const SubscriptionMode._(this.value);
}

@immutable
class ValidDateOfBirth extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory ValidDateOfBirth(DateTime input) {
    // assert(input != null);
    return ValidDateOfBirth._(validateDateOfBirth(input));
  }

  const ValidDateOfBirth._(this.value);
}

@immutable
class SavingStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SavingStatus(String input) {
    assert(input != null);
    return SavingStatus._(validateSavingStatus(input));
  }

  const SavingStatus._(this.value);
}

@immutable
class PaymentStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PaymentStatus(String input) {
    assert(input != null);
    return PaymentStatus._(validatePaymentStatus(input));
  }

  const PaymentStatus._(this.value);
}

@immutable
class BudgetStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory BudgetStatus(String input) {
    assert(input != null);
    return BudgetStatus._(validateBudgetStatus(input));
  }

  const BudgetStatus._(this.value);
}

@immutable
class ValidDuration extends ValueObject<Duration> {
  @override
  final Either<ValueFailure<Duration>, Duration> value;

  factory ValidDuration(Duration input) {
    assert(input != null);
    return ValidDuration._(validateDuration(input));
  }

  const ValidDuration._(this.value);
}

@immutable
class PayoutModeObject extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PayoutModeObject(String input) {
    assert(input != null);
    return PayoutModeObject._(validatePayoutMode(input));
  }

  const PayoutModeObject._(this.value);
}

@immutable
class ValidPhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ValidPhoneNumber(String input) {
    assert(input != null);
    return ValidPhoneNumber._(validatePhone(input));
  }

  const ValidPhoneNumber._(this.value);
}

@immutable
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

@immutable
class ValidNames extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ValidNames(String input) {
    assert(input != null);
    return ValidNames._(validateNames(input));
  }

  const ValidNames._(this.value);
}

@immutable
class ValidUserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ValidUserName(String input) {
    assert(input != null);
    return ValidUserName._(validateUserName(input));
  }

  const ValidUserName._(this.value);
}

@immutable
class DefaultLanguage extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DefaultLanguage(String input) {
    assert(input != null);
    return DefaultLanguage._(validateDefaultLanguage(input));
  }

  const DefaultLanguage._(this.value);
}

class ValidSecurityAnswer extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ValidSecurityAnswer(String input) {
    assert(input != null);
    return ValidSecurityAnswer._(validateSecurityAnswer(input, 10));
  }

  const ValidSecurityAnswer._(this.value);
}

class ValidSecurityQuestion extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ValidSecurityQuestion(String input) {
    assert(input != null);
    return ValidSecurityQuestion._(validateSecurityQuestion(input, 25));
  }

  const ValidSecurityQuestion._(this.value);
}

@immutable
class UserPin extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserPin(String input) {
    assert(input != null);
    return UserPin._(validateUserPin(input));
  }

  const UserPin._(this.value);
}

@immutable
class ValidAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ValidAddress(String input) {
    assert(input != null);
    return ValidAddress._(validateAddress(input));
  }

  const ValidAddress._(this.value);
}

@immutable
class ValidZipCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ValidZipCode(String input) {
    assert(input != null);
    return ValidZipCode._(validateZipCode(input));
  }

  const ValidZipCode._(this.value);
}

@immutable
class ValidCity extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ValidCity(String input) {
    assert(input != null);
    return ValidCity._(validateCity(input));
  }

  const ValidCity._(this.value);
}

@immutable
class ValidState extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ValidState(String input) {
    assert(input != null);
    return ValidState._(validateState(input));
  }

  const ValidState._(this.value);
}
