import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/text_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                Text(
                  'Forgot Password',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 15),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                    minWidth: 300,
                  ),
                  child: Text(
                    'Enter your email account to reset your password',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                      color: const Color.fromARGB(255, 134, 134, 134),
                      fontWeight: FontWeight.w300,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const BuilderTextField(
                    hintText: "Enter your email",
                    obscuretext: false,
                    sufixIcon: false),
                const SizedBox(height: 30),
                BuildButton(
                    text: "Resent Password",
                    fun: () {
                      PanaraInfoDialog.show(
                        context,
                        imagePath: 'asset/download (4).png',
                        title: "Check your email",
                        message:
                            "We have send password recovery instrection in your email",
                        buttonText: "Okay",
                        onTapDismiss: () {
                          Navigator.pop(context);
                        },
                        panaraDialogType: PanaraDialogType.normal,
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
