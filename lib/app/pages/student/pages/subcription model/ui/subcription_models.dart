import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/pages/student/pages/subcription%20model/bloc/subcription_bloc.dart';
import 'package:path_way_flu/app/pages/student/widgets/subcription_listview.dart';
import 'package:path_way_flu/app/pages/student/widgets/subcription_sub_card.dart';
import 'package:path_way_flu/main.dart';

class SubcriptionScreen extends StatelessWidget {
  const SubcriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SubcriptionBloc>().add(const SubcriptionEvent.gettingTotelAmount());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: true,
        title: Text(
          'Hi,$userName',
          style: GoogleFonts.aBeeZee(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    BlocBuilder<SubcriptionBloc, SubcriptionState>(
                      builder: (context, state) {
                        return Text(
                          "₹${state.totelAmont}",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 80,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0,
                            height: 0,
                          ),
                        );
                      },
                    ),
                    Text(
                      AppLocalizations.of(context).fortotalcourse,
                      style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                          height: 0,
                          color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SubcriptionMiniCard(
                      text: AppLocalizations.of(context).moresubs,
                      icon: Icons.settings,
                      bgcolor: Colors.transparent,
                      borderColor: Colors.grey[800]),
                  const Spacer(),
                  SubcriptionMiniCard(
                      text: AppLocalizations.of(context).addnewsub,
                      icon: Icons.add,
                      bgcolor: Theme.of(context).colorScheme.primary,
                      borderColor: Theme.of(context).colorScheme.secondary),
                ],
              ),
              const SizedBox(height: 40),
              BuildSubcriptionSubhead(
                  text:
                      "${AppLocalizations.of(context).subscriptions}(${subjectList.length})"),
              const SizedBox(height: 10),
              FutureBuilder(
                  future: TeacherApi.getAllLession(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      List<Lesson> listLesson = snapshot.data;
                      if (listLesson.isEmpty) {
                        return const Center(child: Text("List is Empty"));
                      } else {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: 350,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              border: Border.all(
                                  width: 1,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: ListView.builder(
                              itemCount: listLesson.length,
                              itemBuilder: (context, index) =>
                                  BuildSubcriptionListViewCard(
                                      index: index, lesson: listLesson[index]),
                            ),
                          ),
                        );
                      }
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
