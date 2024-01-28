import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/core/constants/constants.dart';

class ListOfSubjects extends StatelessWidget {
  const ListOfSubjects({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> subjectList = [
      {"name": "Math", "image": "asset/subjucts_icon/mahts.png"},
      {"name": "Science", "image": "asset/subjucts_icon/science.png"},
      {"name": "Chemisry", "image": "asset/subjucts_icon/chemistry.jpg"},
      {"name": "Physics", "image": "asset/subjucts_icon/physics.png"},
      {"name": "Social", "image": "asset/subjucts_icon/social.jpg"},
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
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
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
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        255, 236, 236, 236))),
                            child: Center(child: Text("${index + 1}"))),
                      ),
                      const SizedBox(width: 10),
                      CircleAvatar(
                        radius: 32,
                        backgroundImage:
                            AssetImage(subjectList[index]["image"]!),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        subjectList[index]["name"]!,
                        style: GoogleFonts.quicksand(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
