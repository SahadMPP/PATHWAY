import 'package:flutter/material.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/student/pages/progress/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/student/pages/progress/ui/responsive/mobile.dart';


class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: StudentProgresMob(),
          tabletScaffold: ProgressDesk(),
          desktopScaffold: ProgressDesk()),
    );
  }
}
