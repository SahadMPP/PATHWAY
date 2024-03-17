import 'package:flutter/material.dart';

class DirectionLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const DirectionLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileScaffold;
        }
        if (constraints.maxWidth < 1000) {
          return mobileScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
