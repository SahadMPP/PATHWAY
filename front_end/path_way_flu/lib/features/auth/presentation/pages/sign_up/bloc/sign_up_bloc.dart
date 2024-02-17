import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/features/auth/data/repositories/api.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState.initial()) {
    on<_registerUser>((event, emit) {
      if (event.directionText == "Student") {
        final data = {
          "name": event.nameController,
          "email": event.emailController,
          "password": event.passwordController,
        };
        AuthApi.addStudent(data, event.context);
      } else if (event.directionText == "Teacher") {
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
  }
}
