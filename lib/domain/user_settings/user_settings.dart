import '../core/failures.dart';
import '../core/valid_objects.dart';
import '../security_question/security_question.dart';
import '../user_address/user_address.dart';
import '../user_reputation/user_reputation.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings.freezed.dart';

@freezed
abstract class UserSettings implements _$UserSettings {
  const UserSettings._();

  const factory UserSettings({
    @required UserAddress userAddress,
    @required DefaultLanguage defaultLanguage,
    @required bool smartFundsUsage,
    @required bool enable2FA,
    @required UserPin userPin,
    @required SecurityQuestion securityQuestion,
    @required ValidDateOfBirth dateOfBirth,
    @required UserReputation userReputation,
    @required SubscriptionMode subscriptionMode,
    @required bool lockEntireApp,
  }) = _UserSettings;

  factory UserSettings.empty() => UserSettings(
        userAddress: UserAddress.empty(),
        defaultLanguage: DefaultLanguage('en'),
        smartFundsUsage: true,
        userReputation: UserReputation.newUser(),
        enable2FA: false,
        userPin: UserPin('2580'),
        securityQuestion: SecurityQuestion.empty(),
        dateOfBirth: ValidDateOfBirth(DateTime.now()),
        subscriptionMode: SubscriptionMode(''),
        lockEntireApp: true,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return userReputation.reputation.failureOrUnit
        .andThen(userPin.failureOrUnit)
        // .andThen(addre)
        .fold((l) => some(l), (r) => none());
  }
}
