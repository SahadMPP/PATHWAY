import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/pages/admin/bloc/admin_bloc.dart';
import 'package:path_way_flu/app/pages/admin/pages/updating_tutorial.dart';


class TutoralCard extends StatefulWidget {
  const TutoralCard({
    super.key,
    required this.tutorial,
  });

  final List<Tutorial> tutorial;

  @override
  State<TutoralCard> createState() => _TutoralCardState();
}

class _TutoralCardState extends State<TutoralCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .9,
      child: ListView.builder(
          itemCount: widget.tutorial.length,
          itemBuilder: (context, index) {
            GlobalKey<FormState> dimissebleKey = GlobalKey();
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Dismissible(
                direction: DismissDirection.endToStart,
                key: dimissebleKey,
                onDismissed: (onDismiss) {
               
                  showDialog(context: context, builder: (context) =>  AlertDialog(
                    content: const Text("Are you sure ?",style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold),),
                    actionsAlignment: MainAxisAlignment.spaceEvenly,
                    icon: const Icon(Icons.dangerous,color: Colors.red,size: 30),
                    backgroundColor: Colors.grey[400],
                    alignment: Alignment.bottomCenter,
                    actions: [
                      ElevatedButton(onPressed: (){
                           context.read<AdminBloc>().add(AdminEvent.deleteTutorial(
                      context: context, id: widget.tutorial[index].id!));
                        Navigator.of(context).pop();
                        
                      }, child: const Text('Yes',style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,color: Colors.black),)),
                      ElevatedButton(onPressed: (){
                        setState(() {
                        Navigator.of(context).pop();
                        });
                      }, child: const Text('No',style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,color: Colors.black),)),
                    ],
                  ),);
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
                            File("widget.tutorial[index].tumbnailImage"),
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
                                      Text(widget.tutorial[index].title.toUpperCase(),
                                          style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700)),
                                      Text(
                                        "widget.tutorial[index].creator",
                                        style: GoogleFonts.quicksand(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        widget.tutorial[index].level.toUpperCase(),
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
                                                          widget.tutorial[index]));
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (ctx) =>
                                                      UpdatingTutorial(
                                                          tutoral: widget.tutorial[
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
