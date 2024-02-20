// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

// ignore: unnecessary_import
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_way_flu/core/constants/snacbar.dart';
import 'package:path_way_flu/features/admin/data/models/complaint_model.dart';
import 'package:path_way_flu/features/admin/data/models/tutoral_model.dart';
import 'package:path_way_flu/features/auth/data/repositories/api.dart';
import 'package:http/http.dart' as http;
import 'package:path_way_flu/features/student/data/models/student.dart';
import 'package:path_way_flu/features/teacher/data/models/teacher_model.dart';

class AdminApi {
  // api for tutorial
  static const baseUrl = AuthApi.baseUrl;

  static addTotorial(data, BuildContext context) async {
    final url = Uri.parse("${baseUrl}add_tutorial");
    try {
      final res = await http.post(url, body: data);

      if (res.statusCode == 200) {
        debugPrint("Add tutorial is done");

        buildShowSnacbar(
            context: context,
            content: "Adding tutorial is done",
            title: 'Hi There!',
            contentType: ContentType.success);
        Navigator.of(context).pop();
      } else {
        debugPrint("Faield to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static getTotorial(String catogory) async {
    List<Tutorial> tutorial = [];
    var url = Uri.parse("${baseUrl}get_tutorial");

    try {
      final res = await http.get(url);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);

        for (var value in data) {
          debugPrint(value["category"]);
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

  static updateTotorial(id, Map data, context, String category) async {
    var url = Uri.parse("${baseUrl}update_tutorial/$id");

    try {
      final res = await http.put(url, body: data);

      if (res.statusCode == 200) {
        debugPrint(res.body);
        debugPrint("tutorial is updated");

        buildShowSnacbar(
            context: context,
            content: "tutorial is updated",
            title: 'Hi There!',
            contentType: ContentType.success);
        Navigator.of(context).pop();
      } else {
        debugPrint("Failed to update data");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static deleteTotorial(id, context) async {
    var url = Uri.parse("${baseUrl}delete_tutorial/$id");

    try {
      final res = await http.delete(url);

      if (res.statusCode == 200) {
        debugPrint("tutorial is deleted");
        buildShowSnacbar(
            context: context,
            content: "Tutorial is deleted",
            title: 'Hi There!',
            contentType: ContentType.warning);
      } else {
        debugPrint("Oops,something went wrong");
        buildShowSnacbar(
            context: context,
            content: "Oops,something went wrong",
            title: 'Oh Hey!!',
            contentType: ContentType.failure);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

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
          if (value['appledStatus'] == true) {
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
        buildShowSnacbar(
            context: context,
            content: "Approved as a teacher",
            title: 'Hi There!',
            contentType: ContentType.help);
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
        debugPrint('heloo');

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
