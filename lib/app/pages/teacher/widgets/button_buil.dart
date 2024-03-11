import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildButton extends StatelessWidget {
  final String text;
  final VoidCallback fun;
  const BuildButton({
    super.key,
    required this.text,
    required this.fun,
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
          onPressed: fun,
          child: Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
