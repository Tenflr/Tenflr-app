import 'package:dartz/dartz.dart';
import 'package:tenflrpay/domain/core/constant_list.dart';
import 'package:tenflrpay/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.trim().length <= maxLength) {
    return right(input.trim());
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateSavingStatus(String input) {
  if (savingStatusList.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidStatus(
      failedValue: input,
    ));
  }
}

Either<ValueFailure<String>, String> validateBudgetStatus(String input) {
  if (budgetStatusList.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidStatus(
      failedValue: input,
    ));
  }
}

Either<ValueFailure<String>, String> validatePaymentStatus(String input) {
  if (paymentStatusList.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidStatus(
      failedValue: input,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.trim().isNotEmpty) {
    return right(input.trim());
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input.trim());
  }
}

Either<ValueFailure<String>, String> validateAccountName(String input) {
  const userNameRegex =
       r"""^(?=[A-Za-zÀ-ÖØ-öø-ÿ0-9._]{2,20}$)(?!.*[_.]{2})|(?=[A-Za-zÀ-ÖØ-öø-ÿ0-9._]{2,20}$)(?!.*[_.]{2})[^_.].*[^_.]$""";
  if (RegExp(userNameRegex).hasMatch(input.trim())) {
    return right(input.trim());
  } else {
    return left(ValueFailure.invalidAccountName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateTransactionType(String input) {
  
  if (transactionTypeList.contains(input)) {
    return right(input.trim());
  } else {
    return left(ValueFailure.invalidTransactionType(failedValue: input));
  }
}


Either<ValueFailure<double>, double> validateMoneyAmount(double input) {
  if (input >= 0 && input < double.infinity) {
    return right(input);
  } else {
    return left(ValueFailure.invalidMoneyAmount(failedValue: input));
  }
}

Either<ValueFailure<double>, double> validateStatsAmount(double input) {
  if (input >= 0) {
    if (input > 24000) {
      return right(24000);
    }
    return right(input);
  } else {
    return left(ValueFailure.invalidMoneyAmount(failedValue: input));
  }
}

Either<ValueFailure<DateTime>, DateTime> validateDate(DateTime input,
    {DateTime minDate}) {
  if (minDate != null && input.isAfter(minDate) ||
      input.isAtSameMomentAs(DateTime.now()) ||
      input.isAfter(DateTime.now())) {
    return right(input);
  } else if (input.isBefore(DateTime.now())) {
    return right(DateTime.now());
  } else {
    return left(ValueFailure.invalidDate(failedValue: input));
  }
}

Either<ValueFailure<DateTime>, DateTime> validateDateOfBirth(DateTime input,
    {DateTime minDate}) {
  if (minDate != null) {
    return right(input);
  } else if (input.isBefore(DateTime.now())) {
    return right(DateTime.now());
  } else {
    return left(ValueFailure.invalidDate(failedValue: input));
  }
}

Either<ValueFailure<Duration>, Duration> validateDuration(Duration input) {
  if (input.inSeconds < 1) {
    return right(const Duration(seconds: 0));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validatePayoutMode(String input) {
  if (!payoutModeList.contains(input)) {
    return left(ValueFailure.payoutModeNotSelected(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input.trim()) || input == '') {
    return right(input.trim());
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhone(String input) {
  //  String phoneNumber;
  // PhoneNumber.getRegionInfoFromPhoneNumber(input,  'CM').then((value) => phoneNumber = value.phoneNumber);
  if (input != null && input.length == 13) {
    return right(input.trim());
  } else {
    return left(ValueFailure.phoneNumberNotSupported(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSubscriptionMode(String input) {
  if (input == '') {
    return right(subscriptionModeList[0]);
  } else if (subscriptionModeList.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidSubscriptionMode(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateNames(String input) {
  const userNameRegex =
      r"""^(?=[A-Za-zÀ-ÖØ-öø-ÿ0-9._]{2,20}$)(?!.*[_.]{2})|(?=[A-Za-zÀ-ÖØ-öø-ÿ0-9._]{2,20}$)(?!.*[_.]{2})[^_.].*[^_.]$""";
  if (RegExp(userNameRegex).hasMatch(input.trim())) {
    return right(input.trim());
  } else {
    return left(ValueFailure.invalidNames(failureValue: input));
  }
}

Either<ValueFailure<String>, String> validateUserName(String input) {
  const userNameRegex =
      r"""^(?=[A-Za-zÀ-ÖØ-öø-ÿ0-9._]{2,20}$)(?!.*[_.]{2})[^_.].*[^_.]$""";
  // [A-Za-zÀ-ÖØ-öø-ÿ]
  if (RegExp(userNameRegex).hasMatch(input.trim())) {
    return right(input.trim());
  } else {
    return left(ValueFailure.invalidUserName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSecurityAnswer(
    String input, int maxLength) {
  if (input == '') {
    // Return english as default language if none is passed
    return right('');
  } else if (!input.contains('\n') && input.trim().length <= maxLength) {
    return right(input.trim());
  } else {
    return left(
        ValueFailure.invalidSecurityAnswer(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<double>, double> validateReputaion(double input) {
  if (input >= -1 && input <= 5) {
    return right(input);
  } else {
    return left(ValueFailure.invalidReputation(
      failedValue: input,
    ));
  }
}

Either<ValueFailure<String>, String> validateSecurityQuestion(
    String input, int maxLength) {
  if (input == '') {
    // Return english as default language if none is passed
    return right('');
  } else if (!input.contains('\n') && input.trim().length <= maxLength) {
    return right(input.trim());
  } else {
    return left(ValueFailure.invalidSecurityQuestion(
        failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateDefaultLanguage(String input) {
  if (input == '') {
    // Return english as default language if none is passed
    return right('en');
  } else if (suportedLanguagesList.contains(input)) {
    return right(input.trim());
  } else {
    return left(ValueFailure.invalidDefaultLanguage(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUserPin(String input) {
  if (input == '') {
    // Return english as default language if none is passed
    return right('0000');
  } else if (input.trim().length == 4 && double.tryParse(input) != null) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUserPin(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateAddress(String input) {
  const String addressRegex =
      r"""^(?=[A-Za-zÀ-ÖØ-öø-ÿ0-9._0-9._]{2,20}$)(?!.*[_.]{2})|(?=[A-Za-zÀ-ÖØ-öø-ÿ0-9._0-9._]{2,20}$)(?!.*[_.]{2})[^_.].*[^_.]$""";

  if (RegExp(addressRegex).hasMatch(input) || input == '') {
    return right(input.trim());
  } else {
    return left(ValueFailure.invalidAddress(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateState(String input) {
  // TOFIX: using userName regex for the moment to valide state
  const String stateRegex =
      r"""^(?=[A-Za-zÀ-ÖØ-öø-ÿ0-9._0-9._]{2,20}$)(?!.*[_.]{2})[^_.].*[^_.]$""";
  if (RegExp(stateRegex).hasMatch(input.trim()) || input == '') {
    return right(input.trim());
  } else {
    return left(ValueFailure.invalidState(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateCity(String input) {
  const String cityRegex =
      r"""^[A-Za-zÀ-ÖØ-öø-ÿ]+(?:[\s-][A-Za-zÀ-ÖØ-öø-ÿ]+)*$""";
  if (RegExp(cityRegex).hasMatch(input.trim()) || input == '') {
    return right(input.trim());
  } else {
    return left(ValueFailure.invalidCity(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateZipCode(String input) {
  const String zipRegex =
      r"""/^ *((#\d+)|((box|bin)[-. \/\\]?\d+)|(.*p[ \.]? ?(o|0)[-. \/\\]? *-?((box|bin)|b|(#|num)?\d+))|(p(ost)? *(o(ff(ice)?)?)? *((box|bin)|b)? *\d+)|(p *-?\/?(o)? *-?box)|post office box|((box|bin)|b) *(number|num|#)? *\d+|(num|number|#) *\d+)/""";
  if (RegExp(zipRegex).hasMatch(input.toString().trim()) ||
      input == '' ||
      int.tryParse(input) > 0) {
    return right(input.trim());
  } else {
    return left(ValueFailure.invalidZipCode(failedValue: input));
  }
}

// const List<String> StatusList = ["locked", "unlocked"];
