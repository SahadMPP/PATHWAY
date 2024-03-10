import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/model/progress.dart';

class BuildStatusBox extends StatelessWidget {
  final Progress progress;
  const BuildStatusBox({
    super.key, required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 150,
          width: double.infinity,
          color: Theme.of(context).colorScheme.secondary,
          child: Row(
            children: [
              ConstrainedBox(
                constraints:
                    const BoxConstraints(maxHeight: 120, maxWidth: 150),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child:   SizedBox(
                    height: 130,
                    width: 130,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("http://learnpro.today:5000/${progress.coverImage}"),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * .45,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      progress.title,
                      style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      progress.creatorName,
                      style: GoogleFonts.quicksand(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${progress.countOfLessonWatched}/${progress.totelCountOfLesson}',
                              style: GoogleFonts.quicksand(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '${(progress.countOfLessonWatched/ progress.totelCountOfLesson)*100}%',
                              style: GoogleFonts.quicksand(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                         LinearProgressIndicator(
                          value: progress.countOfLessonWatched >0 ? progress.countOfLessonWatched/progress.totelCountOfLesson :0.1,
                          backgroundColor: Colors.white,
                          minHeight: 6,
                          valueColor: const AlwaysStoppedAnimation(Colors.blue),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
