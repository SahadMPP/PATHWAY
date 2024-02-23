import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/admin/bloc/admin_bloc.dart';
import 'package:path_way_flu/app/pages/admin/widgets/level_dropdown_addingtutorial.dart';
import 'package:path_way_flu/app/pages/admin/widgets/sub_drop_down_addtutorial.dart';
import 'package:path_way_flu/app/pages/admin/widgets/textfield.dart';
import 'package:path_way_flu/app/pages/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/app/pages/student/widgets/hedline_back.dart';

class AddTotorialForm extends StatelessWidget {
  const AddTotorialForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController creatorController = TextEditingController();
    TextEditingController discriptionController = TextEditingController();
    TextEditingController durationController = TextEditingController();
    TextEditingController videoUrlController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
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
                        headline: 'Add tutorial'),
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
                    const BuildLevelDropDown(),
                    const SizedBox(height: 20),
                    Column(
                      children: [
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
                        const BuildSubDropDown(),
                      ],
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
                            context
                                .read<AdminBloc>()
                                .add(const AdminEvent.imagePiker());
                          },
                          child: BlocBuilder<AdminBloc, AdminState>(
                            builder: (context, state) {
                              return Container(
                                height: 190,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 222, 222, 222),
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
                              );
                            },
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
                        child: BlocBuilder<AdminBloc, AdminState>(
                          builder: (context, state) {
                            return BuildButton(
                                fun: () {
                                  if (state.selectedImage == null) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: const Text("Image not added"),
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.red[400],
                                      margin: const EdgeInsets.only(
                                          left: 5, right: 5, bottom: 5),
                                    ));
                                  } else {
                                    if (formKey.currentState!.validate()) {
                                      context.read<AdminBloc>().add(
                                          AdminEvent.addTutorial(
                                              titleCon: titleController.text,
                                              creatorCon:
                                                  creatorController.text,
                                              levelCon: state.levelDropDown,
                                              categoryCon:
                                                  state.subjectDropDown,
                                              thumnilCon: state.selectedImage
                                                  .toString(),
                                              videoUrlCon:
                                                  videoUrlController.text,
                                              durationCon:
                                                  durationController.text,
                                              discriptionCon:
                                                  discriptionController.text,
                                              context: context));
                                    }
                                  }
                                },
                                text: "Add");
                          },
                        )),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
