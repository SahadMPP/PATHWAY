part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userlogin({
    required String emailController,
    required String passwordController,
    required BuildContext context,
  }) = _userlogin;

  const factory AuthEvent.registerUser({
    required String nameController,
    required String emailController,
    required String passwordController,
    required BuildContext context,
  }) = _registerUser;
  const factory AuthEvent.directionSelection() = _directionSelection;
}
