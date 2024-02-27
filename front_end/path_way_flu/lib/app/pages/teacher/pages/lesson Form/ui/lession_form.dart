import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/admin/pages/adding_tutorial_form.dart';
import 'package:path_way_flu/app/pages/admin/widgets/sub_drop_down_addtutorial.dart';
import 'package:path_way_flu/app/pages/admin/widgets/textfield.dart';
import 'package:path_way_flu/app/pages/teacher/bloc/teacher_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/appbar_save_cancel.dart';

class LessionForm extends StatelessWidget {
  const LessionForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    return Scaffold(
      appBar: buildAppBar(title: "Add Lession", save: () {}, cancel: () {}),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildAddTutorFormText(
              title: "Title",
              hintText: "title",
              controllre: titleController,
              validateText: "Title is empty",
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
            const BuildSubDropDown(),
            const SizedBox(height: 10),
            Text(
              "Cover Image",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            // change bloc
            const SizedBox(height: 10),
            BlocBuilder<TeacherBloc, TeacherState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    context
                        .read<TeacherBloc>()
                        .add(const TeacherEvent.certificatePikerOne());
                  },
                  child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * .5,
                      color: Colors.grey,
                      child: state.cetificateImageOne == null
                          ? const Image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("asset/images(adding icon).png"))
                          : Image.file(
                              File(state.cetificateImageOne!),
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
                  "Cover Image",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>const AddTotorialForm()));
                }, child: Text(
                  "Add",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),)
                
              ],
            ),
            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(12),
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Text(
                          "0${index + 1}",
                          style: GoogleFonts.roboto(
                            color: Theme.of(context).colorScheme.onSecondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Title : Title",
                            style: GoogleFonts.roboto(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Duration : 2min",
                                style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text("Level : Basic",
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
