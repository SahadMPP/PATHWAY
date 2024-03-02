import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/ui/see_all_category.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/main.dart';

class StuHome extends StatefulWidget {
  const StuHome({super.key});

  @override
  State<StuHome> createState() => _StuHomeState();
}

class _StuHomeState extends State<StuHome> {
  int isSelectedTopic = 0;
  String cuttentSub = subjectList[0]['name']!;
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
        padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(AppLocalizations.of(context)!.suggestedyou,
                  style: kTitleTextStyle),
              const SizedBox(height: 15),
              const BuildHomeBoxTop(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.topics,
                      style: kTitleTextStyle),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const SeeAllCategory()));
                    },
                    child: Text(AppLocalizations.of(context)!.seeall,
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
                                cuttentSub = subjectList[isSelectedTopic]['name']!;
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
                                cuttentSub = subjectList[isSelectedTopic]['name']!;
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
               Text(cuttentSub, style: kTitleTextStyle),
              const SizedBox(height: 15),
              BuildHomeBox(
                currentsub: cuttentSub,
                isSelected: isSelectedTopic,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.featurecourse,
                      style: kTitleTextStyle),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const SeeAllCategory()));
                    },
                    child: Text(AppLocalizations.of(context)!.seeall,
                        style: kSubtitleTextSyule.copyWith(color: kBlueColor)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              BuildHomeBox(
                currentsub: cuttentSub,
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
                              AppLocalizations.of(context)!.entrollnow,
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
  final String currentsub;
  const BuildHomeBox({
    super.key,
    required this.isSelected, required this.currentsub,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: FutureBuilder(
          future:
              StudentApi.getAllLession(currentsub),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Lession> lession = snapshot.data;
              if (lession.isEmpty) {
                return const Center(
                  child: Text("Oop's list is empty"),
                );
              } else {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lession.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                            color: Theme.of(context).colorScheme.secondary,
                            width: MediaQuery.of(context).size.width * .6,
                            child: Column(
                              children: [
                                SizedBox(
                                    height: 110,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Image.network(lession[index].coverImage,fit: BoxFit.cover,)
                                    )),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ConstrainedBox(
                                            constraints: const BoxConstraints(
                                                maxWidth: 150),
                                            child: Text(
                                              lession[index].title,
                                              style: GoogleFonts.aBeeZee(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ),
                                          const Image(
                                            image: AssetImage(
                                                "asset/icons/icons8-best-seller-94.png"),
                                            height: 30,
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            radius: 15,
                                            backgroundImage: AssetImage(
                                                "asset/profiles/chat555.png"),
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            lession[index].creatorName,
                                            style: GoogleFonts.quicksand(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${lession[index].watchTime} min",
                                            style: GoogleFonts.aBeeZee(
                                                fontWeight: FontWeight.bold,
                                                wordSpacing: 3),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle,
                                                color: Colors.grey,
                                                size: 10,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                "${lession[index].countOfLesson} ${AppLocalizations.of(context)!.lesson}",
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
