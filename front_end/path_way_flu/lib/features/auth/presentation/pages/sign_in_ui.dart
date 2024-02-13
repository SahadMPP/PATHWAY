import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/admin/presentation/widgets/admin_bottom_navi.dart';
import 'package:path_way_flu/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:path_way_flu/features/auth/presentation/pages/forgot_ui.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_up_ui.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/text_field.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/text_field_password.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 80),
                Text(
                  'Sign in now',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Please sign to continue our app',
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                    letterSpacing: .3,
                  ),
                ),
                const SizedBox(height: 40),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      BuilderTextField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter your email";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {
                            context.read<AuthBloc>().add(
                                AuthEvent.emailvalidationintext(value: value));
                          },
                          prifixIcon: Icons.mail,
                          validationText: "Enter your email",
                          controller: emailController,
                          hintText: "Enter your email",
                          sufixIcon: false),
                      const SizedBox(height: 20),
                      BuilderTextFieldPass(
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
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => ForgetPasswordScreen(
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
                BuildButton(
                  text: "SIGN IN",
                  fun: () {
                    if (emailController.text == "admin@gmail.com" &&
                        passwordController.text == "12345") {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (ctx) => const AdminBotmNavi()),
                          (route) => false);
                    } else {
                      if (formkey.currentState!.validate()) {
                        context.read<AuthBloc>().add(AuthEvent.userlogin(
                            emailController: emailController.text.trim(),
                            passwordController: passwordController.text.trim(),
                            context: context));
                      }
                    }
                  },
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have any account?  ',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          letterSpacing: .5,
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const SignUpScreen()));
                      },
                      child: Text('Sign Up',
                          style: GoogleFonts.roboto(
                            color: Colors.blue,
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
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
                    fontSize: 16,
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
