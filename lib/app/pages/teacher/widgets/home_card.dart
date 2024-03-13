import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/pages/student/pages/student%20home/bloc/student_home_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/teacher%20home/bloc/teacher_home_bloc.dart';


class BuildHomeBox extends StatelessWidget {
  final int isSelected;
  final String currentsub;

  const BuildHomeBox({
    super.key,
    required this.isSelected,
    required this.currentsub,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: FutureBuilder(
          future: StudentApi.getAllLession(currentsub),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Lesson> lession = snapshot.data;
              if (lession.isEmpty) {
                return const Center(
                  child: Text("Oop's list is empty"),
                );
              } else {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lession.length,
                    itemBuilder: (context, index) {
                      return BlocBuilder<StudentHomeBloc, StudentHomeState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              context.read<StudentHomeBloc>().add(StudentHomeEvent.deatilePage(context: context, lesson: lession[index]));
                            },
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: ClipRRect(
                                  
                                    borderRadius: BorderRadius.circular(25),
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10, top: 10),
                                      color:
                                          Theme.of(context).colorScheme.secondary,
                                      width: MediaQuery.of(context).size.width * .6,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                              height: 110,
                                              width: double.infinity,
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: Image.network(
                                                    "http://learnpro.today:5000/${lession[index].coverImage}",
                                                    fit: BoxFit.cover,
                                                  ))),
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    ConstrainedBox(
                                                      constraints:
                                                          const BoxConstraints(
                                                              maxWidth: 150),
                                                      child: Text(
                                                        lession[index].title,
                                                        style: GoogleFonts.aBeeZee(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                    ),
                                                    const Image(
                                                      image: AssetImage(
                                                          "asset/icons/icons8-best-seller-94.png"),
                                                      height: 30,
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    const CircleAvatar(
                                                      radius: 15,
                                                      backgroundImage: AssetImage(
                                                          "asset/profiles/chat555.png"),
                                                    ),
                                                    const SizedBox(width: 5),
                                                    Text(
                                                      lession[index].creatorName,
                                                      style: GoogleFonts.quicksand(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "${lession[index].watchTime} min",
                                                      style: GoogleFonts.aBeeZee(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          wordSpacing: 3),
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.circle,
                                                          color: Colors.grey,
                                                          size: 10,
                                                        ),
                                                        const SizedBox(width: 5),
                                                        Text(
                                                          "${lession[index].lessonId.length} ${AppLocalizations.of(context)!.lesson}",
                                                          style:
                                                              GoogleFonts.aBeeZee(
                                                                  color:
                                                                      Colors.grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  wordSpacing: 3),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                 Align(
                                alignment: Alignment.topRight,
                                child: BlocBuilder<TeacherHomeBloc, TeacherHomeState>(
                                  builder: (context, state) {
                                    return Visibility(
                                        visible: lession[index]
                                            .lessonId.isEmpty,
                                        child: Image.asset(
                                          "asset/icons/coming-soon.png",
                                          height: 45,
                                        ));
                                  },
                                ))
                              ],
                            ),
                          );
                        },
                      );
                    });
              }
            }
          }),
    );
  }
}
