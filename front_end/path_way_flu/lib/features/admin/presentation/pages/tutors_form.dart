import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:path_way_flu/features/admin/presentation/bloc/admin_bloc.dart';
import 'package:path_way_flu/features/teacher/data/models/teacher_model.dart';

class TutorsApplicationDetile extends StatelessWidget {
  final Teacher teacher;
  const TutorsApplicationDetile({super.key, required this.teacher});

  @override
  Widget build(BuildContext context) {
    Uint8List decodedSignature = base64Decode(teacher.signatureImage!);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            alignment: Alignment.center,
            width: 45,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).colorScheme.secondary, width: 3),
              boxShadow: const [
                BoxShadow(blurRadius: .5),
              ],
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 20,
                )),
          ),
        ),
        title: Text(
          "headline",
          style: GoogleFonts.quicksand(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  BuildTutorApplicationCard(
                      content: teacher.name, title: "Name"),
                  BuildTutorApplicationCard(
                      content: teacher.mobNumber!, title: "Mobile Number"),
                  BuildTutorApplicationCard(
                      content: teacher.appliedSubject!, title: "Subject"),
                  BuildTutorApplicationCard(
                      content: teacher.experience!, title: "Experience"),
                  BuildTutorApplicationCard(
                      content: teacher.universityName!, title: "University"),
                  BuildTutorApplicationCard(
                      content: teacher.universityPlace!,
                      title: "University Place"),
                  BuildTutorApplicationCard(
                      content: teacher.universityState!, title: "State"),
                  BuildTutorApplicationCard(
                      content: teacher.officerName!,
                      title: "Chief administrative officer"),
                  Text(
                    "Certificates",
                    style: kSubtitleTextSyule.copyWith(
                        color: Colors.grey, height: .5),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        height: 110,
                        width: 130,
                        color: Colors.grey,
                        child: teacher.certificates == null
                            ? const Image(
                                image:
                                    AssetImage("asset/images(adding icon).png"),
                                fit: BoxFit.cover,
                              )
                            : Image(
                                fit: BoxFit.cover,
                                image:
                                    FileImage(File(teacher.certificates as String))),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        height: 110,
                        width: 130,
                        color: Colors.grey,
                        child: teacher.certificates == null
                            ? const Image(
                                image:
                                    AssetImage("asset/images(adding icon).png"),
                                fit: BoxFit.cover,
                              )
                            : Image(
                                fit: BoxFit.cover,
                                image:
                                    FileImage(File(teacher.certificates as String))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "chief administrative officer signature",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 202, 202, 202),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.yellow[100],
                    child: teacher.signatureImage == null
                        ? const Center(child: Text("Signature not added"))
                        : Image(
                            image: MemoryImage(decodedSignature),
                            fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              height: 90,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BuildSmallButtonAdmin(
                      function: () {
                        var data = {
                          "appledSubject": "",
                          "appledStatus": false.toString(),
                        };
                        context.read<AdminBloc>().add(
                            AdminEvent.tutorApplicationSubmition(
                                id: teacher.id, context: context, data: data));
                      },
                      color: Colors.blue[500]!,
                      text: "Accept"),
                  BuildSmallButtonAdmin(
                      function: () {
                        var data = {
                          "appledStatus": false.toString(),
                        };
                        context.read<AdminBloc>().add(
                            AdminEvent.tutorApplicationSubmition(
                                id: teacher.id, context: context, data: data));
                      },
                      color: Colors.red[500]!,
                      text: "Reject"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildSmallButtonAdmin extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback function;
  const BuildSmallButtonAdmin({
    super.key,
    required this.text,
    required this.color,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * .4,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(color),
              shape: const MaterialStatePropertyAll(BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3))))),
          onPressed: function,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}

class BuildTutorApplicationCard extends StatelessWidget {
  final String title;
  final String content;

  const BuildTutorApplicationCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kSubtitleTextSyule.copyWith(color: Colors.grey, height: .5),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              content,
              style: GoogleFonts.quicksand(
                  fontSize: 22,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
