part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @required ValidPhoneNumber phoneNumber,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool newUserCreated,
    @required bool newUserCouldNotBeCreated,
    @required bool isEditing,
    @required bool otpSent,
    @required String verId,
    @required bool oldUserReturned,
    @required bool otpVerified,
    @required User user,
    @required Option<Either<AuthFailure, bool>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        user: User.empty(),
        phoneNumber: ValidPhoneNumber(''),
        showErrorMessages: false,
        oldUserReturned: false,
        isEditing: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        otpSent: false,
        verId: '',
        otpVerified: false,
        newUserCouldNotBeCreated: false,
        newUserCreated: false,
      );
}
