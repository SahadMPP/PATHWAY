import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuilderTextField extends StatefulWidget {
  final String hintText;
  final bool? sufixIcon;
  final String validationText;
  final TextEditingController? controller;
  final IconData prifixIcon;
  const BuilderTextField({
    super.key,
    required this.hintText,
    required this.sufixIcon,
    this.controller,
    required this.validationText,
    required this.prifixIcon,
  });

  @override
  State<BuilderTextField> createState() => _BuilderTextFieldState();
}

class _BuilderTextFieldState extends State<BuilderTextField> {
  bool isSecurePassword = false;

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
            prefixIcon: Icon(
              widget.prifixIcon,
              color: Colors.grey,
              size: 27,
            ),
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
