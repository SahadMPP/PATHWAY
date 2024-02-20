import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class BuilderTextFieldEmail extends StatefulWidget {
  final TextEditingController? controller;
  final IconData prifixIcon;
  final String? Function(String?)? validator;

  const BuilderTextFieldEmail({
    super.key,
    this.controller,
    required this.prifixIcon,
    required this.validator,
  });

  @override
  State<BuilderTextFieldEmail> createState() => _BuilderTextFieldEmailState();
}

class _BuilderTextFieldEmailState extends State<BuilderTextFieldEmail> {
  bool isEmailCurrect = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        onChanged: (value) {
          setState(() {
            isEmailCurrect = isEmail(value);
          });
        },
       
       
        decoration: InputDecoration(
          labelText: "Email",
          labelStyle: const TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w300),
          hintText: 'Something@email.com',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
          prefixIcon: Icon(Icons.email_outlined,
              color: Theme.of(context).iconTheme.color),
          suffixIcon: isEmailCurrect == false
              ? const Icon(Icons.close_sharp, color: Colors.red)
              : const Icon(Icons.done, color: Colors.green),
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
                color: isEmailCurrect == false ? Colors.red : Colors.green,
                width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
