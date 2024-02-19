import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuilderTextField extends StatefulWidget {
  final String hintText;
  final bool? sufixIcon;
  final String validationText;
  final TextEditingController? controller;
  final IconData prifixIcon;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const BuilderTextField({
    super.key,
    required this.hintText,
    required this.sufixIcon,
    this.controller,
    required this.validationText,
    required this.prifixIcon,
    this.onChanged,
    required this.validator,
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
        onChanged: widget.onChanged,
        validator: widget.validator,
        controller: widget.controller,
        obscureText: isSecurePassword,
        decoration: InputDecoration(
            labelText: 'Name',
            labelStyle: const TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w300),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).iconTheme.color!, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            floatingLabelStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green, width: 2),
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: Icon(widget.prifixIcon,
                color: Theme.of(context).iconTheme.color),
            suffixIcon: widget.sufixIcon! ? togglePassword() : null,
            contentPadding: const EdgeInsets.all(20),
            border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            hintText: widget.hintText,
            hintStyle: GoogleFonts.aBeeZee(
              fontWeight: FontWeight.w400,
              fontSize: 17,
            )),
      ),
    );
  }
}
