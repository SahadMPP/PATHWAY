import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:path_way_flu/core/constants/subject_list.dart';
import 'package:path_way_flu/features/student/presentation/widgets/build_see_all_subject.dart';

class ListOfCategory extends StatelessWidget {
  const ListOfCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            function: () {},
          );
        },
      ),
    );
  }
}
