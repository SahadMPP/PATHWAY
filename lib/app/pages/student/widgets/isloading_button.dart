import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildLoaderButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback function;
  final String defultText;
  const BuildLoaderButton({
    super.key,
    required this.isLoading,
    required this.function,
    required this.defultText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 330,
      child: ElevatedButton(
          style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 0, 96, 175)),
              shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))))),
          onPressed: function,
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : Text(
                  defultText,
                  style: GoogleFonts.roboto(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
    );
  }
}
