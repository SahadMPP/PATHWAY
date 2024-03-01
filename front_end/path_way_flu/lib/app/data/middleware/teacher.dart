// ignore_for_file: use_build_context_synchronously
import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:http/http.dart' as http;
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/teacher_bottom_navi.dart';

class TeacherApi {
  static const baseUrl = AuthApi.baseUrl;

  static applyingForSubject(id, data, BuildContext context) async {
    final url = Uri.parse("${baseUrl}update_teacher/$id");

    try {
      final res = await http.put(url,
          body: jsonEncode(data),
          headers: {'Content-Type': 'application/json'});

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

// Lesson List
  static void addingLession(
      {required Map data, required BuildContext context,required String filepath}) async {

    final url = Uri.parse('${baseUrl}add_lession');

    try {
      final res = await http.post(url, body: data);

      if (res.statusCode == 200) {
        debugPrint("add lession is successfull");
    
        var data = jsonDecode(res.body);
       var image_response = await patchImage(data["_id"], filepath);
  print(image_response);
          
        if (image_response.statusCode == 200) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const TeacherBotmNavi(),
        ));
        buildShowSnacbar(
            context: context,
            content: "Adding lession in successfull ",
            title: "Done!",
            contentType: ContentType.success);
        } else {
          buildShowSnacbar(
            context: context,
            content: "You fasing some network error",
            title: "Oop's!",
            contentType: ContentType.failure);
        }
        
      } else {
        debugPrint("Field to add lession");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static getAllLession() async {
    List<Lession> listLesson = [];
    final url = Uri.parse('${baseUrl}get_lession');

    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        for (var value in data) {
          listLesson.add(Lession.fromJson(value));
        }
        return listLesson;
      } else {
        return listLesson;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  // static getOnelession(id) async {
  //   final url = Uri.parse('${baseUrl}get_lessionById/$id');

  //   try {
  //     final res = await http.get(url);
  //     if (res.statusCode == 200) {
  //       var data = jsonDecode(res.body);
  //       List list = data['lessonId'];
  //     } else {
  //       debugPrint('faild to get current lession');
  //     }
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }

  static updateLesson(
      {required BuildContext context, required Map data, required id}) async {
    var url = Uri.parse("${baseUrl}update_lession/$id");

    try {
      final res = await http.put(url,
          body: jsonEncode(data),
          headers: {'Content-Type': 'application/json'});

      if (res.statusCode == 200) {
        debugPrint(res.body);
        debugPrint("lesson is updated");
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (ctx) => const TeacherBotmNavi(),
        ));
        buildShowSnacbar(
            context: context,
            content: "Lesson is updated",
            title: 'Hi There!',
            contentType: ContentType.success);
      } else {
        debugPrint("Failed to update data");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static deleteLesson(id, BuildContext context) async {
    var url = Uri.parse("${baseUrl}delete_lession/$id");

    try {
      final res = await http.delete(url);

      if (res.statusCode == 200) {
        debugPrint("Lesson is deleted");
        buildShowSnacbar(
            context: context,
            content: "Lesson is deleted",
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

// Tutorial list
  static addTotorial(
    Map data,
    BuildContext context,
    String lessionId,
  ) async {
    List<dynamic> oldIdList = [];
    final url = Uri.parse("${baseUrl}add_tutorial");
    try {
      final res = await http.post(url, body: data);

      if (res.statusCode == 200) {
        debugPrint("Add tutorial is done");
        // getting previous list of id
        final url = Uri.parse('${baseUrl}get_lessionById/$lessionId');

        try {
          final res = await http.get(url);
          if (res.statusCode == 200) {
            var data = jsonDecode(res.body);
            oldIdList = data['lessonId'];
          } else {
            debugPrint('faild to get current lession');
          }
        } catch (e) {
          debugPrint(e.toString());
        }

        //adding id to lession
        var data = jsonDecode(res.body);
        oldIdList.add(data['_id']);
        var updateLessonData = {"lessonId": oldIdList};

        updateLesson(context: context, data: updateLessonData, id: lessionId);

        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const TeacherBotmNavi(),
        ));
        buildShowSnacbar(
            context: context,
            content: "Adding tutorial is done",
            title: 'Hi There!',
            contentType: ContentType.success);
      } else {
        debugPrint("Faield to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static getTotorial(id) async {
    List<Tutorial> tutorial = [];
    List list = [];
    var url = Uri.parse("${baseUrl}get_tutorial");

    try {
      final res = await http.get(url);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);

        // getting One lesson

        final url = Uri.parse('${baseUrl}get_lessionById/$id');

        try {
          final res = await http.get(url);
          if (res.statusCode == 200) {
            var lessonData = jsonDecode(res.body);
            list = lessonData['lessonId'];
          } else {
            debugPrint('faild to get current lession');
          }
        } catch (e) {
          debugPrint(e.toString());
        }
//--------------------------
        for (var value in data) {
          if (list.contains(value['_id'])) {
            String? id = value["_id"] as String?;
            if (id != null) {
              tutorial.add(Tutorial.fromJson(value));
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

  static updateTotorial(id, Map data, context) async {
    var url = Uri.parse("${baseUrl}update_tutorial/$id");

    try {
      final res = await http.put(url, body: data);

      if (res.statusCode == 200) {
        debugPrint(res.body);
        debugPrint("tutorial is updated");
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const TeacherBotmNavi(),
        ));
        buildShowSnacbar(
            context: context,
            content: "tutorial is updated",
            title: 'Hi There!',
            contentType: ContentType.success);
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

  static Future<http.StreamedResponse> patchImage(String id,String filepath)async{
   var request = http.MultipartRequest('PATCH',Uri.parse("${baseUrl}add/image/$id"));
  request.files.add(await http.MultipartFile.fromPath("coverImage", filepath));
  request.headers.addAll({
   "Content-Type": "multipart/form-data",
  });

  var response = request.send();
  
  return response;
  }
}
