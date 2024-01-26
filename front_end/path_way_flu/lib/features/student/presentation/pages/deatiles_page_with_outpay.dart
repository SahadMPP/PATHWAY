import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_way_flu/core/constants/constants.dart';

class StudentDeatileWithoutPay extends StatelessWidget {
  const StudentDeatileWithoutPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFF5F4E5),
          image: DecorationImage(
              image: AssetImage("asset/images/ux_big.png"),
              alignment: Alignment.topRight),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("asset/icons/arrow-left.svg"),
                      SvgPicture.asset("asset/icons/more-vertical.svg"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ClipPath(
                    clipper: BestSellerClipper(),
                    child: Container(
                      color: kBestSellerColor,
                      padding: const EdgeInsets.only(
                          left: 10, right: 20, top: 5, bottom: 5),
                      child: Text(
                        "best seller".toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text("Design Thinking", style: kHeadingextStyle),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      SvgPicture.asset("asset/icons/person.svg"),
                      const SizedBox(width: 5),
                      const Text("18K"),
                      const SizedBox(width: 20),
                      SvgPicture.asset("asset/icons/star.svg"),
                      const SizedBox(width: 5),
                      const Text("4.8"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "\$50",
                        style: kHeadingextStyle.copyWith(fontSize: 32)),
                    TextSpan(
                        text: "\$70",
                        style: TextStyle(
                          color: kTextColor.withOpacity(.5),
                          decoration: TextDecoration.lineThrough,
                        )),
                  ]))
                ],
              ),
            ),
            const SizedBox(height: 60),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Course Content',
                        style: kHeadingextStyle,
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 350,
                        child: ListView(
                          children: const [
                            CourseContent(number: "01"),
                            CourseContent(number: "02"),
                            CourseContent(number: "03"),
                            CourseContent(number: "04"),
                            CourseContent(number: "05"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 4),
                            blurRadius: 50,
                            color: kTextColor.withOpacity(.1),
                          )
                        ]),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      height: 56,
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEDEE),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: kBlueColor),
                        child: Text(
                          "Buy Now",
                          style: kSubtitleTextSyule.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            )),
          ],
        ),
      ),
    );
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  const CourseContent({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Text(
            number,
            style: kHeadingextStyle.copyWith(
              color: kTextColor.withOpacity(.15),
              fontSize: 32,
            ),
          ),
          const SizedBox(width: 20),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "5.35 min\n",
                style: TextStyle(
                  color: kTextColor.withOpacity(.5),
                  fontSize: 18,
                )),
            TextSpan(
                text: "Welcome to the Course",
                style: kSubtitleTextSyule.copyWith(
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                )),
          ])),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // color: kGreenColor.withOpacity(isDone ? 1:.5),
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
