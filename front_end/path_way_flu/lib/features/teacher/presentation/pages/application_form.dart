import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/teacher/data/models/teacher_model.dart';
import 'package:path_way_flu/features/teacher/data/repositories/teacher_api_calls.dart';
import 'package:path_way_flu/features/teacher/presentation/bloc/teacher_bloc.dart';
import 'package:signature/signature.dart';
import 'package:path_way_flu/features/admin/presentation/widgets/sub_drop_down_addtutorial.dart';
import 'package:path_way_flu/features/admin/presentation/widgets/textfield.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/features/student/presentation/widgets/hedline_back.dart';

class TeacherApplicationFormSc extends StatefulWidget {
  const TeacherApplicationFormSc({super.key});

  @override
  State<TeacherApplicationFormSc> createState() =>
      _TeacherApplicationFormScState();
}

class _TeacherApplicationFormScState extends State<TeacherApplicationFormSc> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController universityController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController officerController = TextEditingController();

  final SignatureController _signatureController = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.black,
    exportBackgroundColor: const Color.fromARGB(255, 234, 234, 234),
  );
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> key = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        title: BuildHeadlinewithBack(
            fun: () {
              Navigator.of(context).pop();
            },
            icon: Icons.arrow_back,
            headline: "Fill Up"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  BuildAddTutorFormText(
                    title: "Name",
                    hintText: "Enter full name",
                    controllre: nameController,
                    validateText: "Name is empty",
                  ),
                  const SizedBox(height: 10),
                  BuildAddTutorFormText(
                    title: "Number",
                    hintText: "Enter mobile number",
                    controllre: numberController,
                    validateText: "Number is empty",
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Subject",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 202, 202, 202),
                    ),
                  ),
                  const BuildSubDropDown(),
                  const SizedBox(height: 10),
                  BuildAddTutorFormText(
                    title: "University Name",
                    hintText: "Enter University Name",
                    controllre: universityController,
                    validateText: "Name is empty",
                  ),
                  const SizedBox(height: 10),
                  BuildAddTutorFormText(
                    title: "Place",
                    hintText: "Enter University Place",
                    controllre: placeController,
                    validateText: "Place is empty",
                  ),
                  const SizedBox(height: 10),
                  BuildAddTutorFormText(
                    title: "State",
                    hintText: "Enter State",
                    controllre: stateController,
                    validateText: "State is empty",
                  ),
                  const SizedBox(height: 10),
                  const BuildExpDropDown(),
                  const SizedBox(height: 10),
                  BuildAddTutorFormText(
                    title: "officer name",
                    hintText: "Chief administrative officer",
                    controllre: officerController,
                    validateText: "Name is empty",
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Certificates",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 202, 202, 202),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    child: BlocBuilder<TeacherBloc, TeacherState>(
                      builder: (context, state) {
                        return Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.read<TeacherBloc>().add(
                                    const TeacherEvent.certificatePikerOne());
                              },
                              child: Container(
                                  height: 110,
                                  width: 130,
                                  color: Colors.grey,
                                  child: state.cetificateImageOne == null
                                      ? const Image(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "asset/images(adding icon).png"))
                                      : Image.file(
                                          File(state.cetificateImageOne!),
                                          fit: BoxFit.cover,
                                        )),
                            ),
                            const SizedBox(width: 30),
                            GestureDetector(
                              onTap: () {
                                context.read<TeacherBloc>().add(
                                    const TeacherEvent.certificatePikerTwo());
                              },
                              child: Container(
                                  height: 110,
                                  width: 130,
                                  color: Colors.grey,
                                  child: state.cetificateImageTwo == null
                                      ? const Image(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "asset/images(adding icon).png"))
                                      : Image.file(
                                          File(state.cetificateImageTwo!),
                                          fit: BoxFit.cover,
                                        )),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "chief administrative officer signature",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 202, 202, 202),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        color: Colors.yellow[200],
                        child: Signature(controller: _signatureController),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: TextButton(
                            onPressed: () {
                              _signatureController.clear();
                            },
                            child: const Text("Clear")),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Align(
                      alignment: Alignment.center,
                      child: BlocBuilder<TeacherBloc, TeacherState>(
                        builder: (context, state) {
                          return BuildButton(
                              text: "Apply",
                              fun: () async {
                                Uint8List? signatute =
                                    await _signatureController.toPngBytes();
                                String id = "65c4cd5bde894c12bb0ebab1";
                                var data = {
                                  "name": nameController.text,
                                  "mobNumber": numberController.text,
                                  "universityName": universityController.text,
                                  "appledSubject": state.subjectDropDown,
                                  "appledStatus": true.toString(),
                                  "universityPlace": placeController.text,
                                  "universityState": stateController.text,
                                  "experience": state.expDropDown,
                                  "officerName": officerController.text,
                                  "signatureImage": signatute.toString(),
                                  "certificateOne": state.cetificateImageOne,
                                  "certificateTwo": state.cetificateImageTwo,
                                };

                                if (key.currentState!.validate()) {
                                  // ignore: use_build_context_synchronously
                                  context.read<TeacherBloc>().add(
                                      // ignore: use_build_context_synchronously
                                      TeacherEvent.updateData(
                                          id: id,
                                          data: data,
                                          context: context));
                                }
                              });
                        },
                      )),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BuildExpDropDown extends StatelessWidget {
  const BuildExpDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Level",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(255, 202, 202, 202),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey, width: 1)),
            width: double.infinity,
            height: 60,
            child: BlocBuilder<TeacherBloc, TeacherState>(
              builder: (context, state) {
                return DropdownButton<String>(
                    borderRadius: BorderRadius.circular(15),
                    focusColor: Colors.blueGrey,
                    dropdownColor: Colors.white,
                    value: state.expDropDown,
                    style: GoogleFonts.roboto(fontSize: 18),
                    items: const [
                      DropdownMenuItem(
                          value: "1",
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                      DropdownMenuItem(
                          value: "2",
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                      DropdownMenuItem(
                          value: "3",
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                      DropdownMenuItem(
                          value: "4",
                          child: Text(
                            '3>',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                    ],
                    onChanged: (newValue) {
                      context.read<TeacherBloc>().add(
                          TeacherEvent.levelclickEventInAddiTutorial(
                              level: newValue!));
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
