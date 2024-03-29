// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:http/http.dart' as http;
import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/direction.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/indroduction/onbording_screen.dart';
import 'package:path_way_flu/app/pages/student/pages/collecting%20initial%20deatiles/ui/student_age_piking.dart';
import 'package:path_way_flu/app/pages/student/widgets/student_bottom.dart';
import 'package:path_way_flu/app/pages/student/widgets/student_main_screen.dart';
import 'package:path_way_flu/app/pages/teacher/pages/collect%20profile/ui/teacher_profile_piker.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/teacher_bottom_navi.dart';
import 'package:path_way_flu/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthFuntion {
  Future<void> studentLogin(
      {required BuildContext context,
      required String profile,
      required String id,
      required String name}) async {
    userName = name;
    userId = id;
    userProfile = profile;
    final sharepre = await SharedPreferences.getInstance();
    sharepre.setString(SAVE_KEY_LOGGIN, "studentLogined");
    sharepre.setString(SAVE_KEY_ID, id);
    sharepre.setString(SAVE_KEY_NAME, name);
    sharepre.setString(SAVE_KEY_PROFILE, profile);
    //--------------get Student instence------------
    final url = Uri.parse('${AuthApi.baseUrl}get_studentById/$id');
    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        if (data["profileImage"] == "") {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (ctx) => const StudentAgePiking()),
              (route) => false);
        } else {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (ctx) => LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth < 600) {
                            return const StudentBotmNavi();
                          } else if (constraints.maxWidth < 1000) {
                            return const StudentMainScreen();
                          } else {
                            return const StudentMainScreen();
                          }
                        },
                      )),
              (route) => false);
        }
      } else {
        debugPrint('faild to get student lession');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> teacherLogin(
      {required BuildContext context,
      required String profile,
      required String id,
      required String name}) async {
    userName = name;
    userId = id;
    userProfile = profile;
    final sharepre = await SharedPreferences.getInstance();
    sharepre.setString(SAVE_KEY_LOGGIN, "teacherLogined");
    sharepre.setString(SAVE_KEY_ID, id);
    sharepre.setString(SAVE_KEY_NAME, name);
    sharepre.setString(SAVE_KEY_PROFILE, profile);
    final url = Uri.parse('${AuthApi.baseUrl}get_teacherById/$id');
    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        if (data["profileImage"] == "") {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (ctx) => const TeacherProfleImage()),
              (route) => false);
        } else {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (ctx) => const TeacherBotmNavi()),
              (route) => false);
        }
      } else {
        debugPrint('faild to get student lession');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> logOut(context) async {
    final sharepre = await SharedPreferences.getInstance();
    sharepre.clear();

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => const Direction()),
        (route) => false);
  }

  Future<void> goToLogin(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (cxt) => const OnBordingScreen()),
        (route) => false);
  }

  Future<void> checklogin(BuildContext context) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final userLoggedIn = sharedPreferences.getString(SAVE_KEY_LOGGIN);
    final username = sharedPreferences.getString(SAVE_KEY_NAME);
    final userid = sharedPreferences.getString(SAVE_KEY_ID);
    final userprofile = sharedPreferences.getString(SAVE_KEY_PROFILE);

    if (userLoggedIn == null || userLoggedIn.isEmpty) {
      goToLogin(context);
    } else if (userLoggedIn == "teacherLogined") {
      userName = username;
      userId = userid;
      userProfile = userprofile;
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const TeacherBotmNavi()));
    } else {
      userName = username;
      userId = userid;
      userProfile = userprofile;
      Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (ctx) => LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth < 600) {
                            return const StudentBotmNavi();
                          } else if (constraints.maxWidth < 1000) {
                            return const StudentMainScreen();
                          } else {
                            return const StudentMainScreen();
                            // for git
                          }
                        },
                      )),
              (route) => false);
    }
  }
}
