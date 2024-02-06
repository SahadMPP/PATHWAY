import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/admin/data/models/tutoral_model.dart';
import 'package:path_way_flu/features/admin/data/repositories/admin_api.dart';
import 'package:path_way_flu/features/admin/presentation/pages/adding_tutorial_form.dart';
import 'package:path_way_flu/features/admin/presentation/pages/updating_tutorial.dart';
import 'package:path_way_flu/features/student/presentation/widgets/hedline_back.dart';

class ListOfTutorial extends StatefulWidget {
  final String category;
  const ListOfTutorial({super.key, required this.category});

  @override
  State<ListOfTutorial> createState() => _ListOfTutorialState();
}

class _ListOfTutorialState extends State<ListOfTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const AddTotorialForm()));
            },
            backgroundColor: const Color.fromARGB(255, 0, 111, 202),
            child: const Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [
              BuildHeadlinewithBack(
                  fun: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icons.arrow_back,
                  headline: widget.category),
              const SizedBox(height: 10),
              RefreshIndicator(
                onRefresh: () => AdminApi.getTotorial(widget.category),
                child: FutureBuilder(
                    future: AdminApi.getTotorial(widget.category),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                            child: CircularProgressIndicator(
                          color: Colors.grey,
                        ));
                      } else {
                        List<Tutorial> tutorial = snapshot.data;
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * .9,
                          child: ListView.builder(
                              itemCount: tutorial.length,
                              itemBuilder: (context, index) {
                                GlobalKey<FormState> dimissebleKey =
                                    GlobalKey();
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Dismissible(
                                    direction: DismissDirection.endToStart,
                                    key: dimissebleKey,
                                    onDismissed: (onDismiss) {
                                      setState(() {
                                        AdminApi.deleteTotorial(
                                            tutorial[index].id, context);
                                      });
                                    },
                                    background: Container(
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 224, 222),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(18))),
                                      child: const Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 20),
                                          child: Icon(
                                            Icons.delete,
                                            size: 25,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(18)),
                                          border: Border.all(
                                              width: 3,
                                              color: const Color.fromARGB(
                                                  255, 236, 236, 236)),
                                        ),
                                        width: double.infinity,
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150,
                                              width: double.infinity,
                                              decoration: const BoxDecoration(),
                                              child: Image.file(
                                                File(tutorial[index]
                                                    .tumbnailImage),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        width: 3,
                                                        color: Colors.grey)),
                                                child: Center(
                                                    child: Text(
                                                  "${index + 1}",
                                                  style: GoogleFonts.aBeeZee(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ))),
                                            Positioned(
                                              bottom: 0,
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                color: const Color.fromARGB(
                                                    255, 234, 234, 234),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          tutorial[index]
                                                              .title
                                                              .toUpperCase(),
                                                          style: GoogleFonts
                                                              .roboto(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                        ),
                                                        Text(
                                                          tutorial[index]
                                                              .creator,
                                                          style: GoogleFonts
                                                              .quicksand(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                        Text(
                                                          tutorial[index]
                                                              .level
                                                              .toUpperCase(),
                                                          style: GoogleFonts
                                                              .quicksand(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 50),
                                                      child: IconButton(
                                                          onPressed: () {
                                                            Navigator.of(context).push(
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (ctx) =>
                                                                            UpdatingTutorial(
                                                                              tutoral: tutorial[index],
                                                                            )));
                                                          },
                                                          icon: const Icon(
                                                            Icons.edit,
                                                            size: 20,
                                                          )),
                                                    )
                                                  ],
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
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
