part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
    const factory SignUpEvent.registerUser({
    required String nameController,
    required String emailController,
    required String passwordController,
    required BuildContext context,
    required String directionText,

  }) = _registerUser;

}