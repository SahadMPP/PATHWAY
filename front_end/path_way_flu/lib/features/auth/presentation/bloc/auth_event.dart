part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkTheUserLoginedOrNot() =
      _checkTheUserLoginedOrNot;
  const factory AuthEvent.checkTheUserlogin() = _checkTheUserlogin;
  const factory AuthEvent.registerUser() = _registerUser;
  const factory AuthEvent.directionSelection() = _directionSelection;
}
