import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/forgot_ui.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_up/bloc/sign_up_bloc.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/widget/text_field.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/widget/text_field_email.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/widget/text_field_password.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/button_buil.dart';

class SignUpDeskLayOut extends StatelessWidget {
  final String directiontext;

  const SignUpDeskLayOut({super.key, required this.directiontext});

  @override
  Widget build(BuildContext context) {
     var nameController = TextEditingController();
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
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Text(
                    'Sign up now',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Please fill the deatiles and create Account',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      letterSpacing: .3,
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 45,
                    child: BuilderTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your name";
                          } else {
                            return null;
                          }
                        },
                        prifixIcon: Icons.person,
                        controller: nameController,
                        hintText: "Enter your name",
                        validationText: "Enter your name",
                        sufixIcon: false),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 45,

                    child: BuilderTextFieldEmail(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your Email";
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
                    height: 45,

                    child: BuilderTextFieldPass(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your password";
                          } else {
                            return null;
                          }
                        },
                        prifixIcon: Icons.lock_open,
                        controller: passwordController,
                        hintText: "Enter password",
                        validationText: "Enter your password",
                        sufixIcon: true),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 45,

                    child: BuilderTextFieldPass(
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            passwordController.text != value) {
                          return "Password does not match";
                        } else {
                          return null;
                        }
                      },
                      prifixIcon: Icons.lock_open,
                      hintText: "Conform password",
                      sufixIcon: true,
                      validationText: "Enter your password",
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 40,
                    width: 250,
                    child: BuildButton(
                      text: "SIGN UP",
                      fun: () {
                        if (formkey.currentState!.validate()) {
                          // ignore: use_build_context_synchronously
                          context.read<SignUpBloc>().add(SignUpEvent.registerUser(
                                directionText: directiontext,
                                nameController: nameController.text,
                                emailController: emailController.text,
                                passwordController: passwordController.text,
                                context: context,
                              ));
                          Navigator.of(context).pop();
                    
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ForgetPasswordScreen(
                                    directiontext: directiontext,
                                    email: emailController,
                                    textToCheck: "varifymail",
                                    name: nameController,
                                    password: passwordController,
                                  )));
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already an account ',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
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
                            fontSize: 12,
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
                      fontSize: 12,
                      letterSpacing: .5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 25,
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
