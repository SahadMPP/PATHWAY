import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/admin/data/repositories/admin_api.dart';
import 'package:path_way_flu/features/admin/presentation/pages/tutors_form.dart';
import 'package:path_way_flu/features/teacher/data/models/teacher_model.dart';

class TeacherRequestList extends StatelessWidget {
  const TeacherRequestList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Requests',
              style: GoogleFonts.quicksand(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: FutureBuilder(
            future: AdminApi.getTeacherApplication(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              } else {
                List<Teacher> teacher = snapshot.data;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: teacher.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => TutorsApplicationDetile(
                                        teacher: teacher[index],
                                      ))),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 20),
                            child: Row(
                              children: [
                                teacher[index].profileImage == null
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: const CircleAvatar(
                                          radius: 30,
                                          child: Image(
                                            image: AssetImage(
                                                "asset/profiles/emptyProfile.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )
                                    : CircleAvatar(
                                        radius: 30,
                                        child: Image(
                                            image: FileImage(File(
                                                teacher[index].profileImage!)),
                                            filterQuality: FilterQuality.high,
                                            fit: BoxFit.cover),
                                      ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      teacher[index].name!,
                                      style: GoogleFonts.quicksand(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "teacher[index].email!",
                                      style: GoogleFonts.quicksand(
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 50),
                                // IconButton(
                                //     onPressed: () {},
                                //     icon: const Icon(Icons.person_add_disabled))
                              ],
                            ),
                          ),
                        );
                      }),
                );
              }
            }));
  }
}
