import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthApi {
  static const baseUrl = "http://192.168.1.11/api/";

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
}
