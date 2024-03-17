import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/ui/see_all_category.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/pages/student/pages/student%20home/bloc/student_home_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/home_card.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/home_top_card.dart';
import 'package:path_way_flu/main.dart';

class StudentHomeMob extends StatelessWidget {
  const StudentHomeMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Row(
          children: [
            SizedBox(
              height: 45,
              width: 45,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image(
                    image: NetworkImage("${AuthApi.baseUrlImage}$userProfile"),
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context).welcome,
                  style: GoogleFonts.aBeeZee(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 90, 90, 90),
                  ),
                ),
                Text(
                  userName ?? "null",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  context
                      .read<StudentHomeBloc>()
                      .add(StudentHomeEvent.navigatingSeeAll(context: context));
                },
                child: SvgPicture.asset("asset/icons/search.svg")),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(AppLocalizations.of(context).suggestedyou,
                  style: kTitleTextStyle),
              const SizedBox(height: 15),
              const BuildHomeBoxTop(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context).topics,
                      style: kTitleTextStyle),
                  InkWell(
                    onTap: () {
                      context.read<StudentHomeBloc>().add(
                          StudentHomeEvent.navigatingSeeAll(context: context));
                    },
                    child: Text(AppLocalizations.of(context).seeall,
                        style: kSubtitleTextSyule.copyWith(color: kBlueColor)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                        constraints:
                            const BoxConstraints(maxHeight: 20, maxWidth: 130),
                        child: BlocBuilder<StudentHomeBloc, StudentHomeState>(
                          builder: (context, state) {
                            return ElevatedButton(
                                style: ButtonStyle(
                                    side: MaterialStatePropertyAll(BorderSide(
                                        color: state.selectedTopic == index
                                            ? Colors.blue[400]!
                                            : Colors.transparent,
                                        width: 2)),
                                    backgroundColor: MaterialStatePropertyAll(
                                      Theme.of(context).colorScheme.primary,
                                    )),
                                onPressed: () {
                                  context.read<StudentHomeBloc>().add(
                                      StudentHomeEvent.swichingSubjectList(
                                          index: index));
                                },
                                child: Text(
                                  subjectList[index]['name']!,
                                  style:
                                      GoogleFonts.aBeeZee(color: Colors.grey),
                                ));
                          },
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                        constraints:
                            const BoxConstraints(maxHeight: 20, maxWidth: 130),
                        child: BlocBuilder<StudentHomeBloc, StudentHomeState>(
                          builder: (context, state) {
                            return ElevatedButton(
                                style: ButtonStyle(
                                    side: MaterialStatePropertyAll(BorderSide(
                                        color: state.selectedTopic == index + 4
                                            ? Colors.blue[400]!
                                            : Colors.transparent,
                                        width: 2)),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Theme.of(context).colorScheme.primary)),
                                onPressed: () {
                                  context.read<StudentHomeBloc>().add(
                                      StudentHomeEvent.swichingSubjectList(
                                          index: index + 4));
                                },
                                child: Text(
                                  subjectList[index + 4]['name']!,
                                  style:
                                      GoogleFonts.aBeeZee(color: Colors.grey),
                                ));
                          },
                        )),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<StudentHomeBloc, StudentHomeState>(
                builder: (context, state) {
                  return Text(state.currentSubject, style: kTitleTextStyle);
                },
              ),
              const SizedBox(height: 15),
              BlocBuilder<StudentHomeBloc, StudentHomeState>(
                builder: (context, state) {
                  return BuildHomeBox(
                    currentsub: state.currentSubject,
                    isSelected: state.selectedTopic,
                  );
                },
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context).featurecourse,
                      style: kTitleTextStyle),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const SeeAllCategory()));
                    },
                    child: Text(AppLocalizations.of(context).seeall,
                        style: kSubtitleTextSyule.copyWith(color: kBlueColor)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              BlocBuilder<StudentHomeBloc, StudentHomeState>(
                builder: (context, state) {
                  return BuildHomeBox(
                    currentsub: state.currentSubject,
                    isSelected: state.selectedTopic,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
