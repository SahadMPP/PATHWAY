import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/teacher/bloc/teacher_bloc.dart';

class BuildExpDropDown extends StatelessWidget {
  const BuildExpDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Level",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(255, 202, 202, 202),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey, width: 1)),
            width: double.infinity,
            height: 60,
            child: BlocBuilder<TeacherBloc, TeacherState>(
              builder: (context, state) {
                return DropdownButton<String>(
                    borderRadius: BorderRadius.circular(15),
                    focusColor: Colors.blueGrey,
                    dropdownColor: Colors.white,
                    value: state.expDropDown,
                    style: GoogleFonts.roboto(fontSize: 18),
                    items: const [
                      DropdownMenuItem(
                          value: "1",
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                      DropdownMenuItem(
                          value: "2",
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                      DropdownMenuItem(
                          value: "3",
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                      DropdownMenuItem(
                          value: "4",
                          child: Text(
                            '3>',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                    ],
                    onChanged: (newValue) {
                      context.read<TeacherBloc>().add(
                          TeacherEvent.levelclickEventInAddiTutorial(
                              level: newValue!));
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
