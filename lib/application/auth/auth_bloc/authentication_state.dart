part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = Initial;
  const factory AuthenticationState.firstTimeUser() = FirstTimeUser;
  const factory AuthenticationState.moreInfoPhone(User user) = MoreInfoPhone;
  const factory AuthenticationState.moreInfoGoogle(User user) = MoreInfoGoogle;
  const factory AuthenticationState.authenticated({User user, DeviceId deviceId, UserSettings userSettings}) = Authenticated;
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
}






