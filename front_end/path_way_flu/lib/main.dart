import 'package:flutter/material.dart';
import 'package:path_way_flu/features/auth/presentation/pages/direction_screen_ui.dart';
// import 'package:path_way_flu/features/auth/presentation/pages/splash_screen_ui.dart';

// ignore: constant_identifier_names
const SAVE_KEY_NAME = "userLogined";

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DirectionScreen(),
    );
  }
}
