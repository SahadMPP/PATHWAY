import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/presentation/pages/direction_screen_ui.dart';

class SpleshScreen extends StatelessWidget {
  const SpleshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> goToNext(context) async {
      await Future.delayed(const Duration(seconds: 3));
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (cxt) => const DirectionScreen()),
          (route) => false);
    }

    goToNext(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 104, 214),
      body: Center(
        child: Text("PathWay",
            style: GoogleFonts.bebasNeue(
              color: Colors.white,
              fontSize: 45,
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }

  Future<void> goToNext(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (cxt) => const DirectionScreen()),
        (route) => false);
  }
}
