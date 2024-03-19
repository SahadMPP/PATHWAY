import 'package:flutter/material.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/ui/responsive/mobile.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/ui/responsive/tablet.dart';


class StudentSetting extends StatefulWidget {
  const StudentSetting({super.key});

  @override
  State<StudentSetting> createState() => _StudentSettingState();
}

class _StudentSettingState extends State<StudentSetting> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: SeeAllMob(),
          tabletScaffold: SeeAllTab(),
          desktopScaffold: SeeAllDesk()),
    );
  }
}
