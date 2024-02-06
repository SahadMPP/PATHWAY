import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/admin/data/models/tutoral_model.dart';
import 'package:path_way_flu/features/admin/data/repositories/admin_api.dart';
import 'package:path_way_flu/features/admin/presentation/widgets/textfield.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/features/student/presentation/widgets/hedline_back.dart';
import 'package:image_picker/image_picker.dart';

class UpdatingTutorial extends StatefulWidget {
  final Tutorial tutoral;
  const UpdatingTutorial({super.key, required this.tutoral});

  @override
  State<UpdatingTutorial> createState() => _UpdatingTutorialState();
}

class _UpdatingTutorialState extends State<UpdatingTutorial> {
  String? selectedImage;

  Future<String?> pikingImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: source);
    if (image != null) {
      setState(() {
        selectedImage = image.path;
      });
      return image.path;
    } else {
      return "";
    }
  }

  late String subjectDropDown;
  late String levelDropDown;

  TextEditingController titleController = TextEditingController();
  TextEditingController creatorController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController videoUrlController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void initState() {
    titleController.text = widget.tutoral.title.toString();
    creatorController.text = widget.tutoral.creator.toString();
    discriptionController.text = widget.tutoral.discription.toString();
    durationController.text = widget.tutoral.duration.toString();
    videoUrlController.text = widget.tutoral.videoUrl.toString();
    subjectDropDown = widget.tutoral.category;
    levelDropDown = widget.tutoral.level;
    selectedImage = widget.tutoral.tumbnailImage;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  BuildHeadlinewithBack(
                      fun: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icons.arrow_back,
                      headline: 'Update tutorial'),
                  const SizedBox(height: 20),
                  BuildAddTutorFormText(
                      validateText: "title",
                      controllre: titleController,
                      title: "Title",
                      hintText: "Enter full title"),
                  const SizedBox(height: 20),
                  BuildAddTutorFormText(
                      validateText: "Creator name",
                      controllre: creatorController,
                      title: "Creator name",
                      hintText: "Enter creator name"),
                  const SizedBox(height: 20),
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
                        border: Border.all(color: Colors.grey, width: 2)),
                    width: double.infinity,
                    height: 60,
                    child: DropdownButton<String>(
                        focusColor: Colors.blueGrey,
                        dropdownColor: Colors.white,
                        value: levelDropDown,
                        style: GoogleFonts.roboto(fontSize: 18),
                        items: const [
                          DropdownMenuItem(
                              value: "Basic",
                              child: Text(
                                'Basic',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                          DropdownMenuItem(
                              value: "Proficient",
                              child: Text(
                                'Proficient',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                          DropdownMenuItem(
                              value: "Advanced",
                              child: Text(
                                'Advanced',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                        ],
                        onChanged: (newValue) {
                          setState(() {
                            levelDropDown = newValue!;
                          });
                        }),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Subjects",
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
                        border: Border.all(color: Colors.grey, width: 2)),
                    width: double.infinity,
                    height: 60,
                    child: DropdownButton<String>(
                        focusColor: Colors.blueGrey,
                        dropdownColor: Colors.white,
                        value: subjectDropDown,
                        style: GoogleFonts.roboto(fontSize: 18),
                        items: const [
                          DropdownMenuItem(
                              value: "Mathematics",
                              child: Text(
                                'Mathematics',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                          DropdownMenuItem(
                              value: "Art",
                              child: Text(
                                'Art',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                          DropdownMenuItem(
                              value: "English",
                              child: Text(
                                'English',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                          DropdownMenuItem(
                              value: "Science",
                              child: Text(
                                'Science',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                          DropdownMenuItem(
                              value: "Geography",
                              child: Text(
                                'Geography',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                          DropdownMenuItem(
                              value: "Social Studies",
                              child: Text(
                                'Social Studies',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                          DropdownMenuItem(
                              value: "History",
                              child: Text(
                                'History',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                          DropdownMenuItem(
                              value: "Computer",
                              child: Text(
                                'Computer',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                        ],
                        onChanged: (newValue) {
                          setState(() {
                            subjectDropDown = newValue!;
                          });
                        }),
                  ),
                  const SizedBox(height: 20),
                  BuildAddTutorFormText(
                      validateText: "Description",
                      controllre: discriptionController,
                      maxline: 5,
                      title: "Description",
                      hintText: "Fill the description"),
                  const SizedBox(height: 20),
                  BuildAddTutorFormText(
                      validateText: "Duration",
                      controllre: durationController,
                      textInputType: TextInputType.number,
                      title: "Duration",
                      hintText: "Duraton(min)"),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thumbnail",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          pikingImage(ImageSource.gallery);
                        },
                        child: Container(
                          height: 190,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 222, 222, 222),
                              borderRadius: BorderRadius.circular(8)),
                          child: selectedImage == null
                              ? Image.asset(
                                  "asset/images(adding icon).png",
                                  fit: BoxFit.cover,
                                )
                              : Image.file(
                                  File(selectedImage!),
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  BuildAddTutorFormText(
                      validateText: "url",
                      controllre: videoUrlController,
                      title: "Source",
                      hintText: "url"),
                  const SizedBox(height: 20),
                  SizedBox(
                      width: 400,
                      child: BuildButton(
                          fun: () {
                            if (formKey.currentState!.validate()) {
                              var data = {
                                "title": titleController.text,
                                "creator": creatorController.text,
                                "level": levelDropDown,
                                "category": subjectDropDown,
                                "tumbnailImage": selectedImage!,
                                "videoUrl": videoUrlController.text,
                                "duration": durationController.text,
                                "discription": discriptionController.text,
                              };
                              AdminApi.updateTotorial(
                                  widget.tutoral.id, data, context);
                            }
                          },
                          text: "Update")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
