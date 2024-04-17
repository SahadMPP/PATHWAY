import 'package:flutter/material.dart';
import 'package:path_way_flu/app/data/middleware/admin.dart';
import 'package:path_way_flu/app/data/model/teacher.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/student/pages/chat/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/student/pages/chat/ui/responsive/mobile.dart';

class StudentChat extends StatefulWidget {
  const StudentChat({super.key});

  @override
  State<StudentChat> createState() => _StudentChatState();
}

class _StudentChatState extends State<StudentChat> {
  List<Teacher> teacher = [];

  getTeacher() async {
    teacher = await AdminApi.getTeacher();
  }

  @override
  Widget build(BuildContext context) {
    getTeacher();
    return Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: const StudentChatMob(),
          tabletScaffold: const StudentChatMob(),
          desktopScaffold: StudentChatDesk(
            teacher: teacher.first,
          )),
    );
  }
}
