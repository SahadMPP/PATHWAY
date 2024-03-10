import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildAgePiker extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback function;
  const BuildAgePiker({
    super.key,
    required this.text,
    required this.isSelected,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: 60,
        width: isSelected
            ? MediaQuery.of(context).size.width * .5
            : MediaQuery.of(context).size.width * .6,
        decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromARGB(255, 25, 111, 182)
                : Colors.blue,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.aBeeZee(
            color: Theme.of(context).colorScheme.primary,
            fontSize:isSelected? 16:18,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
