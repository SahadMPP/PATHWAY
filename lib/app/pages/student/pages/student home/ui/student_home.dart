import 'package:flutter/material.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/student/pages/student%20home/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/student/pages/student%20home/ui/responsive/mobile.dart';

class StudentHome extends StatefulWidget {
  const StudentHome({super.key});

  @override
  State<StudentHome> createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: StudentHomeMob(),
          tabletScaffold: StudentHomeDesk(),
          desktopScaffold: StudentHomeDesk()),
    );
  }
}
