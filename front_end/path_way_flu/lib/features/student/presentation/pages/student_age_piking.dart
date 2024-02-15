import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/student/presentation/widgets/age_piker.dart';

class StudentAgePiking extends StatelessWidget {
  const StudentAgePiking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Which age group are your in?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoSlab(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 100),
                  const BuildAgePiker( text: "5 - 15 YRS."),
                  const SizedBox(height: 50),
                  const BuildAgePiker( text: "16 - 17 YRS."),
                  const SizedBox(height: 50),
                  const BuildAgePiker( text: "18 YRS . & ABOVE"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

