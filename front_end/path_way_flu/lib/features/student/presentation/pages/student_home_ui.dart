import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:path_way_flu/core/constants/subject_list.dart';
import 'package:path_way_flu/features/student/presentation/pages/deatiles_page.dart';
import 'package:path_way_flu/features/student/presentation/pages/see_all_category.dart';
import 'package:path_way_flu/features/student/presentation/widgets/build_see_all_subject.dart';

class StuHome extends StatelessWidget {
  const StuHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: deprecated_member_use
                SvgPicture.asset(
                  "asset/icons/menu.svg",
                  // ignore: deprecated_member_use
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                Image.asset("asset/images/user.png"),
              ],
            ),
            const SizedBox(height: 30),
            const Text("Hey Alex,", style: kHeadingextStyle),
            const Text("Find a course you want to learn",
                style: kSubheadingextStyle),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F7),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  SvgPicture.asset("asset/icons/search.svg"),
                  const SizedBox(width: 18),
                  const Text(
                    'Search for anything',
                    style: TextStyle(fontSize: 18, color: Color(0xFFA0A5BD)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Cateory", style: kTitleTextStyle),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const SeeAllCategory()));
                  },
                  child: Text("See All",
                      style: kSubtitleTextSyule.copyWith(color: kBlueColor)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
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
          ],
        ),
      ),
    );
  }
}
