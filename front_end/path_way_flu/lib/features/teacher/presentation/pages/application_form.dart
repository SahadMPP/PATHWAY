import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
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
  String? certificateOne = "";
  String? certificateTwo = "";
  pikingCertificateOne() async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        certificateOne = image.path;
      });
    } else {
      return;
    }
  }

  pikingCertificateTwo() async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        certificateTwo = image.path;
      });
    } else {
      return;
    }
  }

  final SignatureController _signatureController = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.black,
    exportBackgroundColor: const Color.fromARGB(255, 234, 234, 234),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BuildHeadlinewithBack(
            fun: () {}, icon: Icons.arrow_back, headline: "Fill Up"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                  controllre: nameController,
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
                  controllre: nameController,
                  validateText: "Name is empty",
                ),
                const SizedBox(height: 10),
                BuildAddTutorFormText(
                  title: "Place",
                  hintText: "Enter University Place",
                  controllre: nameController,
                  validateText: "Place is empty",
                ),
                const SizedBox(height: 10),
                BuildAddTutorFormText(
                  title: "State",
                  hintText: "Enter State",
                  controllre: nameController,
                  validateText: "State is empty",
                ),
                const SizedBox(height: 10),
                const BuildExpDropDown(),
                const SizedBox(height: 10),
                BuildAddTutorFormText(
                  title: "State",
                  hintText: "Chief administrative officer",
                  controllre: nameController,
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
                  child: Row(
                    children: [
                      CertificateBox(
                          imagePath: certificateOne!,
                          function: () {
                            pikingCertificateOne();
                          }),
                      const SizedBox(width: 30),
                      CertificateBox(
                          imagePath: certificateTwo!,
                          function: () {
                            pikingCertificateTwo();
                          }),
                    ],
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
                          onPressed: () async {
                            _signatureController.clear();
                            // Uint8List? signatute =
                            //     await _signatureController.toPngBytes();
                          },
                          child: const Text("Clear")),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Align(
                    alignment: Alignment.center,
                    child: BuildButton(text: "Apply", fun: () {})),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CertificateBox extends StatelessWidget {
  const CertificateBox({
    super.key,
    required this.imagePath,
    required this.function,
  });

  final String imagePath;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
          height: 110,
          width: 130,
          color: Colors.grey,
          child: imagePath.isEmpty
              ? const Image(
                  fit: BoxFit.cover,
                  image: AssetImage("asset/images(adding icon).png"))
              : Image.file(
                  File(imagePath),
                  fit: BoxFit.cover,
                )),
    );
  }
}

class BuildExpDropDown extends StatelessWidget {
  const BuildExpDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String levelDropDown = "1";
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
            child: DropdownButton<String>(
                borderRadius: BorderRadius.circular(15),
                focusColor: Colors.blueGrey,
                dropdownColor: Colors.white,
                value: levelDropDown,
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
                onChanged: (newValue) {}),
          ),
        ],
      ),
    );
  }
}
