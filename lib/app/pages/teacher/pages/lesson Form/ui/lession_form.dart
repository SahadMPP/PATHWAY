import 'dart:io';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/lesson_form_tutoral_list.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/textfield.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/ui/adding_tutorial_form.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lesson%20Form/bloc/lesson_form_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/sub_lesson_dropdown%20copy.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LessionForm extends StatelessWidget {
  const LessionForm({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    TextEditingController titleController = TextEditingController();
    TextEditingController priceController = TextEditingController();
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
              child: Text(AppLocalizations.of(context)!.cancel,
                  style: GoogleFonts.roboto(
                      color: Colors.red[400],
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            Text(
              AppLocalizations.of(context)!.addlesson,
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
                                price:priceController.text,
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
                  child: Text(AppLocalizations.of(context)!.save,
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
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  BuildAddTutorFormText(
                    title: AppLocalizations.of(context)!.title,
                    hintText: "title",
                    controllre: titleController,
                    validateText: "Title",
                  ),
                   BuildAddTutorFormText(
                    title: "Price",
                    hintText: "Price",
                    controllre: priceController,
                    validateText: "price",
                    textInputType: TextInputType.number,
                  ),
                ],
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
              AppLocalizations.of(context)!.coverimage,
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
                  AppLocalizations.of(context)!.lession,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (ctx) => const AddTotorialForm(
                          
                        )));
                  },
                  child: Text(
                    AppLocalizations.of(context)!.add,
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
            const LessonList(),
          ],
        ),
      ),
    );
  }
}

