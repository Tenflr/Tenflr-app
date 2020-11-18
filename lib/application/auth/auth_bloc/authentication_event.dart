part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthenticationEvent.signedOut() = SignedOut;
}

// abstract class AuthenticationEvent extends Equatable {
//   const AuthenticationEvent();
//   @override
//   List<Object> get props => [];
// }

// class AppStarted extends AuthenticationEvent {}

// class LoggedIn extends AuthenticationEvent {
//   final User user;

//   LoggedIn({@required this.user}) : assert(user != null);

//   @override
//   List<Object> get props => [user];
// }

// class LoggedOut extends AuthenticationEvent {}

// class GoToSignInPageE extends AuthenticationEvent {}
// class GoToSignUpPageE extends AuthenticationEvent {}
// class FirstTimeUserE extends AuthenticationEvent{}
// class GoToSettingsPageE extends AuthenticationEvent{
//   final User user;

//   const GoToSettingsPageE(this.user);

//   @override
//   List<Object> get props => [user];

//   @override
//   String toString() => 'GotoSettingsPageEvent { userId: ${user.uid} }';
// }
