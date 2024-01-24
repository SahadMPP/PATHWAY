import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<_directionSelection>((event, emit) {
      if (state.directionValue == true) {
        emit(state.copyWith(directionValue: false, directionText: "Teacher"));
      } else {
        emit(state.copyWith(directionValue: true, directionText: "Student"));
      }
    });
  }
}
