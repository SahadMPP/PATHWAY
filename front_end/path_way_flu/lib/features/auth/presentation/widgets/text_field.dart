import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuilderTextField extends StatefulWidget {
  final String hintText;
  final bool? sufixIcon;
  final String validationText;
  final TextEditingController? controller;
  const BuilderTextField({
    super.key,
    required this.hintText,
    required this.sufixIcon,
    this.controller,
    required this.validationText,
  });

  @override
  State<BuilderTextField> createState() => _BuilderTextFieldState();
}

class _BuilderTextFieldState extends State<BuilderTextField> {
  bool isSecurePassword = true;

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          isSecurePassword = !isSecurePassword;
        });
      },
      icon: isSecurePassword
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility),
      color: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return widget.validationText;
          } else {
            return null;
          }
        },
        controller: widget.controller,
        obscureText: isSecurePassword,
        decoration: InputDecoration(
            // suffixIcon: widget.sufixIcon!
            //     ? const Icon(Icons.remove_red_eye_outlined,
            //         color: Color.fromARGB(255, 166, 166, 166))
            //     : null,
            suffixIcon: widget.sufixIcon! ? togglePassword() : null,
            contentPadding: const EdgeInsets.all(20),
            border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: const Color.fromARGB(255, 242, 242, 242),
            hintText: widget.hintText,
            hintStyle: GoogleFonts.aBeeZee(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 17,
            )),
      ),
    );
  }
}
