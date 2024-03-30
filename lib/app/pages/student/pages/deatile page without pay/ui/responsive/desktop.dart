import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/pages/student/widgets/buy_botton.dart';

import '../../../../widgets/course_con_without_payment.dart';

class StudentPaymentPageDesk extends StatelessWidget {
  final Lesson lesson;
  const StudentPaymentPageDesk({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.pink[50],
                      image: const DecorationImage(
                          image: AssetImage(
                              "asset/images/ux_big-removebg-preview.png"),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: SvgPicture.asset(
                              "asset/icons/arrow-left.svg")),
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
                      Text(lesson.title, style: kHeadingextStyle),
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
                      Row(
                        children: [
                          Text("\u{20B9}${lesson.price}",
                              style: kHeadingextStyle.copyWith(fontSize: 32)),
                          const SizedBox(width: 5),
                          Text("\u{20B9}${lesson.price + 50}",
                              style: TextStyle(
                                color: kTextColor.withOpacity(.5),
                                decoration: TextDecoration.lineThrough,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                lesson.title,
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  letterSpacing: 1.5,
                                ),
                              ),
                              Text(
                                lesson.creatorName.toUpperCase(),
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 32, right: 32),
                        child: SingleChildScrollView(
                          child: SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Description",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 20, top: 50, bottom: 10),
              child: Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 30, right: 10, left: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: FutureBuilder(
                        future: TeacherApi.getTotorial(lesson.id),
                        builder: (context, AsyncSnapshot snapshot) {
                          if (!snapshot.hasData) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else {
                            List<Tutorial> tutotial = snapshot.data;
                            if (tutotial.isEmpty) {
                              return const Center(child: Text("List is Empty"));
                            } else {
                              return ListView.builder(
                                itemCount: tutotial.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 20, right: 10, left: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          '0${index + 1}',
                                          style: kHeadingextStyle.copyWith(
                                            color: kTextColor.withOpacity(.15),
                                            fontSize: 32,
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(tutotial[index].title,
                                                style: TextStyle(
                                                  color: kTextColor
                                                      .withOpacity(.5),
                                                  fontSize: 18,
                                                )),
                                            Text(
                                                "${tutotial[index].duration} min",
                                                style: TextStyle(
                                                  color: kTextColor
                                                      .withOpacity(.5),
                                                  fontSize: 15,
                                                ))
                                          ],
                                        ),
                                        const Spacer(),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 20),
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
                                },
                              );
                            }
                          }
                        }),
                  ),
                  BuildBuyBotton(lesson: lesson),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
