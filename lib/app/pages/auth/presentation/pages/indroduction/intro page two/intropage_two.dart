import 'package:flutter/material.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/indroduction/intro%20page%20two/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/indroduction/intro%20page%20two/responsive/mobile.dart';


class IntroTwo extends StatefulWidget {


  const IntroTwo({super.key});

  @override
  State<IntroTwo> createState() => _IntroTwoState();
}

class _IntroTwoState extends State<IntroTwo> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: IntroTwoMob(),
          tabletScaffold: IntroTwoDesk(),
          desktopScaffold: IntroTwoDesk()),
    );
  }
}
