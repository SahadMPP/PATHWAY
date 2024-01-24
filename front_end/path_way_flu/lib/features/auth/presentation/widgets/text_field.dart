import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuilderTextField extends StatelessWidget {
  final String hintText;
  final bool obscuretext;
  final bool? sufixIcon;
  final TextEditingController? controller;
  const BuilderTextField({
    super.key,
    required this.hintText,
    required this.obscuretext,
    required this.sufixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        controller: controller,
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
