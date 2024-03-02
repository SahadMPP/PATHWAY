import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:path_way_flu/app/pages/student/pages/deatiles_page.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/ui/see_all_category.dart';
import 'package:path_way_flu/app/pages/student/widgets/build_see_all_subject.dart';
import 'package:path_way_flu/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class TeachHome extends StatelessWidget {
  const TeachHome({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> catogoryImages = [
    //   "asset/subjucts_icon/chemistry.jpg",
    //   "asset/subjucts_icon/mahts.png",
    //   "asset/subjucts_icon/physics.png",
    //   "asset/subjucts_icon/science.png",
    //   "asset/subjucts_icon/social.jpg",
    // ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("asset/icons/menu.svg"),
                        Image.asset("asset/images/user.png"),
                      ],
                    ),
                    const SizedBox(height: 30),
                     Text("${AppLocalizations.of(context)!.hey} $userName,", style: kHeadingextStyle),
                     Text(AppLocalizations.of(context)!.findcourse,
                        style: kSubheadingextStyle),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F7),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        children: [
                          SvgPicture.asset("asset/icons/search.svg"),
                          const SizedBox(width: 18),
                           Text(
                            AppLocalizations.of(context)!.search,
                            style: const TextStyle(
                                fontSize: 18, color: Color(0xFFA0A5BD)),
                          )
                        ],
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     const Text("Choosen cateory", style: kTitleTextStyle),
                    //     Text("Add to list",
                    //         style:
                    //             kSubtitleTextSyule.copyWith(color: kBlueColor)),
                    //   ],
                    // ),
                    // const SizedBox(height: 10),
                    // SizedBox(
                    //   height: 90,
                    //   child: ListView.builder(
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: catogoryImages.length,
                    //     itemBuilder: (context, index) {
                    //       return Padding(
                    //         padding: const EdgeInsets.only(left: 5, right: 5),
                    //         child: CircleAvatar(
                    //           backgroundImage:
                    //               AssetImage(catogoryImages[index]),
                    //           radius: 35,
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(AppLocalizations.of(context)!.category, style: kTitleTextStyle),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => const SeeAllCategory()));
                          },
                          child: Text(AppLocalizations.of(context)!.seeall,
                              style: kSubtitleTextSyule.copyWith(
                                  color: kBlueColor)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                )),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 500,
                child: GridView.builder(
                  itemCount: subjectList.length,
                  gridDelegate: SliverWovenGridDelegate.count(
                    pattern: [
                      const WovenGridTile(1),
                      const WovenGridTile(
                        5 / 7,
                        crossAxisRatio: 0.9,
                        alignment: AlignmentDirectional.centerEnd,
                      ),
                    ],
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ), 
                  itemBuilder: (context, index) {
                    return BuildSeeAllSub(
                    subjectList: subjectList,
                    index: index,
                    function: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) =>  StudentvideoPlay(subject: subjectList[index]["name"]!,))),
                  );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
