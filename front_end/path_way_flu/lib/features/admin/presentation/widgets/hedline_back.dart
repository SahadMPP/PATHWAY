import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildHeadlinewithBack extends StatelessWidget {
  final VoidCallback fun;
  final IconData icon;
  final String headline;
  const BuildHeadlinewithBack({
    super.key,
    required this.fun,
    required this.icon,
    required this.headline,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            headline,
            style: GoogleFonts.quicksand(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(blurRadius: .5),
            ],
            color: const Color.fromARGB(255, 248, 248, 248),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
              onPressed: fun,
              icon: Icon(
                icon,
                size: 20,
              )),
        ),
      ],
    );
  }
}
