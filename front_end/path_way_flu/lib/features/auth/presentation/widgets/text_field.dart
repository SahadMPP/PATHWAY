import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/presentation/bloc/auth_bloc.dart';

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
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: widget.onChanged,
            validator: widget.validator,
            controller: widget.controller,
            obscureText: isSecurePassword,
            decoration: InputDecoration(
                focusedBorder: state.lettercondition || widget.onChanged == null
                    ? const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))
                    : const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                prefixIcon: Icon(
                  widget.prifixIcon,
                  size: 27,
                ),
                suffixIcon: widget.sufixIcon! ? togglePassword() : null,
                contentPadding: const EdgeInsets.all(20),
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Theme.of(context).colorScheme.secondary,
                hintText: widget.hintText,
                hintStyle: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                )),
          );
        },
      ),
    );
  }
}
