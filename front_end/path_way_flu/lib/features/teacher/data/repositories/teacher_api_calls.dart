import 'package:flutter/material.dart';
import 'package:path_way_flu/features/auth/data/repositories/api.dart';
import 'package:http/http.dart' as http;

class TeacherApi {
  static const baseUrl = AuthApi.baseUrl;

  static applyingForSubject(id, Map data, BuildContext context) async {
    final url = Uri.parse("${baseUrl}update_teacher/$id");

    try {
      final res = await http.put(url, body: data);

      if (res.statusCode == 200) {
        debugPrint("Apply success fully");
        //-------
        // show success messege
      } else {
        debugPrint("Faield to get response");
        //-------
        // show success messege
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
