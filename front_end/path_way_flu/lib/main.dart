import 'package:flutter/material.dart';
import 'package:path_way_flu/features/auth/presentation/pages/splash_screen_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpleshScreen(),
    );
  }
}
