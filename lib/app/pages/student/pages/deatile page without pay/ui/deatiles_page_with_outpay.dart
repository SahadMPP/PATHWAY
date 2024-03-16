import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/pages/student/pages/subcription%20model/bloc/subcription_bloc.dart';
import 'package:path_way_flu/app/pages/student/widgets/course_con_without_payment.dart';
import 'package:path_way_flu/main.dart';


class StudentDeatileWithoutPay extends StatelessWidget {
  final Lesson lesson;

  const StudentDeatileWithoutPay({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    context.read<SubcriptionBloc>().add(const SubcriptionEvent.makeinginstence());
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          image: const DecorationImage(
              image: AssetImage("asset/images/ux_big-removebg-preview.png"),
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
                      GestureDetector(onTap: () => Navigator.of(context).pop(),child: SvgPicture.asset("asset/icons/arrow-left.svg")),
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
                      Text("\u{20B9}70",
                          style: TextStyle(
                            color: kTextColor.withOpacity(.5),
                            decoration: TextDecoration.lineThrough,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).colorScheme.secondary,
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
                      FutureBuilder(
                          future: TeacherApi.getTotorial(lesson.id),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (!snapshot.hasData) {
                              return Center(
                                  child: CircularProgressIndicator(
                                color: Colors.grey[400],
                              ));
                            } else {
                              List<Tutorial> tutoral = snapshot.data!;
                              if (tutoral.isEmpty) {
                                return const Center(
                                    child: Text("Tutorial is empty"));
                              } else {
                                return SizedBox(
                                  height: MediaQuery.of(context).size.height *.4,
                                  child: ListView.builder(
                                    itemCount: tutoral.length,
                                    itemBuilder: (context, index) =>
                                        CourseContent(
                                            number: index+1,
                                            title: tutoral[index].title,
                                            creator: tutoral[index].level),
                                  ),
                                );
                              }
                            }
                          }),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: GestureDetector(
                      onTap: ()async {  
                        context.read<SubcriptionBloc>().add(SubcriptionEvent.makingsubcription(amount:99*100 , mob: '9876543211', subject:lesson.subject, email: 'sahad@gmail.com'));
                        Future.delayed(const Duration(seconds: 2));
                        context.read<SubcriptionBloc>().add(SubcriptionEvent.updataStudentdata(subject: lesson.id, id: userId!, context: context,lesson: lesson));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        height: 56,
                        width: 80,
                        decoration: BoxDecoration(
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
