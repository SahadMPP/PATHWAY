import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:path_way_flu/features/auth/presentation/pages/otp_screen.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/text_field.dart';
import 'package:email_otp/email_otp.dart';

class ForgetPasswordScreen extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController? name;
  final TextEditingController? password;
  final String textToCheck;
  const ForgetPasswordScreen(
      {super.key,
      required this.email,
      required this.textToCheck,
      this.name,
      this.password});

  @override
  Widget build(BuildContext context) {
    EmailOTP myAuth = EmailOTP();
    TextEditingController emailController = TextEditingController();
    emailController = email;
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                textToCheck == "Forgot"
                    ? Text(
                        'Forgot Password',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                        ),
                      )
                    : Text(
                        'Verify Mail',
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
                    child: textToCheck == "Forgot"
                        ? Text(
                            'Enter your email account to reset your password',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.aBeeZee(
                              color: const Color.fromARGB(255, 134, 134, 134),
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                            ),
                          )
                        : Text(
                            'Enter your email account for verification',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.aBeeZee(
                              color: const Color.fromARGB(255, 134, 134, 134),
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                            ),
                          )),
                const SizedBox(height: 40),
                Form(
                  key: formkey,
                  child: BuilderTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your email";
                        } else {
                          return null;
                        }
                      },
                      prifixIcon: Icons.mail,
                      controller: emailController,
                      validationText: "Enter your email",
                      hintText: "Enter your email",
                      sufixIcon: false),
                ),
                const SizedBox(height: 30),
                BuildButton(
                    text:
                        textToCheck == "Forgot" ? "Resent Password" : "verify",
                    fun: () async {
                      if (formkey.currentState!.validate()) {
                        myAuth.setConfig(
                            appEmail: "pathWay@sahadmpdev.com",
                            appName: "PathWay OTP Validation",
                            userEmail: email.text,
                            otpLength: 4,
                            otpType: OTPType.digitsOnly);

                        if (await myAuth.sendOTP() == true) {
                          debugPrint("working");

                          // ignore: use_build_context_synchronously
                          PanaraInfoDialog.show(
                            context,
                            imagePath: 'asset/download (4).png',
                            title: "Check your email",
                            message:
                                "We have send code in your email for futher verification",
                            buttonText: "Okay",
                            onTapDismiss: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => OtpScreen(
                                            textToCheck: textToCheck,
                                            myAuth: myAuth,
                                            emailtext: email.text,
                                            name: name!.text,
                                            password: password!.text,
                                          )));
                            },
                            panaraDialogType: PanaraDialogType.normal,
                          );
                        } else {
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Oops, OTP send failed'),
                          ));
                        }
                      } else {
                        debugPrint("Authenticaton Error");
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
