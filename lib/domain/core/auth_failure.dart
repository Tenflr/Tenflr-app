import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUer;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.wrongPinEntered() = WrongPinEntered;
  const factory AuthFailure.userDisable() = UserDisabled;
  const factory AuthFailure.accountExistWithDifferentCredential() = AccountExistWithDifferentCredential;
  const factory AuthFailure.operationNotAllowed() = OperationNotAllowed;
  const factory AuthFailure.invalidAction() = InvalidAction;
  const factory AuthFailure.invalidCredential() = InvalidCredential;
  const factory AuthFailure.userCouldNotBeDeleted() = UserCouldNotBeDeleted;
  const factory AuthFailure.invalidVerificationCode() = InvalidVerificationCode;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.errorVerificationCode() = ErrorVerificationCode;
  const factory AuthFailure.phoneVerificationFailed() = PhoneVerificationFailed;
 const factory AuthFailure.unexpected() = _Unexpected;
  const factory AuthFailure.emailUsedOnAnotherDevice() = EmailUsedOnAnotherDevice;
  const factory AuthFailure.telUsedOnAnotherDevice() = TelUsedOnAnotherDevice;
    const factory AuthFailure.insufficientPermissions() = _InsuficientPermissions;
    const factory AuthFailure.userCouldNotBeCreated() = _UuserCouldNotBeCreated;
}
