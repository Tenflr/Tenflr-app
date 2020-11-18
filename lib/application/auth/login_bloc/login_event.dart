part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.phoneNumberChanged(ValidPhoneNumber phoneNumber) = _PhoneNumberChanged;
  const factory LoginEvent.loginWithGooglePressed() = _LoginWithGooglePressed;
  const factory LoginEvent.loginWithPhonePressed() = _LoginWithPhonePressed;
  const factory LoginEvent.verifyOTP({@required String otp}) = _VerifyOTP;
  const factory LoginEvent.triggerOtpVerification() = _TriggerOtpVerification;
  const factory LoginEvent.setVerificationId({@required String verId}) = _SetVerificaitonId;
  const factory LoginEvent.cancelledByUser() = _CancelledByUser;
  const factory LoginEvent.phoneVerificationFailed() = _PhoneVerificationFailed;
}

