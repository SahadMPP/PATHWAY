import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Sign up now',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Please fill the deatiles and create account',
                  style: GoogleFonts.aBeeZee(
                    color: const Color.fromARGB(255, 134, 134, 134),
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                    letterSpacing: .3,
                  ),
                ),
                const SizedBox(height: 40),
                BuilderTextField(
                    controller: nameController,
                    hintText: "Enter your name",
                    obscuretext: false,
                    sufixIcon: false),
                const SizedBox(height: 20),
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
                const SizedBox(height: 20),
                const BuilderTextField(
                    hintText: "Conform password",
                    obscuretext: true,
                    sufixIcon: true),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(right: 140),
                  child: Text(
                    'Password must be 8 character',
                    style: GoogleFonts.roboto(
                      color: const Color.fromARGB(255, 77, 77, 77),
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      letterSpacing: .5,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                BuildButton(
                  text: "SIGN UP",
                  fun: () => context.read<AuthBloc>().add(
                      AuthEvent.registerUser(
                          nameController: nameController.text,
                          emailController: emailController.text,
                          passwordController: passwordController.text)),
                ),
                const SizedBox(height: 30),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Already an account  ',
                      style: GoogleFonts.roboto(
                        color: const Color.fromARGB(255, 77, 77, 77),
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        letterSpacing: .5,
                      )),
                  TextSpan(
                      text: 'Sign in',
                      style: GoogleFonts.roboto(
                        color: Colors.green,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        letterSpacing: .5,
                      )),
                ])),
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
