import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.shortAccountName({
    @required T failedValue,
  }) = ShortAccountName<T>;

  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidTransactionType({
    @required T failedValue,
  }) = InvalidTransactionType<T>;

  const factory ValueFailure.invalidUserName({
    @required T failedValue,
  }) = InvalidUserName<T>;

  const factory ValueFailure.invalidStatus({
    @required T failedValue,
  }) = InvalidStatus<T>;
  const factory ValueFailure.invalidNames({@required T failureValue}) =
      InvalidName<T>;

  const factory ValueFailure.phoneNumberNotSupported(
      {@required T failedValue}) = _PhoneNumberNotSupported<T>;
  const factory ValueFailure.invalidSubscriptionMode(
      {@required T failedValue}) = _InvalidSubscriptionMode<T>;
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.invalidAccountName({
    @required T failedValue,
  }) = InvalidAccountName<T>;

  const factory ValueFailure.invalidMoneyAmount({
    @required T failedValue,
  }) = InvalidMoneyAmount<T>;

  const factory ValueFailure.invalidDate({
    @required T failedValue,
  }) = InvalidDate<T>;

  const factory ValueFailure.invalidDuration({
    @required T failedValue,
  }) = InvalidDuration<T>;

  const factory ValueFailure.payoutModeNotSelected({
    @required T failedValue,
  }) = PayoutModeNoteSelected<T>;

  const factory ValueFailure.multiline({
    @required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.invalidAddress({
    @required T failedValue,
  }) = InvalidAddress<T>;

  const factory ValueFailure.invalidState({
    @required T failedValue,
  }) = InvalidState<T>;
  const factory ValueFailure.invalidCity({
    @required T failedValue,
  }) = InvalidCity<T>;
  const factory ValueFailure.invalidZipCode({
    @required T failedValue,
  }) = InvalidZipCode<T>;
  const factory ValueFailure.invalidDefaultLanguage({
    @required T failedValue,
  }) = InvalidDefaultLanguage<T>;

  const factory ValueFailure.invalidUserPin({
    @required T failedValue,
  }) = InvalidUserPin<T>;
  const factory ValueFailure.invalidSecurityAnswer({
    @required T failedValue,
    @required int max,
  }) = InvalidSecurityAnswer<T>;
  const factory ValueFailure.invalidReputation({
    @required T failedValue,
  }) = InvalidReputationPoint<T>;
  const factory ValueFailure.invalidSecurityQuestion({
    @required T failedValue,
    @required int max,
  }) = InvalidSecurityQuestion<T>;
}
