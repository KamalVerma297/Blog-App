part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp(String name, String email, String password) =
      _SignUp;
  const factory AuthEvent.login(String email, String password) = _Login;
}
