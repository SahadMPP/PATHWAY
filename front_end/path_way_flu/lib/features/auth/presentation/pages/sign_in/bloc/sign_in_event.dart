part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
   const factory SignInEvent.userlogin({
    required String emailController,
    required String passwordController,
    required BuildContext context,
    required String directionText,
  }) = _userlogin;
}