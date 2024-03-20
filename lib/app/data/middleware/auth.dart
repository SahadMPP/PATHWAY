// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/pages/auth/domain/usecases/define_fun.dart';

class AuthApi {
  static const baseUrl = "http://learnpro.today:5000/api/";
  static const baseUrlImage = "https://cors-anywhere.herokuapp.com/http://learnpro.today:5000/";

  static addStudent(Map sdata, BuildContext context) async {
    final url = Uri.parse("${baseUrl}add_student");
    try {
      final res = await http.post(url, body: sdata);

      if (res.statusCode == 200) {
        Navigator.of(context).pop();
        buildShowSnacbar(
            context: context,
            content: "You have successfully created your account",
            title: 'Congratulations!',
            contentType: ContentType.success);
        debugPrint("Your account is created succesfully");
      } else if (res.statusCode == 404) {
        debugPrint("student already exist");
        buildShowSnacbar(
            context: context,
            content: "The email already created",
            title: 'Warning!',
            contentType: ContentType.warning);
      } else {
        debugPrint("Faield to get response");
        buildShowSnacbar(
            context: context,
            content: "Faield to get response",
            title: 'Oh Hey!!',
            contentType: ContentType.failure);
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
        Navigator.of(context).pop();
        buildShowSnacbar(
            context: context,
            content: "You have successfully created your account",
            title: 'Congratulations!',
            contentType: ContentType.success);
        debugPrint("Your account is created succesfully");
      } else if (res.statusCode == 404) {
        debugPrint("teacher already exist");
        buildShowSnacbar(
            context: context,
            content: "The email already created",
            title: 'Warning!',
            contentType: ContentType.warning);
      } else {
        debugPrint("Faield to get response");
        buildShowSnacbar(
            context: context,
            content: "Faield to get response",
            title: 'Oh Hey!!',
            contentType: ContentType.failure);
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
        var data = jsonDecode(res.body);

        debugPrint('login success full');

        //---------
        String id = data['_id'];
        String name = data['name'];
        String profile = data['profileImage'];
        AuthFuntion().studentLogin(context: context, id: id, name: name,profile:profile );
      } else if (res.statusCode == 404) {
        buildShowSnacbar(
            context: context,
            content: "You password went to wrong",
            title: 'Oh Hey!!',
            contentType: ContentType.failure);
        debugPrint("wrong password");
      } else if (res.statusCode == 400) {
        buildShowSnacbar(
            context: context,
            content: "User id not registed",
            title: 'Oh Hey!!',
            contentType: ContentType.failure);
        debugPrint("mail not registed");
      } else {
        buildShowSnacbar(
            context: context,
            content: "Oops,faield to get response",
            title: 'Oh Hey!!',
            contentType: ContentType.failure);
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
        var data = jsonDecode(res.body);

        debugPrint('login success full');

        //---------
        String id = data['_id'];
        String name = data['name'];
        String profile = data['profileImage'];
        AuthFuntion().teacherLogin(context: context, id: id, name: name,profile:profile );
      } else if (res.statusCode == 404) {
        debugPrint("wrong password");
        //--------
        buildShowSnacbar(
            context: context,
            content: "You password went to wrong",
            title: 'Oh Hey!!',
            contentType: ContentType.failure);
      } else if (res.statusCode == 400) {
        debugPrint("mail not registed");
        //----------
        buildShowSnacbar(
            context: context,
            content: "User id not registed",
            title: 'Oh Hey!!',
            contentType: ContentType.failure);
      } else {
        debugPrint("Faield to get response");
        //---------
        buildShowSnacbar(
            context: context,
            content: "Oops,faield to get response",
            title: 'Oh Hey!!',
            contentType: ContentType.failure);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
