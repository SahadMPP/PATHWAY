import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/forgot/ui/forgot_ui.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_up/ui/signup.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/widget/text_field_email.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/widget/text_field_password.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/button_buil.dart';

class SignTebLayOut extends StatelessWidget {
  final String directiontext;

  const SignTebLayOut({super.key, required this.directiontext});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey[300]!, blurRadius: 5),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(height: 80),
                Text(
                  'Sign in now',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Please sign to continue our app',
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    letterSpacing: .3,
                  ),
                ),
                const SizedBox(height: 40),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300,
                        child: BuilderTextFieldEmail(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter your email";
                            } else {
                              return null;
                            }
                          },
                          prifixIcon: Icons.mail,
                          controller: emailController,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 300,
                        child: BuilderTextFieldPass(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your password";
                              } else {
                                return null;
                              }
                            },
                            prifixIcon: Icons.lock_open,
                            validationText: "Enter your password",
                            controller: passwordController,
                            hintText: "Enter password",
                            sufixIcon: true),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => ForgetPasswordScreen(
                              directiontext: directiontext,
                              email: emailController,
                              textToCheck: "Forgot",
                            ))),
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.roboto(
                        color: Colors.red[300],
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: 250,
                  child: BuildButton(
                    text: "SIGN IN",
                    fun: () {
                      if (formkey.currentState!.validate()) {
                        context.read<SignInBloc>().add(SignInEvent.userlogin(
                            directionText: directiontext,
                            emailController: emailController.text.trim(),
                            passwordController: passwordController.text.trim(),
                            context: context));
                      }
                    },
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have any account?  ',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          letterSpacing: .5,
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) =>
                                SignUp(directiontext: directiontext)));
                      },
                      child: Text('Sign Up',
                          style: GoogleFonts.roboto(
                            color: Colors.blue,
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            letterSpacing: .5,
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Or connect',
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    letterSpacing: .5,
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('asset/google icon.png'),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
