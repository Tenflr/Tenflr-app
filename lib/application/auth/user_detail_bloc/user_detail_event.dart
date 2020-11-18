part of 'user_detail_bloc.dart';

@freezed
@immutable
abstract class UserDetailEvent with _$UserDetailEvent {
  const factory UserDetailEvent.initialize(User user) =
      _Initialized;
  
  const factory UserDetailEvent.phoneNumberChanged(
      {@required ValidPhoneNumber phoneNumber}) = _PhoneNumberChangedE;
      const factory UserDetailEvent.emailChanged(
      {@required EmailAddress email}) = _EmailChangedE;
 
  const factory UserDetailEvent.firstNameChanged(
      {@required ValidUserName firstName}) = _FirstNameChangedE;
  const factory UserDetailEvent.lastNameChanged(
      {@required ValidUserName lastName}) = _LastNameChangedE;
 
  const factory UserDetailEvent.submit() = _Summited;
}
