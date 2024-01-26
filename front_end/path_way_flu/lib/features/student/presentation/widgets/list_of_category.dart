import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:path_way_flu/core/constants/constants.dart';

class ListOfCategory extends StatelessWidget {
  const ListOfCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
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
          return Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kBlueColor,
              image: const DecorationImage(
                  image: AssetImage("asset/images/ux_big.png"),
                  fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
