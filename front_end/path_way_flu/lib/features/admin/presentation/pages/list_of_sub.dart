import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:path_way_flu/features/admin/presentation/pages/list_of_tutorial.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ListOfSubjects extends StatelessWidget {
  const ListOfSubjects({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> subjectList = [
      {
        "name": AppLocalizations.of(context)!.mathematics,
        "image": "asset/subjucts_icon/mahts.png"
      },
      {
        "name": AppLocalizations.of(context)!.art,
        "image": "asset/subjucts_icon/science.png"
      },
      {
        "name": AppLocalizations.of(context)!.science,
        "image": "asset/subjucts_icon/chemistry.jpg"
      },
      {
        "name": AppLocalizations.of(context)!.geography,
        "image": "asset/subjucts_icon/physics.png"
      },
      {
        "name": AppLocalizations.of(context)!.socialStudies,
        "image": "asset/subjucts_icon/social.jpg"
      },
      {
        "name": AppLocalizations.of(context)!.history,
        "image": "asset/subjucts_icon/history.jpg"
      },
      {
        "name": AppLocalizations.of(context)!.computer,
        "image": "asset/subjucts_icon/computer.jpg"
      },
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.subject,
          style: kHeadingextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: ListView.builder(
            itemCount: subjectList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => ListOfTutorial(
                            category: subjectList[index]["name"]!,
                          )));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                          width: 3,
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 3,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary)),
                              child: Center(child: Text("${index + 1}"))),
                        ),
                        const SizedBox(width: 10),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage(subjectList[index]["image"]!),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          subjectList[index]["name"]!,
                          style: GoogleFonts.quicksand(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
