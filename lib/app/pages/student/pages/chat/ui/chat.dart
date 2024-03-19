import 'package:flutter/material.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/student/pages/chat/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/student/pages/chat/ui/responsive/mobile.dart';


class StudentChat extends StatefulWidget {
  const StudentChat({super.key});

  @override
  State<StudentChat> createState() => _StudentChatState();
}

class _StudentChatState extends State<StudentChat> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: StudentChatMob(),
          tabletScaffold: StudentChatMob(),
          desktopScaffold: StudentChatDesk()),
    );
  }
}
