import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/core/bargraph_admin/bar_graph.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/pages/admin/pages/list_of_student.dart';
import 'package:path_way_flu/app/pages/admin/pages/list_of_teacher.dart';

class AdminDashbord extends StatelessWidget {
  const AdminDashbord({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> weeklySummary = [
      20.40,
      30.40,
      40.40,
      90.40,
      60.40,
      30.40,
    ];
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.dashbord,
                    style: kHeadingextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset("asset/icons/menu.svg"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Divider(
                color: Theme.of(context).colorScheme.secondary,
                thickness: 2,
              ),
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppLocalizations.of(context)!.primaryText,
                          style: kTitleTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )),
                      Text("5.324,33",
                          style: kHeadingextStyle.copyWith(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0)),
                      Text(AppLocalizations.of(context)!.secondaryText,
                          style: kSubheadingextStyle.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 280,
                width: double.infinity,
                child: MyBarGraph(weeklySummary: weeklySummary),
              ),
              const SizedBox(height: 50),
              Divider(
                color: Theme.of(context).colorScheme.secondary,
                thickness: 2,
              ),
              BuildPrograssIndicator(
                  function: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const ListOfTeacher()));
                  },
                  title: AppLocalizations.of(context)!.tutorProgress,
                  persenteg: AppLocalizations.of(context)!.toComplete,
                  value: 0.7),
              const SizedBox(height: 20),
              BuildPrograssIndicator(
                  function: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const ListOfStudent()));
                  },
                  title: AppLocalizations.of(context)!.studentProgress,
                  persenteg: AppLocalizations.of(context)!.toComplete,
                  value: 0.5),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildPrograssIndicator extends StatelessWidget {
  final String title;
  final String persenteg;
  final double value;
  final VoidCallback function;
  const BuildPrograssIndicator({
    super.key,
    required this.title,
    required this.persenteg,
    required this.value,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: kSubtitleTextSyule.copyWith(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              persenteg,
              style: kTitleTextStyle.copyWith(fontSize: 22),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                minHeight: 10,
                value: value,
                color: Colors.grey,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                backgroundColor: const Color(0xffD6D6D6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
