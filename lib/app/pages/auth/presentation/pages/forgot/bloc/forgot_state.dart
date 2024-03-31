part of 'forgot_bloc.dart';

@freezed
class ForgotState with _$ForgotState {
  const factory ForgotState({
    required bool isLoading,
  }) = _ForgotState;

 factory ForgotState.initial(){
    return const ForgotState(isLoading: false);
  }
}
