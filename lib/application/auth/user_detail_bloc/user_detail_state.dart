part of 'user_detail_bloc.dart';

@freezed
@immutable
abstract class UserDetailState implements _$UserDetailState {
  const factory UserDetailState({
    @required User user,
    @required ValidUserName firstName,
    @required ValidUserName lastName,

    @required DeviceId deviceId,
    @required bool showErrorMessage,
    @required bool initialAuthFailed,
    @required bool newUserInfoUpdated,
    @required bool isSubmitting,
    @required bool isEditing,
    @required Option<Either<DatabaseFailure, bool>> saveFailureOrSuccessOption,
  }) = _UserDetailState;

  factory UserDetailState.initial() {
    return UserDetailState(
      user: User.empty(),
      lastName: ValidUserName('xyz'),
      firstName: ValidUserName('xyz'),
      deviceId: DeviceId.empty(),
      showErrorMessage: false,
      newUserInfoUpdated: false,
      isSubmitting: false,
      isEditing: false,
      saveFailureOrSuccessOption: none(),
      initialAuthFailed: false,
    );
  }
}
