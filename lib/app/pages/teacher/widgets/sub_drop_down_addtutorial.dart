import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/teacher/pages/application%20from/bloc/teacher_application_bloc.dart';

class BuildSubDropDown extends StatelessWidget {
  const BuildSubDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeacherApplicationBloc, TeacherApplicationState>(
      builder: (context, state) {
        return ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey, width: 1)),
            width: double.infinity,
            height: 60,
            child: DropdownButton<String>(
                borderRadius: BorderRadius.circular(15),
                focusColor: Colors.blueGrey,
                dropdownColor: Colors.white,
                value: state.subjectDropDown,
                style: GoogleFonts.roboto(fontSize: 18),
                items: const [
                  DropdownMenuItem(
                      value: "Mathematics",
                      child: Text(
                        'Mathematics',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                  DropdownMenuItem(
                      value: "Art",
                      child: Text(
                        'Art',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                  DropdownMenuItem(
                      value: "English",
                      child: Text(
                        'English',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                  DropdownMenuItem(
                      value: "Science",
                      child: Text(
                        'Science',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                  DropdownMenuItem(
                      value: "Geography",
                      child: Text(
                        'Geography',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                  DropdownMenuItem(
                      value: "Social Studies",
                      child: Text(
                        'Social Studies',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                  DropdownMenuItem(
                      value: "History",
                      child: Text(
                        'History',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                  DropdownMenuItem(
                      value: "Computer",
                      child: Text(
                        'Computer',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                ],
                onChanged: (newValue) {
                  context.read<TeacherApplicationBloc>().add(TeacherApplicationEvent.subjectClickEventInAddingTutoral(subject: newValue!));
                 
                }),
          ),
        );
      },
    );
  }
}
