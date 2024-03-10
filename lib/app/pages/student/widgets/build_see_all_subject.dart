import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';

class BuildSeeAllSub extends StatelessWidget {
  final int index;
  final VoidCallback function;
  const BuildSeeAllSub({
    super.key,
    required this.subjectList,
    required this.index,
    required this.function,
  });

  final List<Map<String, String>> subjectList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: 100,
        padding: const EdgeInsets.only(left: 20, top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kBlueColor,
          image: DecorationImage(
              filterQuality: FilterQuality.high,
              alignment: Alignment.topLeft,
              image: AssetImage(subjectList[index]['image']!),
              fit: BoxFit.cover),
        ),
        child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subjectList[index]['name']!.toUpperCase(),
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "71 Course",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 90, 90, 90),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
