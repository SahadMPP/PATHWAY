import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/pages/student/pages/subcription%20model/ui/subcription_detailepage.dart';
import 'package:get/get.dart' as getx;


class BuildSubcriptionListViewCard extends StatelessWidget {
  final int index;
  final Lesson lesson;
  const BuildSubcriptionListViewCard({
    super.key,
    required this.index,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getx.Get.to(SubcriptionDeatilePage(lesson: lesson),
                          transition: getx.Transition.fade,
                          duration: const Duration(seconds: 1));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15, right: 20, left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage:
                  NetworkImage("${AuthApi.baseUrlImage}${lesson.profileImage}"),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  lesson.title,
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(lesson.creatorName),
              ],
            ),
            const Spacer(),
            Text(
              "₹${lesson.price}",
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
