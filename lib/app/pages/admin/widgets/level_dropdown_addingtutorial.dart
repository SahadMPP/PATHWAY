import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/bloc/tutorial_adding_form_bloc.dart';

class BuildLevelDropDown extends StatelessWidget {
  const BuildLevelDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        BlocBuilder<TutorialAddingFormBloc, TutorialAddingFormState>(
          builder: (context, state) {
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey, width: 2)),
              width: double.infinity,
              height: 60,
              child: DropdownButton<String>(
                  focusColor: Colors.blueGrey,
                  dropdownColor: Colors.white,
                  value: state.levelDropDown,
                  style: GoogleFonts.roboto(fontSize: 18),
                  items: const [
                    DropdownMenuItem(
                        value: "Basic",
                        child: Text(
                          'Basic',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )),
                    DropdownMenuItem(
                        value: "Proficient",
                        child: Text(
                          'Proficient',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )),
                    DropdownMenuItem(
                        value: "Advanced",
                        child: Text(
                          'Advanced',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )),
                  ],
                  onChanged: (newValue) {
               context.read<TutorialAddingFormBloc>().add(TutorialAddingFormEvent.dropDownLevelPiker(level: newValue!));
                  }),
            );
          },
        ),
      ],
    );
  }
}
