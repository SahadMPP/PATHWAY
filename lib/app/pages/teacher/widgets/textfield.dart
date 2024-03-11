import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildAddTutorFormText extends StatelessWidget {
  final String title;
  final String hintText;
  final int? maxline;
  final TextEditingController controllre;
  final TextInputType? textInputType;
  final String validateText;

  const BuildAddTutorFormText({
    super.key,
    required this.title,
    required this.hintText,
    this.maxline,
    required this.controllre,
    this.textInputType,
    required this.validateText,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: const Color.fromARGB(255, 202, 202, 202),
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "$validateText is empty";
              } else {
                return null;
              }
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: textInputType,
            controller: controllre,
            maxLines: maxline,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color.fromARGB(
                      255, 133, 133, 133), // Set the border color here as well
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.green, // Set the border color here
                  width: 1.5,
                ),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
