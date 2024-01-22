import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                Text(
                  'Forgot Password',
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
                  child: Text(
                    'Enter your email account to reset your password',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                      color: const Color.fromARGB(255, 134, 134, 134),
                      fontWeight: FontWeight.w300,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const BuilderTextField(
                    hintText: "Enter your email",
                    obscuretext: false,
                    sufixIcon: false),
                const SizedBox(height: 30),
                SizedBox(
                  height: 60,
                  width: 350,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 0, 125, 228)),
                          shape: MaterialStatePropertyAll(
                              BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))))),
                      onPressed: () {
                        PanaraInfoDialog.show(
                          context,
                          imagePath: 'asset/download (4).png',
                          title: "Check your email",
                          message:
                              "We have send password recovery instrection in your email",
                          buttonText: "Okay",
                          onTapDismiss: () {
                            Navigator.pop(context);
                          },
                          panaraDialogType: PanaraDialogType.normal,
                        );
                      },
                      child: Text(
                        'Resent Password',
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
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
                borderRadius: BorderRadius.circular(12),
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
