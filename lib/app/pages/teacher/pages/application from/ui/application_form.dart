import 'package:flutter/material.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/teacher/pages/application%20from/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/teacher/pages/application%20from/ui/responsive/mobile.dart';


class ApplicationForm extends StatefulWidget {

  const ApplicationForm({super.key});

  @override
  State<ApplicationForm> createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationForm> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: TeacherApplicationMob(),
          tabletScaffold: TeacherApplicationMob(),
          desktopScaffold: TeacherApplicationDesk()),
    );
  }
}
