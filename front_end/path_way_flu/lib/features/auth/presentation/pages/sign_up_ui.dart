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
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formkey,
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
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      letterSpacing: .3,
                    ),
                  ),
                  const SizedBox(height: 40),
                  BuilderTextField(
                      prifixIcon: Icons.person,
                      controller: nameController,
                      hintText: "Enter your name",
                      validationText: "Enter your name",
                      sufixIcon: false),
                  const SizedBox(height: 20),
                  BuilderTextField(
                      prifixIcon: Icons.email,
                      controller: emailController,
                      hintText: "Enter your email",
                      validationText: "Enter your email",
                      sufixIcon: false),
                  const SizedBox(height: 20),
                  BuilderTextField(
                      prifixIcon: Icons.lock_open,
                      controller: passwordController,
                      hintText: "Enter password",
                      validationText: "Enter your password",
                      sufixIcon: true),
                  const SizedBox(height: 20),
                  const BuilderTextField(
                    prifixIcon: Icons.lock_open,
                    hintText: "Conform password",
                    sufixIcon: true,
                    validationText: "Enter your password",
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(right: 140),
                    child: Text(
                      'Password must be 8 character',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        letterSpacing: .5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  BuildButton(
                    text: "SIGN UP",
                    fun: () {
                      if (formkey.currentState!.validate()) {
                        // ignore: use_build_context_synchronously
                        context.read<AuthBloc>().add(AuthEvent.registerUser(
                              nameController: nameController.text,
                              emailController: emailController.text,
                              passwordController: passwordController.text,
                              context: context,
                            ));
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (ctx) => ForgetPasswordScreen(
                        //           email: emailController,
                        //           textToCheck: "varifymail",
                        //           name: nameController,
                        //           password: passwordController,
                        //         )));
                      }
                    },
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already an account ',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          letterSpacing: .5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.green[500],
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            letterSpacing: .5,
                          ),
                        ),
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
      ),
    );
  }
}
