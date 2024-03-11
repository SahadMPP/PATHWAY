import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubcriptionMiniCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? bgcolor;
  final Color? borderColor;
  const SubcriptionMiniCard({
    super.key,
    required this.text,
    required this.icon,
    required this.bgcolor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .43,
      height: 60,
      decoration: BoxDecoration(
          color: bgcolor,
          border: Border.all(width: 1, color: borderColor!),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30),
            const SizedBox(width: 10),
            Text(
              text,
              style: GoogleFonts.aBeeZee(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class BuildSubcriptionSubhead extends StatelessWidget {
  final String text;

  const BuildSubcriptionSubhead({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.aBeeZee(
        fontWeight: FontWeight.w300,
        fontSize: 17,
      ),
    );
  }
}
