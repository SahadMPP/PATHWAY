import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/admin/data/models/tutoral_model.dart';
import 'package:path_way_flu/features/admin/presentation/bloc/admin_bloc.dart';
import 'package:path_way_flu/features/admin/presentation/widgets/drop_down_update.dart';
import 'package:path_way_flu/features/admin/presentation/widgets/textfield.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/features/student/presentation/widgets/hedline_back.dart';

class UpdatingTutorial extends StatelessWidget {
  final Tutorial tutoral;
  const UpdatingTutorial({super.key, required this.tutoral});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController creatorController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController durationController = TextEditingController();
    TextEditingController videoUrlController = TextEditingController();
    titleController.text = tutoral.title;
    creatorController.text = tutoral.creator;
    descriptionController.text = tutoral.discription;
    durationController.text = tutoral.duration.toString();
    videoUrlController.text = tutoral.videoUrl;
    GlobalKey<FormState> formKey = GlobalKey();
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
                  const BuildUpdateDropLeve(),
                  const SizedBox(height: 20),
                  const BuildUpdateDropSubject(),
                  const SizedBox(height: 20),
                  BuildAddTutorFormText(
                      validateText: "Description",
                      controllre: descriptionController,
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
                      BlocBuilder<AdminBloc, AdminState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              context
                                  .read<AdminBloc>()
                                  .add(const AdminEvent.imagePiker());
                            },
                            child: Container(
                              height: 190,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 222, 222, 222),
                                  borderRadius: BorderRadius.circular(8)),
                              child: state.selectedImage == null
                                  ? Image.asset(
                                      "asset/images(adding icon).png",
                                      fit: BoxFit.cover,
                                    )
                                  : Image.file(
                                      File(state.selectedImage!),
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          );
                        },
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
                      child: BlocBuilder<AdminBloc, AdminState>(
                        builder: (context, state) {
                          return BuildButton(
                              fun: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<AdminBloc>().add(
                                      AdminEvent.updateTutoral(
                                          titleCon: titleController.text,
                                          creatorCon: creatorController.text,
                                          levelCon: state.levelDropDown,
                                          categoryCon: state.subjectDropDown,
                                          thumnilCon: state.selectedImage!,
                                          videoUrlCon: videoUrlController.text,
                                          durationCon: durationController.text,
                                          discriptionCon:
                                              descriptionController.text,
                                          id: tutoral.id!,
                                          context: context));
                                }
                              },
                              text: "Update");
                        },
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
