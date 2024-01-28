import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/admin/presentation/pages/adding_tutorial_form.dart';
import 'package:path_way_flu/features/student/presentation/widgets/hedline_back.dart';

class ListOfTutorial extends StatelessWidget {
  const ListOfTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> subjectList = [
      {"name": "Math", "creator": "Kumar mohan"},
      {"name": "Science", "creator": "Mohan"},
      {"name": "Chemisry", "creator": "Labila"},
      {"name": "Physics", "creator": "Madhu"},
      {"name": "Social", "creator": "Kumaran"},
    ];
    return Scaffold(
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const AddTotorialForm()));
            },
            backgroundColor: const Color.fromARGB(255, 0, 111, 202),
            child: const Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              BuildHeadlinewithBack(
                  fun: () {}, icon: Icons.arrow_back, headline: "Math"),
              const SizedBox(height: 20),
              SizedBox(
                height: 800,
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
                                color:
                                    const Color.fromARGB(255, 236, 236, 236)),
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
                              Container(
                                height: 80,
                                width: 120,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "asset/video_playing_icon.png"),
                                        fit: BoxFit.contain)),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    subjectList[index]["name"]!,
                                    style: GoogleFonts.quicksand(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    subjectList[index]["creator"]!,
                                    style: GoogleFonts.roboto(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
