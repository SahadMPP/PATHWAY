import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/lesson_form_appbar.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/lesson_form_tutoral_list.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/textfield.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/ui/adding_tutorial_form.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lesson%20Form/bloc/lesson_form_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/sub_lesson_dropdown_copy.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LessonFormMob extends StatelessWidget {
  const LessonFormMob({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    TextEditingController titleController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    return Scaffold(
      appBar: buildLessonFormAppBar(
          context, formKey, priceController, titleController),
      body: BlocBuilder<LessonFormBloc, LessonFormState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.start,
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
                        AppLocalizations.of(context).coverimage,
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
                                        image: AssetImage(
                                            "asset/images(adding icon).png"))
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
                                      builder: (ctx) =>
                                          const AddingTotorial()));
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
                      const SizedBox(height: 10),
                      const LessonList(),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
