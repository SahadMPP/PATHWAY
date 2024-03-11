import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/button_buil.dart';
import 'package:path_way_flu/app/pages/student/pages/collecting%20initial%20deatiles/bloc/student_init_deatiles_bloc.dart';
import 'package:path_way_flu/main.dart';

class TeacherProfleImage extends StatelessWidget {
  const TeacherProfleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Text(
                'hey,$userName',
                style: kHeadingextStyle.copyWith(letterSpacing: 0),
              ),
               Text(
                'Just conform your profile picture added',
                style: GoogleFonts.roboto(fontSize: 22,height: 2),
              ),
              const SizedBox(height: 150),
              Align(
                alignment: Alignment.center,
                child: BlocBuilder<StudentInitDeatilesBloc,
                    StudentInitDeatilesState>(
                  builder: (context, state) {
                    return Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: CircleAvatar(
                            radius: 90,
                            child: state.selectedImage == null
                                ? const Image(
                                    image: AssetImage(
                                        "asset/images(adding icon).png"),
                                    fit: BoxFit.cover,
                                    filterQuality: FilterQuality.high,
                                  )
                                : Image.file(
                                    File(state.selectedImage!),
                                    fit: BoxFit.cover,
                                    width: 180,
                                    height: 180,
                                  ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor:
                                Theme.of(context).colorScheme.onSecondary,
                            child: IconButton(
                              onPressed: () {
                                context.read<StudentInitDeatilesBloc>().add(
                                    const StudentInitDeatilesEvent
                                        .pikingImge());
                              },
                              icon: Icon(Icons.edit,
                                  color:
                                      Theme.of(context).colorScheme.background),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 150),
              Align(
                  alignment: Alignment.center,
                  child: BuildButton(
                      text: "Add Image",
                      fun: () {
                        context.read<StudentInitDeatilesBloc>().add(
                            StudentInitDeatilesEvent.updateingImage(
                                context: context, id: userId!));
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
