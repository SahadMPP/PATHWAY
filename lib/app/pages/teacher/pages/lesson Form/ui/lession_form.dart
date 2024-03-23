import 'package:flutter/material.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lesson%20Form/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lesson%20Form/ui/responsive/mobile.dart';


class LessonForm extends StatefulWidget {
  const LessonForm({super.key});

  @override
  State<LessonForm> createState() => _LessonFormState();
}

class _LessonFormState extends State<LessonForm> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: LessonFormMob(),
          tabletScaffold: LessonFormMob(),
          desktopScaffold: LessonFormDesk()),
    );
  }
}
