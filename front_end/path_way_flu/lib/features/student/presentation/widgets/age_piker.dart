import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/student/presentation/widgets/student_bottom.dart';

class BuildAgePiker extends StatelessWidget {
  final String text;
  const BuildAgePiker({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>const StudentBotmNavi()));
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * .6,
        decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.onSurface, width: 2),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
            child: Text(
          "$text  ",
          style: GoogleFonts.aBeeZee(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
