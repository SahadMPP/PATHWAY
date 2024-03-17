import 'package:flutter/material.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/indroduction/intro%20page%20one/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/indroduction/intro%20page%20one/responsive/mobile.dart';


class IntroOne extends StatefulWidget {


  const IntroOne({super.key});

  @override
  State<IntroOne> createState() => _IntroOneState();
}

class _IntroOneState extends State<IntroOne> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: IntroOneMob(),
          tabletScaffold: IntroOneDesk(),
          desktopScaffold: IntroOneDesk()),
    );
  }
}
