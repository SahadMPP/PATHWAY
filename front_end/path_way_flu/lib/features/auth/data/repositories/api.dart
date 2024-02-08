// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_way_flu/features/auth/domain/usecases/define_fun.dart';

class AuthApi {
  static const baseUrl = "http://learnpro.today:5000/api/";

  static addStudent(Map sdata, BuildContext context) async {
    final url = Uri.parse("${baseUrl}add_student");
    try {
      final res = await http.post(url, body: sdata);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        debugPrint("Your account is created succesfully");
        // AuthFuntion().snakbar(
        //     context: context, text: "created succesfully", color: Colors.green);
        debugPrint(data);
      } else if (res.statusCode == 404) {
        debugPrint("student already exist");
        // AuthFuntion().snakbar(
        //     context: context, text: "User already exist", color: Colors.red);
      } else {
        debugPrint("Faield to get response");
        // AuthFuntion().snakbar(
        //     context: context,
        //     text: "Oops,faield to get response",
        //     color: Colors.red);
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
        var data = jsonDecode(res.body.toLowerCase());
        debugPrint("Your account is created succesfully");
        AuthFuntion().snakbar(
            context: context, text: "created succesfully", color: Colors.green);

        debugPrint(data);
      } else if (res.statusCode == 404) {
        debugPrint("teacher already exist");
        AuthFuntion().snakbar(
            context: context, text: "User already exist", color: Colors.red);
      } else {
        debugPrint("Faield to get response");
        AuthFuntion().snakbar(
            context: context,
            text: "Oops,faield to get response",
            color: Colors.red);
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
        debugPrint("wrong password");
        //--------
        // AuthFuntion().snakbar(
        //     context: context,
        //     text: "Password went to wrong",
        //     color: Colors.red);
      } else if (res.statusCode == 400) {
        debugPrint("mail not registed");
        //----------
        // AuthFuntion().snakbar(
        //     context: context, text: "Email id not registed", color: Colors.red);
      } else {
        debugPrint("Faield to get response");
        //---------
        // AuthFuntion().snakbar(
        //     context: context,
        //     text: "Oops,faield to get response",
        //     color: Colors.red);
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
        AuthFuntion().teacherLogin(context);
      } else if (res.statusCode == 404) {
        debugPrint("wrong password");
        //--------
        AuthFuntion().snakbar(
            context: context,
            text: "Password went to wrong",
            color: Colors.red);
      } else if (res.statusCode == 400) {
        debugPrint("mail not registed");
        //----------
        AuthFuntion().snakbar(
            context: context, text: "Email id not registed", color: Colors.red);
      } else {
        debugPrint("Faield to get response");
        //---------
        AuthFuntion().snakbar(
            context: context,
            text: "Oops,faield to get response",
            color: Colors.red);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
