import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_up/ui/signup.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/widget/text_field_email.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/widget/text_field_password.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/button_buil.dart';

class SignDeskLayOut extends StatelessWidget {
  final String directiontext;

  const SignDeskLayOut({super.key, required this.directiontext});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/images/thumb-1920-877669.jpg"),
                    fit: BoxFit.fill)),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 500,
                width: MediaQuery.of(context).size.width*.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  dragStartBehavior: DragStartBehavior.start,
                  padding: const EdgeInsets.all(8),
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        Text(
                          'Sign in now',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Please sign to continue our App',
                          textAlign: TextAlign.center,
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
                                height: 50,
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
                                height: 50,
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
                        const SizedBox(height: 50),
                        SizedBox(
                          height: 45,
                          width: 220,
                          child: BuildButton(
                            text: "SIGN IN",
                            fun: () {
                              if (formkey.currentState!.validate()) {
                                context.read<SignInBloc>().add(
                                    SignInEvent.userlogin(
                                        directionText: directiontext,
                                        emailController:
                                            emailController.text.trim(),
                                        passwordController:
                                            passwordController.text.trim(),
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
                                    builder: (ctx) => SignUp(
                                        directiontext: directiontext)));
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
                            radius: 20,
                            backgroundImage:
                                AssetImage('asset/google icon.png'),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Your",style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 26,
                    letterSpacing: 1.5,
                  ),),
                  Text("Lesson Now",style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 26,
                    letterSpacing: 1.5,
              
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
