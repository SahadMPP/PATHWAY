// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:path_way_flu/features/auth/presentation/pages/direction/ui/direction_screen_ui.dart';
import 'package:path_way_flu/features/auth/presentation/pages/indroduction/onbording_screen.dart';
import 'package:path_way_flu/features/student/presentation/widgets/student_bottom.dart';
import 'package:path_way_flu/features/teacher/presentation/widgets/teacher_bottom_navi.dart';
import 'package:path_way_flu/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthFuntion {
  studentLogin(
      {required BuildContext context,
      required String id,
      required String name}) async {
    SAVE_KEY_LOGGIN = 'studentLogined';
    SAVE_KEY_ID = id;
    SAVE_KEY_NAME = name;
    final sharepre = await SharedPreferences.getInstance();

    sharepre.setString(SAVE_KEY_LOGGIN, "studentLogined");
    sharepre.setString(SAVE_KEY_ID, id);
    sharepre.setString(SAVE_KEY_NAME, name);
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => const StudentBotmNavi()),
        (route) => false);
  }

  teacherLogin(
      {required BuildContext context,
      required String id,
      required String name}) async {
    SAVE_KEY_LOGGIN = 'teacherLogined';
    SAVE_KEY_ID = id;
    SAVE_KEY_NAME = name;
    final sharepre = await SharedPreferences.getInstance();
    sharepre.setString(SAVE_KEY_LOGGIN, "teacherLogined");
    sharepre.setString(SAVE_KEY_ID, id);
    sharepre.setString(SAVE_KEY_NAME, name);

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => const TeacherBotmNavi()),
        (route) => false);
  }

  logOut(context) async {
    final sharepre = await SharedPreferences.getInstance();
    sharepre.clear();

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => const DirectionScreen()),
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
      goToLogin(context);
    } else if (userLoggedIn == "teacherLogined") {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const TeacherBotmNavi()));
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const StudentBotmNavi()));
    }
  }
}
