// ignore_for_file: use_build_context_synchronously
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:path_way_flu/core/constants/snacbar.dart';
import 'package:path_way_flu/features/auth/data/repositories/api.dart';
import 'package:http/http.dart' as http;

class TeacherApi {
  static const baseUrl = AuthApi.baseUrl;
  static applyingForSubject(id, data, BuildContext context) async {
    final url = Uri.parse("${baseUrl}update_teacher/$id");

    try {
      final res = await http.put(url, body: data);

      if (res.statusCode == 200) {
        // var data = jsonDecode(res.body);
        debugPrint("Apply success fully");

        buildShowSnacbar(
            context: context,
            content: "Application registed",
            title: 'Hi There!',
            contentType: ContentType.success);
        Navigator.of(context).pop();
      } else {
        debugPrint("Faield to get response");
        //-------
        // show  messege
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
