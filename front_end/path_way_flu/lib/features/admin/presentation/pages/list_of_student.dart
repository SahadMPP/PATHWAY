import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/admin/data/repositories/admin_api.dart';
import 'package:path_way_flu/features/student/data/models/student.dart';

class ListOfStudent extends StatelessWidget {
  const ListOfStudent({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> profileImage = [
      "asset/profiles/chat111.png",
      "asset/profiles/chat222.png",
      "asset/profiles/chat333.png",
      "asset/profiles/chat555.png",
      "asset/profiles/chat666.png",
      "asset/profiles/chat777.png",
      "asset/profiles/chat888.png",
      "asset/profiles/image22.png",
      "asset/profiles/image22.png",
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('List of Students',
              style: GoogleFonts.quicksand(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 235, 235, 235),
              child: SvgPicture.asset("asset/icons/arrow-left.svg"),
            ),
          ),
        ),
        body: FutureBuilder(
            future: AdminApi.getStudents(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              } else {
                List<Student> student = snapshot.data;
                if (student.isEmpty) {
                  return const Center(child: Text('List is empty'));
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        itemCount: student.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 35),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage(profileImage[index]),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      student[index].name!,
                                      style: GoogleFonts.quicksand(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      student[index].email!,
                                      style: GoogleFonts.quicksand(
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.person_add_disabled))
                              ],
                            ),
                          );
                        }),
                  );
                }
              }
            }));
  }
}
