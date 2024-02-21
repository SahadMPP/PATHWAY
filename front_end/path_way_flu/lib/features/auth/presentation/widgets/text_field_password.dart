import 'package:flutter/material.dart';


class BuilderTextFieldPass extends StatefulWidget {
  final String hintText;
  final bool? sufixIcon;
  final String validationText;
  final TextEditingController? controller;
  final IconData prifixIcon;
  final String? Function(String?)? validator;

  const BuilderTextFieldPass({
    super.key,
    required this.hintText,
    required this.sufixIcon,
    this.controller,
    required this.validationText,
    required this.prifixIcon,
    required this.validator,
  });

  @override
  State<BuilderTextFieldPass> createState() => _BuilderTextFieldPassState();
}

class _BuilderTextFieldPassState extends State<BuilderTextFieldPass> {
  bool isSecurePassword = true;
  bool isPasswordCurrect = false;

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
        onChanged: (val) {
          if (val.length >= 8) {
            setState(() {
              isPasswordCurrect = true;
            });
          } else {
            setState(() {
              isPasswordCurrect = false;
            });
          }
        },
        validator: widget.validator,
        controller: widget.controller,
        obscureText: isSecurePassword,
        decoration: InputDecoration(
          labelText: "Password",
          labelStyle: const TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w300),
          prefixIcon: Icon(widget.prifixIcon,
              color: Theme.of(context).iconTheme.color),
         suffixIcon: widget.sufixIcon! ? togglePassword() : null,
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).iconTheme.color!, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          floatingLabelStyle: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: isPasswordCurrect == false ? Colors.red : Colors.green,
                width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
//  