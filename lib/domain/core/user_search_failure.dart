import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_search_failure.freezed.dart';
@freezed 
@immutable
abstract class UserSearchFailure with _$UserSearchFailure{
  const factory UserSearchFailure.userNotFound() = _UserNotFound;
  const factory UserSearchFailure.userNotActive() = _UserNotActive;
}