part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required bool isLoading
  }) = _SignInState;
  factory SignInState.initial(){
    return const SignInState(isLoading: false);
  }
}
