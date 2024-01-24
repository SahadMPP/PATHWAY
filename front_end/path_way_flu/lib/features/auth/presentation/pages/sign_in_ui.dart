import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_up_ui.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
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
                    color: const Color.fromARGB(255, 134, 134, 134),
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                    letterSpacing: .3,
                  ),
                ),
                const SizedBox(height: 40),
                BuilderTextField(
                    controller: emailController,
                    hintText: "Enter your email",
                    obscuretext: false,
                    sufixIcon: false),
                const SizedBox(height: 20),
                BuilderTextField(
                    controller: passwordController,
                    hintText: "Enter password",
                    obscuretext: true,
                    sufixIcon: true),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: Text(
                    'Forget Password?',
                    style: GoogleFonts.roboto(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                BuildButton(
                  text: "SIGN IN",
                  fun: () => context.read<AuthBloc>().add(AuthEvent.userlogin(
                      emailController: emailController.text,
                      passwordController: passwordController.text,
                      context: context)),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have any account?  ',
                        style: GoogleFonts.roboto(
                          color: const Color.fromARGB(255, 77, 77, 77),
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
                  style: GoogleFonts.roboto(
                    color: const Color.fromARGB(255, 77, 77, 77),
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
