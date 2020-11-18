import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/user_reputation/user_reputation.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_reputation_dtos.freezed.dart';
part 'user_reputation_dtos.g.dart';

@immutable
@freezed
abstract class UserReputationDto implements _$UserReputationDto {
  const UserReputationDto._();

  const factory UserReputationDto({
    @required int five,
    @required int four,
    @required int three,
    @required int two,
    @required int one,
    @required double reputation,
  }) = _UserReputationDto;

  factory UserReputationDto.fromDomain(UserReputation userReputation) =>
      UserReputationDto(
        five: userReputation.numOf5Stars,
        four: userReputation.numOf4Stars,
        three: userReputation.numOf3Stars,
        two: userReputation.numOf2Stars,
        one: userReputation.numOf1Stars,
        reputation: userReputation.reputation.getOrCrash(),
      );

  UserReputation toDomain() => UserReputation(
        numOf5Stars: five,
        numOf4Stars: four,
        numOf3Stars: three,
        numOf2Stars: two,
        numOf1Stars: one,
        reputation: ReputationPoints(reputation),
      );

  factory UserReputationDto.fromJson(Map<String, dynamic> json) =>
      _$UserReputationDtoFromJson(json);
}
