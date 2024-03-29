import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';
@freezed 


@immutable
abstract class UserFailure with _$UserFailure{
  const factory UserFailure.invalidUser() = _InvalidUser;
  const factory UserFailure.cancelledByUser() = _CancelByUser;
  const factory UserFailure.serverError() = _ServerError;

}