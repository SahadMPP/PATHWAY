import 'dart:typed_data';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lesson%20Form/bloc/lesson_form_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/ui/adding_tutorial_form.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/lesson_form_tutoral_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/sub_lesson_dropdown_copy.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/textfield.dart';

class LessonFormDesk extends StatelessWidget {
  const LessonFormDesk({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
            child: Text(AppLocalizations.of(context).cancel,
                style: GoogleFonts.roboto(
                    color: Colors.red[400],
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
          Text(
            AppLocalizations.of(context).addlesson,
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
                    if (state.imagefile != null) {
                      
                      context.read<LessonFormBloc>().add(
                          LessonFormEvent.addingLession(
                              price:priceController.text,
                              context: context,
                              subject: state.dropDownpiker!,
                              title: titleController.text,
                              coverImage: state.imagefile.toString()));
                    } else {
                      buildShowSnacbar(
                          context: context,
                          content: "try to add cover image",
                          title: "Oop's ",
                          contentType: ContentType.warning);
                    }
                  }
                },
                child: Text(AppLocalizations.of(context).save,
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
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 50, top: 50),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            BuildAddTutorFormText(
                              title: AppLocalizations.of(context).title,
                              hintText: "title",
                              controllre: titleController,
                              validateText: "Title",
                            ),
                            const SizedBox(height: 20),
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
                      const SizedBox(height: 20),
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
                      const SizedBox(height: 20),
                      Text(
                        AppLocalizations.of(context).coverimage,
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                      // change bloc
                      const SizedBox(height: 20),
                      BlocBuilder<LessonFormBloc, LessonFormState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              context
                                  .read<LessonFormBloc>()
                                  .add(const LessonFormEvent.fileImagePiker());
                            },
                            child: BlocBuilder<LessonFormBloc, LessonFormState>(
                              builder: (context, state) {
                                return Container(
                                    height: 300,
                                    width:
                                        MediaQuery.of(context).size.width * .3,
                                    color: Colors.grey,
                                    child:state.imagefile == null
                                        ? const Image(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "asset/images(adding icon).png"))
                                        : Image.memory(
                                            Uint8List.fromList(
                                                state.imagefile!.bytes!),
                                            fit: BoxFit.cover));
                              },
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 50),
                    ]),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(14)),
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context).lession,
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (ctx) => const AddTotorialForm()));
                          },
                          child: Text(
                            AppLocalizations.of(context).add,
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
                    const LessonList(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
