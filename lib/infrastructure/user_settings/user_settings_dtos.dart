import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/valid_objects.dart';
import '../../domain/user_settings/user_settings.dart';
import '../security_question/security_question_dtos.dart';
import '../user_address/user_address_dtos.dart';
import '../user_reputation/user_reputation_dtos.dart';

part 'user_settings_dtos.freezed.dart';
part 'user_settings_dtos.g.dart';

@immutable
@freezed
abstract class UserSettingsDto implements _$UserSettingsDto {
  const UserSettingsDto._();

  const factory UserSettingsDto({
    @required Map<String, dynamic> addr, // userAddress
    @required String dLang, // defaultName
    @required bool sfu, // smartFundsUsage
    @required bool twoFA, // enable2FA
    @required String pin, // userPin
    @required Map<String, dynamic> secQues, // securityQuestion
    @required DateTime dOB, // date of birth
    @required Map<String, dynamic> rep, //user reputation
    @required String subMode, // subscription Mode
    @required bool lApp, //lockApp
  }) = _UserSettingsDto;

  factory UserSettingsDto.fromDomain(UserSettings userSettings) =>
      UserSettingsDto(
        addr: UserAddressDto.fromDomain(userSettings.userAddress).toJson(),
        dLang: userSettings.defaultLanguage.getOrCrash(),
        sfu: userSettings.smartFundsUsage,
        rep: UserReputationDto.fromDomain(userSettings.userReputation).toJson(),
        twoFA: userSettings.enable2FA,
        pin: userSettings.userPin.getOrCrash(),
        secQues: SecurityQuestionDto.fromDomain(userSettings.securityQuestion)
            .toJson(),
        dOB: userSettings.dateOfBirth.getOrCrash(),
        subMode: userSettings.subscriptionMode.getOrCrash(),
        lApp: userSettings.lockEntireApp,
      );

  UserSettings toDomain() {
    return UserSettings(
      dateOfBirth: ValidDateOfBirth(dOB),
      defaultLanguage: DefaultLanguage(dLang),
      enable2FA: twoFA,
      lockEntireApp: lApp,
      securityQuestion: SecurityQuestionDto.fromJson(secQues).toDomain(),
      smartFundsUsage: sfu,
      subscriptionMode: SubscriptionMode(subMode),
      userAddress: UserAddressDto.fromJson(addr).toDomain(),
      userPin: UserPin(pin),
      userReputation: UserReputationDto.fromJson(rep).toDomain(),
    );
  }

  factory UserSettingsDto.fromJson(Map<String, dynamic> jsonRaw) =>
      _$UserSettingsDtoFromJson(
          jsonDecode(jsonEncode(jsonRaw)) as Map<String, dynamic>);

  factory UserSettingsDto.fromFirestore(DocumentSnapshot doc) {
    return UserSettingsDto.fromJson(doc.data);
  }
}
