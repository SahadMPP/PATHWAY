import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                const BuilderTextField(
                    hintText: "Enter your name",
                    obscuretext: false,
                    sufixIcon: false),
                const SizedBox(height: 20),
                const BuilderTextField(
                    hintText: "Enter your email",
                    obscuretext: false,
                    sufixIcon: false),
                const SizedBox(height: 20),
                const BuilderTextField(
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
                SizedBox(
                  height: 60,
                  width: 350,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue),
                          shape: MaterialStatePropertyAll(
                              BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))))),
                      onPressed: () {},
                      child: Text(
                        'SIGN UP',
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      )),
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

class BuilderTextField extends StatelessWidget {
  final String hintText;
  final bool obscuretext;
  final bool? sufixIcon;
  const BuilderTextField({
    super.key,
    required this.hintText,
    required this.obscuretext,
    required this.sufixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        obscureText: obscuretext,
        decoration: InputDecoration(
            suffixIcon: sufixIcon!
                ? const Icon(Icons.remove_red_eye_outlined,
                    color: Color.fromARGB(255, 166, 166, 166))
                : null,
            contentPadding: const EdgeInsets.all(20),
            border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: const Color.fromARGB(255, 242, 242, 242),
            hintText: hintText,
            hintStyle: GoogleFonts.aBeeZee(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 17,
            )),
      ),
    );
  }
}
