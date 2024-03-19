import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/model/progress.dart';
import 'package:path_way_flu/app/pages/student/widgets/chart.dart';
import 'package:path_way_flu/main.dart';

class ProgressDesk extends StatelessWidget {
  const ProgressDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProgessTopImage(),
            SizedBox(
              height: 500,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      constraints:
                          const BoxConstraints(maxHeight: 500, maxWidth: 500),
                      child: const AdminChart(),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: FutureBuilder(
                        future: StudentApi.getAllProgerss(
                            userId!),
                        builder: (context, AsyncSnapshot snapshot) {
                          if (!snapshot.hasData) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else {
                            List<Progress> progress = snapshot.data;
                            if (progress.isEmpty) {
                              return const Center(child: Text('List is empty'));
                            } else {
                              return ListView.builder(
                                  itemCount: progress.length,
                                  itemBuilder: (context, index) {
                                    return BuildStatusBoxDesk(
                                      progress: progress[index],
                                    );
                                  });
                            }
                          }
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProgessTopImage extends StatelessWidget {
  const ProgessTopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: SizedBox(
                height: 400,
                width: double.infinity,
                child: Lottie.asset(
                    'asset/animation_icon/Animation - 1710834997320.json')),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              height: 400,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                          "\"The mind is not a vessel to be filled but a fire to be ignited.\"",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 38,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text("-SAHAD MP",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildStatusBoxDesk extends StatelessWidget {
  final Progress progress;
  const BuildStatusBoxDesk({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
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
                  child: SizedBox(
                    height: 110,
                    width: 110,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "${AuthApi.baseUrlImage}${progress.coverImage}"),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              ConstrainedBox(
                constraints:  BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width *.13,
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
                              '${(progress.countOfLessonWatched / progress.totelCountOfLesson) * 100}%',
                              style: GoogleFonts.quicksand(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        LinearProgressIndicator(
                          value: progress.countOfLessonWatched > 0
                              ? progress.countOfLessonWatched /
                                  progress.totelCountOfLesson
                              : 0.1,
                          backgroundColor: Colors.white,
                          minHeight: 6,
                          valueColor: const AlwaysStoppedAnimation(Colors.blue),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
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
