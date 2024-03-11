import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lesson%20Form/bloc/lesson_form_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorialUpdateForm/ui/updating_tutorial.dart';

class LessonList extends StatelessWidget {
  const LessonList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<LessonFormBloc, LessonFormState>(
        builder: (context, state) {
          return FutureBuilder(
              future: TeacherApi.getTotorial(""),
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
    );
  }
}
