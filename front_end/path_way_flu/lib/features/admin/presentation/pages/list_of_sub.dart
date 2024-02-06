import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:path_way_flu/features/admin/presentation/pages/list_of_tutorial.dart';

class ListOfSubjects extends StatelessWidget {
  const ListOfSubjects({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> subjectList = [
      {"name": "Mathematics", "image": "asset/subjucts_icon/mahts.png"},
      {"name": "Art", "image": "asset/subjucts_icon/science.png"},
      {"name": "Science", "image": "asset/subjucts_icon/chemistry.jpg"},
      {"name": "Geography", "image": "asset/subjucts_icon/physics.png"},
      {"name": "Social Studies", "image": "asset/subjucts_icon/social.jpg"},
      {"name": "History", "image": "asset/subjucts_icon/history.jpg"},
      {"name": "Computer", "image": "asset/subjucts_icon/computer.jpg"},
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Subjects',
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
                          color: const Color.fromARGB(255, 236, 236, 236)),
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
                                      color: const Color.fromARGB(
                                          255, 236, 236, 236))),
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
