// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState.initial()) {
       on<_userlogin>((event, emit) {
      if (event.directionText == "Student") {
        final data = {
          "email": event.emailController,
          "password": event.passwordController,
        };
        AuthApi.loginStudent(data, event.context);
      } else if (event.directionText == "Teacher") {
        final data = {
          "email": event.emailController,
          "password": event.passwordController,
        };
        AuthApi.loginTeacher(data, event.context);
      } else {
        debugPrint("Directon is not found");
      }
    });

  }
}
