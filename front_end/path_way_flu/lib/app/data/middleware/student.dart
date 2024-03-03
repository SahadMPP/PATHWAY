// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
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



  static studentSubcriptionAdding(id, Map data, BuildContext context)async{
      
      final url = Uri.parse("${baseUrl}update_student/$id");

      try {
        final res = await http.patch(url, body: jsonEncode(data),headers: {'Content-Type': 'application/json'});

        if (res.statusCode == 200) {
        debugPrint("subject purcher successfull");
        buildShowSnacbar(
            context: context,
            content: "successfully purchesed",
            title: 'Congratulation',
            contentType: ContentType.success);
        Navigator.of(context).pop();
      } else {
        debugPrint("Faield to get response");

        buildShowSnacbar(
            context: context,
            content: "Oop's something went wrong",
            title: 'Oh Hey!',
            contentType: ContentType.failure);
      }
      } catch (e) {
      debugPrint(e.toString());
        
      }
  }

  static getAllLession(String subject) async {
    List<Lesson> listLesson = [];
    final url = Uri.parse('${baseUrl}get_lession');

    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        for (var value in data) {
          if (value['subject'] == subject) {
          listLesson.add(Lesson.fromJson(value));
          }
        }
        return listLesson;
      } else {
        return listLesson;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }


  static Future<http.StreamedResponse> patchProfileImage(String id,String filepath)async{
   var request = http.MultipartRequest('PATCH',Uri.parse("${baseUrl}add/student_image/$id"));
  request.files.add(await http.MultipartFile.fromPath("profileImage", filepath));
  request.headers.addAll({
   "Content-Type": "multipart/form-data",
  });

  var response = request.send();
  
  return response;
  }
}
