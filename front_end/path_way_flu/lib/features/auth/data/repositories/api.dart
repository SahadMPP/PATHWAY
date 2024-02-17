// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_way_flu/core/constants/snacbar.dart';
import 'package:path_way_flu/features/auth/domain/usecases/define_fun.dart';

class AuthApi {
  static const baseUrl = "http://learnpro.today:5000/api/";

  static addStudent(Map sdata, BuildContext context) async {
    final url = Uri.parse("${baseUrl}add_student");
    try {
      final res = await http.post(url, body: sdata);

      if (res.statusCode == 200) {
        buildShowSnacbar(context, "Your account is created", Colors.green);

        debugPrint("Your account is created succesfully");
      } else if (res.statusCode == 404) {
        debugPrint("student already exist");
        buildShowSnacbar(context, "User already exist", Colors.grey);
      } else {
        debugPrint("Faield to get response");
        buildShowSnacbar(context, "Oop's somthing went wrong", Colors.red);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static addTeacher(Map tdata, BuildContext context) async {
    final url = Uri.parse("${baseUrl}add_teacher");

    try {
      final res = await http.post(url, body: tdata);

      if (res.statusCode == 200) {
        buildShowSnacbar(context, "Your account is created", Colors.green);
        debugPrint("Your account is created succesfully");
      } else if (res.statusCode == 404) {
        debugPrint("teacher already exist");
        buildShowSnacbar(context, "User already exist", Colors.grey);
      } else {
        debugPrint("Faield to get response");
        buildShowSnacbar(context, "Oop's somthing went wrong", Colors.red);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static loginStudent(Map sdata, BuildContext context) async {
    final url = Uri.parse("${baseUrl}log_student");

    try {
      final res = await http.post(url, body: sdata);

      if (res.statusCode == 200) {
        debugPrint('login successfully');
        //----------
        AuthFuntion().studentLogin(context);
      } else if (res.statusCode == 404) {
        buildShowSnacbar(context, "Password went to wrong", Colors.red);
        debugPrint("wrong password");
      } else if (res.statusCode == 400) {
        buildShowSnacbar(context, "User id not registed", Colors.red);
        debugPrint("mail not registed");
      } else {
        buildShowSnacbar(context, "Oops,faield to get response", Colors.red);
        debugPrint("Faield to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static loginTeacher(Map tdata, BuildContext context) async {
    final url = Uri.parse("${baseUrl}log_teacher");

    try {
      final res = await http.post(url, body: tdata);

      if (res.statusCode == 200) {
        debugPrint('login success full');

        //---------
        AuthFuntion().teacherLogin(context);
      } else if (res.statusCode == 404) {
        debugPrint("wrong password");
        //--------
        buildShowSnacbar(context, "Password went to wrong", Colors.red);
      } else if (res.statusCode == 400) {
        debugPrint("mail not registed");
        //----------
        buildShowSnacbar(context, "User id not registed", Colors.red);
      } else {
        debugPrint("Faield to get response");
        //---------
        buildShowSnacbar(context, "Oops,faield to get response", Colors.red);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
