part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool lettercondition,
    required bool directionValue,
    required String directionText,
  }) = _AuthState;
  factory AuthState.initial() {
    return const AuthState(
        directionValue: true, directionText: "Student", lettercondition: false);
  }
}
