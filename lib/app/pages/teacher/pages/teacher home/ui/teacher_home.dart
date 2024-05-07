import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/ui/see_all.dart';
import 'package:path_way_flu/app/pages/teacher/pages/teacher%20home/bloc/teacher_home_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/home_card.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/home_top_card.dart';
import 'package:path_way_flu/main.dart';

class TeachHome extends StatelessWidget {
  const TeachHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image(
                    image: NetworkImage(
                        "${AuthApi.baseUrlImage}${userProfile ?? ""}"),
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
                  context.read<TeacherHomeBloc>().add(
                      TeacherHomeEvent.navigatingSeeAllPage(context: context));
                },
                child: SvgPicture.asset("asset/icons/search.svg")),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const SeeAll()));
                    },
                    child: Text(AppLocalizations.of(context).seeall,
                        style: kSubtitleTextSyule.copyWith(color: kBlueColor)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
               BlocBuilder<TeacherHomeBloc, TeacherHomeState>(
                builder: (context, state) {
                  return Wrap(
                      spacing: 10,
                      runSpacing: 5,
                      children: List.generate(
                          subjectList.length,
                          (index) => GestureDetector(
                            onTap: () => context.read<TeacherHomeBloc>().add(TeacherHomeEvent.swichingSubjectList(index: index)),
                            child: Chip(                              
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side:  BorderSide(
                                          color: state.selectedTopic == index
                                              ? Colors.blue[400]!
                                              : Colors.transparent)),
                                  label: Text(subjectList[index]['name']!),
                                  backgroundColor: Colors.grey[100],
                                  labelStyle:
                                      GoogleFonts.aBeeZee(color: Colors.grey),
                                ),
                          )));
                },
              ),
              const SizedBox(height: 10),
              BlocBuilder<TeacherHomeBloc, TeacherHomeState>(
                builder: (context, state) {
                  return Text(state.currentSubject, style: kTitleTextStyle);
                },
              ),
              BlocBuilder<TeacherHomeBloc, TeacherHomeState>(
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
                          builder: (ctx) => const SeeAll()));
                    },
                    child: Text(AppLocalizations.of(context).seeall,
                        style: kSubtitleTextSyule.copyWith(color: kBlueColor)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              BlocBuilder<TeacherHomeBloc, TeacherHomeState>(
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
