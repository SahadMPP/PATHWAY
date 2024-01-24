import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/presentation/pages/direction_screen_ui.dart';
import 'package:path_way_flu/features/student_home_ui.dart';
import 'package:path_way_flu/features/teacher_home.dart';
import 'package:path_way_flu/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    checklogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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

  Future<void> goToLogin(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (cxt) => const DirectionScreen()),
        (route) => false);
  }

  checklogin(BuildContext context) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final userLoggedIn = sharedPreferences.getString(SAVE_KEY_NAME);

    if (userLoggedIn == null || userLoggedIn.isEmpty) {
      // ignore: use_build_context_synchronously
      goToLogin(context);
    } else if (userLoggedIn == "teacherLogined") {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const TeachHome()));
    } else {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const StuHome()));
    }
  }
}
