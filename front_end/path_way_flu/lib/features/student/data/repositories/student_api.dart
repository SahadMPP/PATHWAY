import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:path_way_flu/features/admin/data/models/tutoral_model.dart';
import 'package:path_way_flu/features/auth/data/repositories/api.dart';
import 'package:http/http.dart' as http;

class StudentApi {
  static const baseUrl = AuthApi.baseUrl;

  static addComplaint(Map data) async {
    final url = Uri.parse("${baseUrl}add_complaint");

    try {
      final res = await http.post(url, body: data);

      if (res.statusCode == 200) {
        debugPrint("adding complaint");
      } else if (res.statusCode == 400) {
        debugPrint("Faield to get 400 response");
      } else {
        debugPrint("Faield to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static getTotorialStudent(String catogory) async {
    List<Tutorial> tutorial = [];
    var url = Uri.parse("${baseUrl}get_tutorial");

    try {
      final res = await http.get(url);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);

        for (var value in data) {
          if (value["category"] == catogory) {
            String? id = value["_id"] as String?;

            if (id != null) {
              return (jsonDecode(res.body) as List)
                  .map((value) => Tutorial.fromJson(value))
                  .toList();
            } else {
              debugPrint("id is null or not present");
            }
          }
        }

        return tutorial;
      } else {
        return tutorial;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
