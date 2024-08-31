part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.clear() = _Clear;
  const factory AuthEvent.checkSession() = _CheckSession;
  const factory AuthEvent.signIn(SignInParams params) = _SignIn;
  const factory AuthEvent.signUp(SignUpParams params) = _SignUp;
  const factory AuthEvent.signOut() = _SignOut;
}
