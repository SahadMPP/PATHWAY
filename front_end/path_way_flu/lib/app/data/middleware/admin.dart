// ignore_for_file: use_build_context_synchronously, unnecessary_import

import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/data/model/complaint.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:http/http.dart' as http;
import 'package:path_way_flu/app/data/model/student.dart';
import 'package:path_way_flu/app/data/model/teacher.dart';
import 'package:path_way_flu/app/pages/admin/widgets/admin_bottom_navi.dart';

class AdminApi {
  // api for tutorial
  static const baseUrl = AuthApi.baseUrl;

  // api for Complaits

  static getComplaits() async {
    List<Complaint> complaints = [];
    var url = Uri.parse("${baseUrl}get_complaint");

    try {
      final res = await http.get(url);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        for (var value in data) {
          complaints.add(Complaint.fromJson(value));
        }

        return complaints;
      } else {
        return complaints;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static deleteComplates(id, context) async {
    var url = Uri.parse("${baseUrl}delete_complaint/$id");

    try {
      final res = await http.delete(url);

      if (res.statusCode == 200) {
        debugPrint("complaint deleted");

        buildShowSnacbar(
            context: context,
            content: "Complaint is deleted",
            title: 'Hi There!',
            contentType: ContentType.warning);
      } else {
        debugPrint("Oops,something went wrong");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  // getting teacher application

  static getTeacherApplication() async {
    List<Teacher> teacher = [];
    final url = Uri.parse("${baseUrl}get_teacher");

    try {
      final res = await http.get(url);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);

        for (var value in data) {
          if (value['appledStatus'] == "true") {
            teacher.add(Teacher.fromJson(value));
          }
        }
        return teacher;
      } else {
        return teacher;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static subjectApproving(id, Map data, BuildContext context) async {
    final url = Uri.parse("${baseUrl}update_teacher/$id");

    try {
      final res = await http.put(url, body: data);

      if (res.statusCode == 200) {
        debugPrint("Approved as a teacher");
       
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const AdminBotmNavi()));
         buildShowSnacbar(
            context: context,
            content: "Approved as a teacher",
            title: 'Hi There!',
            contentType: ContentType.help);
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

  static subjectApprovingCanselling(id, Map data, BuildContext context) async {
    final url = Uri.parse("${baseUrl}update_teacher/$id");

    try {
      final res = await http.put(url, body: data);

      if (res.statusCode == 200) {
        debugPrint("Approved as a teacher");
        buildShowSnacbar(
            context: context,
            content: "Rejeced teacher application",
            title: 'Oh bro!',
            contentType: ContentType.warning);
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

  // getting student list

  static getStudents() async {
    List<Student> studentList = [];
    final url = Uri.parse('${baseUrl}get_student');

    try {
      final res = await http.get(url);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);

        for (var value in data) {
          studentList.add(Student.fromJson(value));
        }
        return studentList;
      } else {
        return debugPrint('faield to get data');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
  // getting teacher list

  static getTeacher() async {
    List<Teacher> teacher = [];
    final url = Uri.parse("${baseUrl}get_teacher");

    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        for (var value in data) {
          teacher.add(Teacher.fromJson(value));
        }
        return teacher;
      } else {
        return teacher;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
