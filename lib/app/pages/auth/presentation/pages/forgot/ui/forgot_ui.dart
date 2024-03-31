import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/forgot/bloc/forgot_bloc.dart';
import 'package:path_way_flu/app/pages/student/widgets/isloading_button.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/widget/text_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController? name;
  final TextEditingController? password;
  final String textToCheck;
  final String directiontext;
  const ForgetPasswordScreen(
      {super.key,
      required this.email,
      required this.textToCheck,
      this.name,
      this.password,
      required this.directiontext});

  @override
  Widget build(BuildContext context) {
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
                BlocBuilder<ForgotBloc, ForgotState>(
                  builder: (context, state) {
                    return BuildLoaderButton(
                      defultText: textToCheck == "Forgot"
                          ? "Resent Password"
                          : "verify",
                      function: () {
                        if (formkey.currentState!.validate()) {
                          context.read<ForgotBloc>().add(
                              ForgotEvent.callForEmailEvent(
                                  context: context,
                                  email: email,
                                  name: name,
                                  password: password,
                                  textToCheck: textToCheck,
                                  directiontext: directiontext));
                        } else {
                          debugPrint("Authenticaton Error");
                        }
                      },
                      isLoading: state.isLoading,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
