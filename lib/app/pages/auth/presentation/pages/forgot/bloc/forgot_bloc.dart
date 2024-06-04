// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/otp_screen.dart';

part 'forgot_event.dart';
part 'forgot_state.dart';
part 'forgot_bloc.freezed.dart';

class ForgotBloc extends Bloc<ForgotEvent, ForgotState> {
  EmailOTP myAuth = EmailOTP();
  ForgotBloc() : super(ForgotState.initial()) {
    on<_callForEmailEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      myAuth.setConfig(
          appEmail: "pathWay@sahadmpdev.com",
          appName: "PathWay OTP Validation",
          userEmail: event.email.text,
          otpLength: 4,
          otpType: OTPType.digitsOnly);

      if (await myAuth.sendOTP() == true) {
        debugPrint("working");
        emit(state.copyWith(isLoading: false));
        // ignore: use_build_context_synchronously
        PanaraInfoDialog.show(
          // ignore: use_build_context_synchronously
          event.context,
          imagePath: 'asset/download (4).png',
          title: "Check your email",
          message: "We have send code in your email for futher verification",
          buttonText: "Okay",
          onTapDismiss: () {
            Navigator.push(
                event.context,
                MaterialPageRoute(
                    builder: (ctx) => OtpScreen(
                          directiontext: event.directiontext,
                          textToCheck: event.textToCheck,
                          myAuth: myAuth,
                          emailtext: event.email.text,
                          name: event.name!.text,
                          password: event.password!.text,
                        )));
          },
          panaraDialogType: PanaraDialogType.normal,
        );
      } else {
        emit(state.copyWith(isLoading: false));
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
          content: Text('Oops, OTP send failed'),
        ));
      }
    });
  }
}
