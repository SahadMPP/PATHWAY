// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/features/auth/data/repositories/api.dart';

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

    on<_registerUser>((event, emit) {
      if (state.directionText == "Student") {
        final data = {
          "name": event.nameController,
          "email": event.emailController,
          "password": event.passwordController,
        };
        AuthApi.addStudent(data, event.context);
      } else if (state.directionText == "Teacher") {
        final data = {
          "name": event.nameController,
          "email": event.emailController,
          "password": event.passwordController,
        };
        AuthApi.addTeacher(data, event.context);
      } else {
        debugPrint("directon is not found");
      }
    });

    on<_userlogin>((event, emit) {
      if (state.directionText == "Student") {
        final data = {
          "email": event.emailController,
          "password": event.passwordController,
        };
        AuthApi.loginStudent(data, event.context);
      } else if (state.directionText == "Teacher") {
        final data = {
          "email": event.emailController,
          "password": event.passwordController,
        };
        AuthApi.loginTeacher(data, event.context);
      } else {
        debugPrint("directon is not found");
      }
    });
  }
}
