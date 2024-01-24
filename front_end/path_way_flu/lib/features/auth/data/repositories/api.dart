import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_way_flu/features/auth/domain/usecases/define_fun.dart';

class AuthApi {
  static const baseUrl = "http://192.168.1.4/api/";

  static addStudent(Map sdata) async {
    final url = Uri.parse("${baseUrl}add_student");
    try {
      final res = await http.post(url, body: sdata);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        debugPrint(data);
      } else if (res.statusCode == 404) {
        debugPrint("student already exist");
      } else {
        debugPrint("Faield to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static addTeacher(Map tdata) async {
    final url = Uri.parse("${baseUrl}add_teacher");

    try {
      final res = await http.post(url, body: tdata);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toLowerCase());
        debugPrint(data);
      } else if (res.statusCode == 404) {
        debugPrint("teacher already exist");
      } else {
        debugPrint("Faield to get response");
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
        debugPrint('login success full');
        //----------

        // ignore: use_build_context_synchronously
        AuthFuntion().studentLogin(context);
      } else if (res.statusCode == 404) {
        debugPrint("wrong password");
        //--------
      } else if (res.statusCode == 400) {
        debugPrint("mail not registed");
        //----------
      } else {
        debugPrint("Faield to get response");
        //---------
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
        //----------
        // ignore: use_build_context_synchronously
        AuthFuntion().teacherLogin(context);
      } else if (res.statusCode == 404) {
        debugPrint("wrong password");
        //--------
      } else if (res.statusCode == 400) {
        debugPrint("mail not registed");
        //----------
      } else {
        debugPrint("Faield to get response");
        //---------
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
