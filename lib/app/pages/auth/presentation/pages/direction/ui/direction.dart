import 'package:flutter/material.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/mobile.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';

class Direction extends StatefulWidget {
  const Direction({super.key});

  @override
  State<Direction> createState() => _DirectionState();
}

class _DirectionState extends State<Direction> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: DirectionMob(),
          tabletScaffold: DirectionMob(),
          desktopScaffold: DirectionDesk()),
    );
  }
}
