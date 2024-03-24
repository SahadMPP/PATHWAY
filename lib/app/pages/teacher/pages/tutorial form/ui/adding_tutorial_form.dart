import 'package:flutter/material.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/ui/responsive/mobile.dart';

class AddingTotorial extends StatefulWidget {
  final String? id;

  const AddingTotorial({super.key, this.id});

  @override
  State<AddingTotorial> createState() => _AddingTotorialState();
}

class _AddingTotorialState extends State<AddingTotorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: AddTotorialMob(id: widget.id),
          tabletScaffold: AddTotorialMob(id: widget.id),
          desktopScaffold: AddingTutoralDesk(id: widget.id)),
    );
  }
}
