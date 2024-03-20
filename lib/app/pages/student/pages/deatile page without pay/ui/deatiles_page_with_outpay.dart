import 'package:flutter/material.dart';
import 'package:path_way_flu/app/data/model/lession.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/student/pages/deatile%20page%20without%20pay/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/student/pages/deatile%20page%20without%20pay/ui/responsive/mobile.dart';


class StudentPagePayment extends StatefulWidget {
  final Lesson lesson;

  const StudentPagePayment({super.key, required this.lesson});

  @override
  State<StudentPagePayment> createState() => _StudentPagePaymentState();
}

class _StudentPagePaymentState extends State<StudentPagePayment> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: StudentDeatileWithoutPayMob(lesson: widget.lesson),
          tabletScaffold: StudentDeatileWithoutPayMob(lesson: widget.lesson),
          desktopScaffold: StudentPaymentPageDesk(lesson: widget.lesson)),
    );
  }
}
