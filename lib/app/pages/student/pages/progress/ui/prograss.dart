import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/model/progress.dart';
import 'package:path_way_flu/app/pages/student/widgets/chart.dart';
import 'package:path_way_flu/app/pages/student/widgets/progress_box.dart';
import 'package:path_way_flu/main.dart';

class StudentPrograss extends StatelessWidget {
  const StudentPrograss({super.key});

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(
              height: 200,
              width: double.infinity,
              child: AdminChart(),
              // child: MyBarGraph(weeklySummary: weeklySummary),
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
                              return BuildStatusBox(
                                progress: progress[index],
                              );
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
