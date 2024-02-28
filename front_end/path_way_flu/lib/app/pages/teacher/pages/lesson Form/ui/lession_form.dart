import 'dart:io';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/ui/adding_tutorial_form.dart';
import 'package:path_way_flu/app/pages/admin/widgets/textfield.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lesson%20Form/bloc/lesson_form_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorialUpdateForm/ui/updating_tutorial.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/sub_lesson_dropdown%20copy.dart';

class LessionForm extends StatelessWidget {
  const LessionForm({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    TextEditingController titleController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                context
                    .read<LessonFormBloc>()
                    .add(LessonFormEvent.cancelButtonClick(context: context));
              },
              child: Text('Cancel',
                  style: GoogleFonts.roboto(
                      color: Colors.red[400],
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            Text(
              "Add Lession",
              style: GoogleFonts.roboto(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            BlocBuilder<LessonFormBloc, LessonFormState>(
              builder: (context, state) {
                return TextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      if (state.pikedImage != null) {
                        context.read<LessonFormBloc>().add(
                            LessonFormEvent.addingLession(
                                context: context,
                                subject: state.dropDownpiker!,
                                title: titleController.text,
                                coverImage: state.pikedImage!));
                      } else {
                        buildShowSnacbar(
                            context: context,
                            content: "try to add cover image",
                            title: "Oop's ",
                            contentType: ContentType.warning);
                      }
                    }
                  },
                  child: Text('Save',
                      style: GoogleFonts.roboto(
                          color: Colors.green[400],
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              key: formKey,
              child: BuildAddTutorFormText(
                title: "Title",
                hintText: "title",
                controllre: titleController,
                validateText: "Title",
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Subject",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            // need set bloc
            const BuildSubDropDownLession(),
            const SizedBox(height: 10),
            Text(
              "Cover Image",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            // change bloc
            const SizedBox(height: 10),
            BlocBuilder<LessonFormBloc, LessonFormState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    context
                        .read<LessonFormBloc>()
                        .add(const LessonFormEvent.imagePiking());
                  },
                  child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * .5,
                      color: Colors.grey,
                      child: state.pikedImage == null
                          ? const Image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("asset/images(adding icon).png"))
                          : Image.file(
                              File(state.pikedImage!),
                              fit: BoxFit.cover,
                            )),
                );
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cover Image",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (ctx) => const AddTotorialForm()));
                  },
                  child: Text(
                    "Add",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: BlocBuilder<LessonFormBloc, LessonFormState>(
                builder: (context, state) {
                  return FutureBuilder(
                      future: TeacherApi.getTotorial(state.dropDownpiker!),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else {
                          List<Tutorial> tutoral = snapshot.data;
                          if (tutoral.isEmpty) {
                            return const Center(child: Text("List is empty"));
                          } else {
                            return ListView.builder(
                                itemCount: tutoral.length,
                                itemBuilder: (context, index) {
                                  GlobalKey<FormState> formkey = GlobalKey();

                                  return Dismissible(
                                    direction: DismissDirection.endToStart,
                                    onDismissed: (direction) {
                                      context.read<LessonFormBloc>().add(
                                          LessonFormEvent.deleteTutorial(
                                              id: tutoral[index].id!,
                                              context: context));
                                    },
                                    key: formkey,
                                    background: Container(
                                      color: Colors.red[100],
                                      child: const Padding(
                                        padding: EdgeInsets.only(right: 30),
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                    child: ListTile(
                                      trailing: IconButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                              builder: (context) =>
                                                  UpdatingTutorial(
                                                      tutoral: tutoral[index]),
                                            ));
                                          },
                                          icon:
                                              const Icon(Icons.edit, size: 16)),
                                      leading: CircleAvatar(
                                        radius: 28,
                                        child: Text(
                                          "0${index + 1}",
                                          style: GoogleFonts.roboto(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      title: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                tutoral[index].title,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                              "Level : ${tutoral[index].level}",
                                              style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        }
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
