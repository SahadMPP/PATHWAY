import 'dart:io';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lessonUpdateForm/bloc/lesson_form_update_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/ui/adding_tutorial_form.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/lesson_updartform_tuto_list.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/textfield.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lesson%20Form/bloc/lesson_form_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/sub_lesson_dropdown_update.dart';

class LessonFormUpdate extends StatelessWidget {
  final Lesson lesson;
  const LessonFormUpdate({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    TextEditingController titleController = TextEditingController();
    titleController.text = lesson.title;
    context.read<LessonFormUpdateBloc>().add(
        LessonFormUpdateEvent.givingInitialDropDownValue(
            value: lesson.subject, pikedImage: lesson.coverImage));
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
            BlocBuilder<LessonFormUpdateBloc, LessonFormUpdateState>(
              builder: (context, state) {
                return TextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      if (state.pikedImage != null) {
                        var data = {
                          "subject": state.dropdownPiker.toString(),
                          "title": titleController.text.toString(),
                          "coverImage": state.pikedImage.toString(),
                        };
                        context.read<LessonFormUpdateBloc>().add(
                            LessonFormUpdateEvent.updatelesson(
                                context: context, id: lesson.id, data: data));
                      } else {
                        buildShowSnacbar(
                            context: context,
                            content: "try to add cover image",
                            title: "Oop's ",
                            contentType: ContentType.warning);
                      }
                    }
                  },
                  child: Text('update',
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
            const BuildSubDropDownLessionUpdate(),
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
            BlocBuilder<LessonFormUpdateBloc, LessonFormUpdateState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    context
                        .read<LessonFormUpdateBloc>()
                        .add(const LessonFormUpdateEvent.imagePiking());
                  },
                  child:
                      BlocBuilder<LessonFormUpdateBloc, LessonFormUpdateState>(
                    builder: (context, state) {
                      return Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width * .5,
                          color: Colors.grey,
                          child: state.pikedImage == null
                              ? Image.network(
                                  "http://learnpro.today:5000/${lesson.coverImage}",
                                  fit: BoxFit.cover,
                                )
                              : Image.file(
                                  File(state.pikedImage!),
                                  fit: BoxFit.cover,
                                ));
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tutorial List",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (ctx) => AddTotorialForm(id: lesson.id)));
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
            TutorialList(lesson: lesson),
          ],
        ),
      ),
    );
  }
}
