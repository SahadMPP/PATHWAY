import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/student/pages/collecting%20initial%20deatiles/bloc/student_init_deatiles_bloc.dart';
import 'package:path_way_flu/app/pages/student/widgets/age_piker.dart';

class StudentAgePiking extends StatelessWidget {
  const StudentAgePiking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child:
                    BlocBuilder<StudentInitDeatilesBloc, StudentInitDeatilesState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        Text(
                          "Which age group are you in?",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.robotoSlab(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 100),
                        BuildAgePiker(
                          text: "5 - 15 YRS.",
                          isSelected: state.selectedLevel == 'Basic',
                          function: () {
                            context.read<StudentInitDeatilesBloc>().add(
                                const StudentInitDeatilesEvent.pikingLevel(
                                    level: 'Basic'));
                          },
                        ),
                        const SizedBox(height: 50),
                        BuildAgePiker(
                          text: "16 - 17 YRS.",
                          isSelected: state.selectedLevel == 'Proficient',
                          function: () {
                            context.read<StudentInitDeatilesBloc>().add(
                                const StudentInitDeatilesEvent.pikingLevel(
                                    level: 'Proficient'));
                          },
                        ),
                        const SizedBox(height: 50),
                        BuildAgePiker(
                          text: "18 YRS . & ABOVE",
                          isSelected: state.selectedLevel == 'Advanced',
                          function: () {
                            context.read<StudentInitDeatilesBloc>().add(
                                const StudentInitDeatilesEvent.pikingLevel(
                                    level: 'Advanced'));
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: TextButton(onPressed: (){
                context.read<StudentInitDeatilesBloc>().add(StudentInitDeatilesEvent.updatingLevel(context: context));
              }, child:  Text("Continue",style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                decoration: TextDecoration.underline,
                fontSize: 18,
              ),)),
            ),
          ],
        ),
      ),
    );
  }
}
