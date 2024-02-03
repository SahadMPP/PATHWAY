import 'package:flutter/material.dart';
import 'package:path_way_flu/features/auth/presentation/pages/indroduction/onbording_screen.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_in_ui.dart';
import 'package:path_way_flu/features/student/presentation/pages/student_home_ui.dart';
import 'package:path_way_flu/features/teacher/presentation/pages/teacher_home.dart';
import 'package:path_way_flu/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthFuntion {
  studentLogin(context) async {
    final sharepre = await SharedPreferences.getInstance();
    sharepre.setString(SAVE_KEY_NAME, "studentLogined");
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => const StuHome()), (route) => false);
  }

  teacherLogin(context) async {
    final sharepre = await SharedPreferences.getInstance();
    sharepre.setString(SAVE_KEY_NAME, "teacherLogined");
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => const TeachHome()),
        (route) => false);
  }

  logOut(context) async {
    final sharepre = await SharedPreferences.getInstance();
    sharepre.clear();
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => const SignInScreen()),
        (route) => false);
  }

  Future<void> goToLogin(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (cxt) => const OnBordingScreen()),
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

  snakbar(
      {required BuildContext context,
      required String text,
      required Color color}) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      backgroundColor: color,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(10),
    ));
  }
}
