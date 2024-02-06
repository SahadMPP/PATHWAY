// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:path_way_flu/features/admin/data/models/complaint_model.dart';
import 'package:path_way_flu/features/admin/data/models/tutoral_model.dart';
import 'package:path_way_flu/features/auth/data/repositories/api.dart';
import 'package:http/http.dart' as http;

class AdminApi {
  // api for tutorial
  static const baseUrl = AuthApi.baseUrl;

  static addTotorial(data, BuildContext context) async {
    final url = Uri.parse("${baseUrl}add_tutorial");
    try {
      final res = await http.post(url, body: data);

      if (res.statusCode == 200) {
        debugPrint("Add tutorial is done");

        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Add tutorial is done")));
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

  static updateTotorial(id, Map data, context) async {
    var url = Uri.parse("${baseUrl}update_tutorial/$id");

    try {
      final res = await http.put(url, body: data);

      if (res.statusCode == 200) {
        debugPrint(res.body);
        debugPrint("tutorial is updated");
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("tutorial is updated")));
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
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("tutorial is deleted")));
      } else {
        debugPrint("Oops,something went wrong");
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
        for (var value in data["complaint"]) {
          complaints.add(Complaint(
            title: value["title"],
            description: value["description"],
            id: value["id"],
          ));
        }
        return complaints;
      } else {
        return complaints;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static deleteComplates(id) async {
    var url = Uri.parse("${baseUrl}delete_complaint");

    try {
      final res = await http.delete(url);

      if (res.statusCode == 200) {
        debugPrint("complaint deleted");
      } else {
        debugPrint("Oops,something went wrong");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
