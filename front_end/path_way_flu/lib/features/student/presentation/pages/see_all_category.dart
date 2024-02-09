import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/student/presentation/widgets/list_of_category.dart';

class SeeAllCategory extends StatelessWidget {
  const SeeAllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).colorScheme.secondary, width: 3),
              boxShadow: const [
                BoxShadow(blurRadius: .5),
              ],
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 20,
                )),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                'Find a course you want to learn',
                style: GoogleFonts.aBeeZee(
                  fontSize: 30,
                ),
              ),
              const ListOfCategory(),
            ],
          ),
        ),
      ),
    );
  }
}
