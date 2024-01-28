import 'package:flutter/material.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:path_way_flu/features/student/presentation/widgets/list_of_category.dart';

class SeeAllCategory extends StatelessWidget {
  const SeeAllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                'Find a course you want to learn',
                style: kHeadingextStyle.copyWith(
                  fontSize: 32,
                ),
              ),
              const ListOfCategory(),
            ],
          ),
        ),
      ),
    );
  }
}
