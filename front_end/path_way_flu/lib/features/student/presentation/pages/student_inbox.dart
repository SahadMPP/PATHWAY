import 'package:flutter/material.dart';

class StudentInboxScreen extends StatelessWidget {
  const StudentInboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/undermaintain_notify.png'))),
      )),
    );
  }
}
