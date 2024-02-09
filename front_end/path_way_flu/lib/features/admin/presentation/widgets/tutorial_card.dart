import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/admin/data/models/tutoral_model.dart';
import 'package:path_way_flu/features/admin/presentation/bloc/admin_bloc.dart';
import 'package:path_way_flu/features/admin/presentation/pages/updating_tutorial.dart';

class TutoralCard extends StatelessWidget {
  const TutoralCard({
    super.key,
    required this.tutorial,
  });

  final List<Tutorial> tutorial;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .9,
      child: ListView.builder(
          itemCount: tutorial.length,
          itemBuilder: (context, index) {
            GlobalKey<FormState> dimissebleKey = GlobalKey();
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Dismissible(
                direction: DismissDirection.endToStart,
                key: dimissebleKey,
                onDismissed: (onDismiss) {
                  context.read<AdminBloc>().add(AdminEvent.deleteTutorial(
                      context: context, id: tutorial[index].id!));
                },
                background: Container(
                  decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(18))),
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.delete,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                      border: Border.all(
                          width: 3,
                          color: const Color.fromARGB(255, 236, 236, 236)),
                    ),
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Image.file(
                            File(tutorial[index].tumbnailImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.background,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 3,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary)),
                            child: Center(
                                child: Text(
                              "${index + 1}",
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ))),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Theme.of(context).colorScheme.onSecondary,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(tutorial[index].title.toUpperCase(),
                                          style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700)),
                                      Text(
                                        tutorial[index].creator,
                                        style: GoogleFonts.quicksand(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        tutorial[index].level.toUpperCase(),
                                        style: GoogleFonts.quicksand(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50),
                                    child: IconButton(
                                        onPressed: () {
                                          context.read<AdminBloc>().add(
                                              AdminEvent
                                                  .updateTutoraPageButtonClick(
                                                      tutorial:
                                                          tutorial[index]));

                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (ctx) =>
                                                      UpdatingTutorial(
                                                          tutoral: tutorial[
                                                              index])));
                                        },
                                        icon: Icon(
                                          Icons.edit,
                                          size: 20,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
