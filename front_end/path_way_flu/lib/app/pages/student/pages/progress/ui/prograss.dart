import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/core/bargraph_admin/bar_graph.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/model/progress.dart';
import 'package:path_way_flu/main.dart';

class StudentPrograss extends StatelessWidget {
  const StudentPrograss({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> weeklySummary = [
      20.40,
      30.40,
      40.40,
      90.40,
      60.40,
      30.40,
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.status,
          style: GoogleFonts.quicksand(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: MyBarGraph(weeklySummary: weeklySummary),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: FutureBuilder(
                  future: StudentApi.getAllProgerss(userId!),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      List<Progress> progress = snapshot.data;
                      if (progress.isEmpty) {
                        return const Center(child: Text('List is empty'));
                      } else {
                        return ListView.builder(
                            itemCount: progress.length,
                            itemBuilder: (context, index) {
                              return  BuildStatusBox(progress: progress[index],);
                            });
                      }
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

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
