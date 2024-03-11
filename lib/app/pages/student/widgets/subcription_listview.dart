import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:path_way_flu/app/pages/student/pages/subcription%20model/bloc/subcription_bloc.dart';
import 'package:path_way_flu/main.dart';

class BuildSubcriptionListViewCard extends StatelessWidget {
  final int index;
  const BuildSubcriptionListViewCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<SubcriptionBloc>().add(SubcriptionEvent.naviagatedToDeatilePage(subject: subjectList[index]['name']!, id: userId!, context: context)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15, right: 20, left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(subjectList[index]['image']!),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  subjectList[index]['name']!,
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text("Nov 24,2023"),
              ],
            ),
            const Spacer(),
            Text(
              subjectList[index]['amount']!,
              style: GoogleFonts.aBeeZee(
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

