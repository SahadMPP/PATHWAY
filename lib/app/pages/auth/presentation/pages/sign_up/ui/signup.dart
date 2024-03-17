import 'package:flutter/material.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_up/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_up/ui/responsive/mobile.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_up/ui/responsive/taplet.dart';

class SignUp extends StatefulWidget {
  final String directiontext;

  const SignUp({super.key, required this.directiontext});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: SignUpMobLayOut(directionText: widget.directiontext),
          tabletScaffold: SignUpTebLayOut(directiontext: widget.directiontext),
          desktopScaffold: SignUpDeskLayOut(directiontext: widget.directiontext)),
    );
  }
}
