import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/pages/student/pages/subcription%20model/bloc/subcription_bloc.dart';
import 'package:path_way_flu/main.dart';

class BuildBuyBotton extends StatelessWidget {
  const BuildBuyBotton({
    super.key,
    required this.lesson,
  });

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
