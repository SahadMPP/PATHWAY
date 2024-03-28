import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lesson%20Form/bloc/lesson_form_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/main.dart';

AppBar buildLessonFormAppBar(
    BuildContext context,
    GlobalKey<FormState> formKey,
    TextEditingController priceController,
    TextEditingController titleController) {
  return AppBar(
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
                  if (state.pikedImage != null) {
                    context.read<LessonFormBloc>().add(
                        
                        LessonFormEvent.addingLession(
                            profileImage: userProfile!,
                            price: priceController.text,
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
  );
}
