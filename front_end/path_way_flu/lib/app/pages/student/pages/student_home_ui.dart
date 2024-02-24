import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/pages/student/pages/see_all_category.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/main.dart';

class StuHome extends StatefulWidget {
  const StuHome({super.key});

  @override
  State<StuHome> createState() => _StuHomeState();
}

class _StuHomeState extends State<StuHome> {
  int isSelectedTopic = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("asset/images/user.png"),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.welcome,
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
            SvgPicture.asset("asset/icons/search.svg"),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
               Text(AppLocalizations.of(context)!.suggestedCourses, style: kTitleTextStyle),
              const SizedBox(height: 15),
              const BuildHomeBoxTop(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(AppLocalizations.of(context)!.topics, style: kTitleTextStyle),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const SeeAllCategory()));
                    },
                    child: Text(AppLocalizations.of(context)!.seeAll,
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
                        child: ElevatedButton(
                            style: ButtonStyle(
                                side: MaterialStatePropertyAll(BorderSide(
                                    color: isSelectedTopic == index
                                        ? Colors.blue[400]!
                                        : Colors.transparent,
                                    width: 2)),
                                backgroundColor: MaterialStatePropertyAll(
                                  Theme.of(context).colorScheme.primary,
                                )),
                            onPressed: () {
                              setState(() {
                                isSelectedTopic = index;
                              });
                            },
                            child: Text(
                              subjectList[index]['name']!,
                              style: GoogleFonts.aBeeZee(color: Colors.grey),
                            ))),
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
                        child: ElevatedButton(
                            style: ButtonStyle(
                                side: MaterialStatePropertyAll(BorderSide(
                                    color: isSelectedTopic == index + 4
                                        ? Colors.blue[400]!
                                        : Colors.transparent,
                                    width: 2)),
                                backgroundColor: MaterialStatePropertyAll(
                                    Theme.of(context).colorScheme.primary)),
                            onPressed: () {
                              setState(() {
                                isSelectedTopic = index + 4;
                              });
                            },
                            child: Text(
                              subjectList[index + 4]['name']!,
                              style: GoogleFonts.aBeeZee(color: Colors.grey),
                            ))),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text("Art", style: kTitleTextStyle),
              const SizedBox(height: 15),
              BuildHomeBox(
                isSelected: isSelectedTopic,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(AppLocalizations.of(context)!.featuredCourse, style: kTitleTextStyle),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const SeeAllCategory()));
                    },
                    child: Text(AppLocalizations.of(context)!.seeAll,
                        style: kSubtitleTextSyule.copyWith(color: kBlueColor)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              BuildHomeBox(
                isSelected: isSelectedTopic,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BuildHomeBoxTop extends StatelessWidget {
  const BuildHomeBoxTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 150,
        width: double.infinity,
        color: Theme.of(context).colorScheme.secondary,
        child: Row(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 120, maxWidth: 150),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(
                  image: AssetImage("asset/images/math image.jpg"),
                ),
              ),
            ),
            const SizedBox(width: 15),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * .45,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Global business Trends and markets",
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 5),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Color.fromARGB(255, 0, 255, 8),
                            size: 10,
                          ),
                          const SizedBox(width: 5),
                          Text("20 ${AppLocalizations.of(context)!.lesson}")
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Colors.yellow,
                            size: 10,
                          ),
                          const SizedBox(width: 5),
                          Text("20${AppLocalizations.of(context)!.min}")
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("1,500"),
                      SizedBox(
                        height: 35,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Theme.of(context).colorScheme.secondary),
                                side: const MaterialStatePropertyAll(
                                    BorderSide(width: 1, color: Colors.green))),
                            child: Text(
                              AppLocalizations.of(context)!.enrollNow,
                              style: GoogleFonts.quicksand(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildHomeBox extends StatelessWidget {
  final int isSelected;
  const BuildHomeBox({
    super.key,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: FutureBuilder(
          future:
              StudentApi.getTotorialStudent(subjectList[isSelected]['name']!),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Tutorial> tutoral = snapshot.data;
              if (tutoral.isEmpty) {
                return const Center(
                  child: Text("Oop's list is empty"),
                );
              } else {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tutoral.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: SizedBox(
                            height: 200,
                            child: Column(
                              children: [
                                SizedBox(
                                    height: 100,
                                    width:
                                        MediaQuery.of(context).size.width * .8,
                                    child: Image.file(
                                      File(tutoral[index].tumbnailImage),
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 100,
                                  width: MediaQuery.of(context).size.width * .8,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ConstrainedBox(
                                        constraints:
                                            const BoxConstraints(maxWidth: 200),
                                        child: Text(
                                          tutoral[index].title,
                                          style: GoogleFonts.aBeeZee(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "1500",
                                            style: GoogleFonts.aBeeZee(
                                                fontWeight: FontWeight.bold,
                                                wordSpacing: 3),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle,
                                                color: Colors.yellow,
                                                size: 10,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                "4.7(1500)",
                                                style: GoogleFonts.aBeeZee(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                    wordSpacing: 3),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              }
            }
          }),
    );
  }
}
