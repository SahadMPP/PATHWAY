// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/data/model/progress.dart';
import 'package:path_way_flu/app/data/model/student.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:http/http.dart' as http;
import 'package:path_way_flu/app/pages/student/pages/deatiles%20page/ui/deatiles_page.dart';
import 'package:path_way_flu/app/pages/student/pages/deatiles_page_with_outpay.dart';

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

  static addProgress(Map data) async {
    final url = Uri.parse("${baseUrl}add_progress");

    try {
      final res = await http.post(url,
          body: jsonEncode(data),
          headers: {'Content-Type': 'application/json'});

      if (res.statusCode == 200) {
        debugPrint("added progress");
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
          if (value["lessonId"] == catogory) {
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

  static studentSubcriptionAdding(
      {required id,required Map data,required BuildContext context,required Map progressData,required String subject,required num lessonPrice}) async {
    final url = Uri.parse("${baseUrl}update_student/$id");

    try {
      final res = await http.patch(url,
          body: jsonEncode(data),
          headers: {'Content-Type': 'application/json'});

      if (res.statusCode == 200) {
        debugPrint("subject purcher successfull");
        //-----------update subject model-------------
      try {
            final url = Uri.parse("${baseUrl}get_subjectById/$subject");

            final res = await http.get(url);

            if (res.statusCode == 200) {
              var data = jsonDecode(res.body);
              var id = data['_id'];
              var studentC = data['countOfStudent'];
              var orderValue = data['orderValue'];
              
              //-------------------
              var subjectData = {
                "countOfStudent": studentC + 1,
                "orderValue": orderValue + lessonPrice
              };
              try {
                final url = Uri.parse("${baseUrl}update_subject/$id");
                final res = await http.put(url,
                    body: jsonEncode(subjectData),
                    headers: {'Content-Type': 'application/json'});

                if (res.statusCode == 200) {
                  debugPrint("subject model updated");
                } else {
                  debugPrint("failed to update in subject model");
                }
              } catch (e) {
                debugPrint(e.toString());
              }
            } else {
              debugPrint(
                  "debugPrint(we are fasing some error to getting lesson model");
            }
          } catch (e) {
            debugPrint(e.toString());
          }

        //--------------------------------------------
        buildShowSnacbar(
            context: context,
            content: "successfully purchesed",
            title: 'Congratulation',
            contentType: ContentType.success);
        addProgress(progressData);
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

  static Future<http.StreamedResponse> patchProfileImage(
      String id, String filepath) async {
    var request = http.MultipartRequest(
        'PATCH', Uri.parse("${baseUrl}add/student_image/$id"));
    request.files
        .add(await http.MultipartFile.fromPath("profileImage", filepath));
    request.headers.addAll({
      "Content-Type": "multipart/form-data",
    });

    var response = request.send();

    return response;
  }

  static getAllProgerss(String studentId) async {
    List<Progress> listLesson = [];
    final url = Uri.parse('${baseUrl}get_progress');

    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        for (var value in data) {
          if (value['studentId'] == studentId) {
            listLesson.add(Progress.fromJson(value));
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

  static getOneProgerssForUpdate(
      {required String studentId,
      required String lessonId,
      required BuildContext context,
      required int count}) async {
    final url = Uri.parse('${baseUrl}get_progress');

    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        //-----------------------------------------------------
        var data = jsonDecode(res.body);
        for (var value in data) {
          if (value['studentId'] == studentId &&
              value['lessonId'] == lessonId) {
            var id = value['_id'];
            var oldCount = value["countOfLessonWatched"];
            if (oldCount == count) return;
            if (oldCount > count) return;
            if (oldCount + 1 != count) {
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('video is locked'),backgroundColor: Colors.blue,));
              return;
            }
            final url = Uri.parse('${baseUrl}get_progressById/$id');
            try {
              final res = await http.get(url);
              if (res.statusCode == 200) {
                //-----------------------------------------------
                var url = Uri.parse("${baseUrl}update_progress/$id");
                var data = {"countOfLessonWatched": count.toString()};
                try {
                  final res = await http.put(url, body: data);

                  if (res.statusCode == 200) {
                    //-----------------------------------------------------
                    debugPrint("progress is updated");
                  } else {
                    debugPrint("Failed to update progress data");
                  }
                } catch (e) {
                  debugPrint(e.toString());
                }
              } else {
                debugPrint('faild to get student lession');
              }
            } catch (e) {
              debugPrint(e.toString());
            }
          }
        }
      } else {
        debugPrint("failed to get single progress");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static addLessonToStudent(Map data) async {
    final url = Uri.parse("${baseUrl}add_progress");

    try {
      final res = await http.post(url, body: data);

      if (res.statusCode == 200) {
        debugPrint("adding completed");
      } else if (res.statusCode == 400) {
        debugPrint("Faield to get 400 response");
      } else {
        debugPrint("Faield to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static getOneStudent({studentId, lessionId, lesson, context}) async {
    Student? student;
    final url = Uri.parse('${baseUrl}get_studentById/$studentId');

    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        student = Student.fromJson(data);
        if (student.lessonId!.contains(lessionId)) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => StudentvideoPlay(lesson: lesson)));
        } else {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => StudentDeatileWithoutPay(lesson: lesson)));
        }
      } else {
        debugPrint('faild to get student lession');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static getOneprogress(id, Map updateData) async {
    // Progress? progress;
    print('wokingg on progress');
    final url = Uri.parse('${baseUrl}get_progressById/$id');
    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        var url = Uri.parse("${baseUrl}update_progress/$id");
        try {
          final res = await http.put(url,
              body: jsonEncode(updateData),
              headers: {'Content-Type': 'application/json'});

          if (res.statusCode == 200) {
            debugPrint(res.body);
            debugPrint("progress is updated");
          } else {
            debugPrint("Failed to update progress data");
          }
        } catch (e) {
          debugPrint(e.toString());
        }
      } else {
        debugPrint('faild to get student lession');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static updateProgress(id, Map data, context) async {
    var url = Uri.parse("${baseUrl}update_progress/$id");

    try {
      final res = await http.put(url, body: data);

      if (res.statusCode == 200) {
        debugPrint(res.body);
        debugPrint("progress is updated");
      } else {
        debugPrint("Failed to update progress data");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
