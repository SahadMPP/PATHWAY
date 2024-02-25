import 'package:flutter/material.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';

class CourseContent extends StatelessWidget {
  final int number;
  final String title;
  final String creator;
  const CourseContent({
    super.key,
    required this.number, required this.title, required this.creator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Text(
            '0${number.toString()}',
            style: kHeadingextStyle.copyWith(
              color: kTextColor.withOpacity(.15),
              fontSize: 32,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                   creator,
                     style: TextStyle(
                       color: kTextColor.withOpacity(.5),
                       fontSize: 18,
                       height: 1,
                     )),
                     const SizedBox(height: 10),
                      Text(
                 title,
                 style: kSubtitleTextSyule.copyWith(
                   fontWeight: FontWeight.w600,
                   height: .1,
                 )),
            ],
          ),
          const Spacer(),
          Container(
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
          )
        ],
      ),
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
