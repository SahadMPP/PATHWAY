import 'package:flutter/material.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/indroduction/intro%20page%20three/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/indroduction/intro%20page%20three/responsive/mobile.dart';


class IntroThree extends StatefulWidget {


  const IntroThree({super.key});

  @override
  State<IntroThree> createState() => _IntroThreeState();
}

class _IntroThreeState extends State<IntroThree> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: IntroThreeMob(),
          tabletScaffold: IntroThreeDesk(),
          desktopScaffold: IntroThreeDesk()),
    );
  }
}
