import 'package:flutter/material.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_in/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_in/ui/responsive/mobile.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_in/ui/responsive/tablet.dart';

class SignIn extends StatefulWidget {
  final String directiontext;

  const SignIn({super.key, required this.directiontext});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: SignMobLayOut(directiontext: widget.directiontext),
          tabletScaffold: SignTebLayOut(directiontext: widget.directiontext),
          desktopScaffold: SignDeskLayOut(directiontext: widget.directiontext)),
    );
  }
}
