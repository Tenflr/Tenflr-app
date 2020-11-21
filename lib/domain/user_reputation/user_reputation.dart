import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failures.dart';
import '../core/valid_objects.dart';

part 'user_reputation.freezed.dart';

@immutable
@freezed
abstract class UserReputation implements _$UserReputation {
  const UserReputation._();
  const factory UserReputation({
   int numOf5Stars,
   int numOf4Stars,
   int numOf3Stars,
   int numOf2Stars,
   int numOf1Stars,
    @required ReputationPoints reputation,
  }) = _UserReputation;

  factory UserReputation.newUser() => UserReputation(
        numOf5Stars: 0,
        numOf4Stars: 0,
        numOf3Stars: 0,
        numOf2Stars: 0,
        numOf1Stars: 0,
        reputation: ReputationPoints(
            -1), // -1 indicates that the user has never been rated
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return reputation.failureOrUnit.fold((l) => some(l), (r) => none());
  }
}
