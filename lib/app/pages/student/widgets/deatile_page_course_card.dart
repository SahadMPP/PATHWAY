import 'package:flutter/material.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';

class CourseContent extends StatelessWidget {
  final String title;
  final String creatorName;
  final int number;
  final VoidCallback functionn;
  const CourseContent({
    super.key,
    required this.number,
    required this.title,
    required this.creatorName,
    required this.functionn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Text(
            "0${number + 1}".toString(),
            style: kHeadingextStyle.copyWith(
              color: kTextColor.withOpacity(.15),
              fontSize: 32,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                    color: kTextColor.withOpacity(.5),
                    fontSize: 18,
                  )),
              Text(creatorName,
                  style: TextStyle(
                    color: kTextColor.withOpacity(.5),
                    fontSize: 18,
                  ))
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: functionn,
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kGreenColor,
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
