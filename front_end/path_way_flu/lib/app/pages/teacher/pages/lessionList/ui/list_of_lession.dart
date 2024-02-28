import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lessionList/bloc/lession_list_bloc.dart';

class ListOfLession extends StatelessWidget {
  const ListOfLession({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .read<LessionListBloc>()
              .add(LessionListEvent.navigatingLessionFrom(context: context));
        },
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        child: Icon(Icons.add,
            color: Theme.of(context).colorScheme.background, size: 30),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Lessions",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 2,
          ),
        ),
      ),
      body: FutureBuilder(
          future: TeacherApi.getAllLession(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              List<Lession> lesson = snapshot.data;
              if (lesson.isEmpty) {
                return const Center(
                  child: Text("List is empty"),
                );
              } else {
                return ListView.builder(
                    itemCount: lesson.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(15),
                        height: 150,
                        width: double.infinity,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 110,
                              width: 110,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.file(
                                  File(lesson[index].coverImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    lesson[index].title,
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      height: 2,
                                    ),
                                  ),
                                  Text(
                                    "Lession ${lesson[index].countOfLesson}",
                                    style: GoogleFonts.quicksand(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          context.read<LessionListBloc>().add(LessionListEvent.updateLession(context: context, lesson: lesson[index]));
                                        },
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Theme.of(context)
                                                        .colorScheme
                                                        .onSurface)),
                                        child: const Text('Keep Processing'),
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
              }
            }
          }),
    );
  }
}
