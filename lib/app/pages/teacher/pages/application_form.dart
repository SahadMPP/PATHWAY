// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:typed_data';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/pages/admin/widgets/sub_drop_down_addtutorial.dart';
import 'package:path_way_flu/app/pages/admin/widgets/textfield.dart';
import 'package:path_way_flu/app/pages/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/app/pages/teacher/bloc/teacher_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/certificate_image_collector.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/exp_drop_down.dart';
import 'package:path_way_flu/main.dart';
import 'package:signature/signature.dart';


class TeacherApplicationFormSc extends StatefulWidget {
  const TeacherApplicationFormSc({super.key});

  @override
  State<TeacherApplicationFormSc> createState() =>
      _TeacherApplicationFormScState();
}

class _TeacherApplicationFormScState extends State<TeacherApplicationFormSc> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController universityController = TextEditingController();
    TextEditingController placeController = TextEditingController();
    TextEditingController stateController = TextEditingController();
    TextEditingController officerController = TextEditingController();
    final SignatureController signatureController = SignatureController(
      penStrokeWidth: 2,
      penColor: Colors.black,
      exportBackgroundColor: const Color.fromARGB(255, 234, 234, 234),
    );
    GlobalKey<FormState> key = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Fill Up",
          style: GoogleFonts.quicksand(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Container(
          alignment: Alignment.center,
          height: 40,
          width: 40,
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
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back,
                size: 20,
              )),
        ),
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
                    textInputType: TextInputType.number,
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
                  const ImageCertificateCollector(),
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
                        height: 170,
                        width: double.infinity,
                        color: Colors.yellow[200],
                        child: Signature(controller: signatureController),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  signatureController.clear();
                                },
                                child: const Text("Clear")),
                            TextButton(
                                onPressed: () async {
                                  Uint8List? signatute =
                                      await signatureController.toPngBytes();

                                  String signatureBase64 =
                                      base64Encode(signatute!);

                                  context.read<TeacherBloc>().add(
                                      TeacherEvent.colloctingSignatureImage(
                                          imageString: signatureBase64));
                                },
                                child: const Text("save")),
                          ],
                        ),
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
                              fun: () {
                                String id = userId!;
                                if (state.cetificateImageOne == null ||
                                    state.cetificateImageTwo == null) {
                                  buildShowSnacbar(
                                      context: context,
                                      content: "Certificate not added",
                                      title: 'Warning!',
                                      contentType: ContentType.warning);
                                } else if (state.signatureImage == null) {
                                  buildShowSnacbar(
                                      context: context,
                                      content: "signature not added",
                                      title: 'Warning!',
                                      contentType: ContentType.warning);
                                } else {
                                  if (key.currentState!.validate()) {
                                    var data = {
                                      "name": nameController.text,
                                      "mobNumber": numberController.text,
                                      "universityName":
                                          universityController.text,
                                      "appledSubject": state.subjectDropDown,
                                      "appledStatus": true.toString(),
                                      "universityPlace": placeController.text,
                                      "universityState": stateController.text,
                                      "experience": state.expDropDown,
                                      "officerName": officerController.text,
                                      "signatureImage": state.signatureImage!,
                                      "certificatesOne":
                                          state.cetificateImageOne,
                                      "certificatesTwo":
                                          state.cetificateImageTwo,
                                    };

                                    context.read<TeacherBloc>().add(
                                        TeacherEvent.updateData(
                                            id: id,
                                            data: data,
                                            context: context));
                                  }
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
