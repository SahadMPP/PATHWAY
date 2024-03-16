// ignore_for_file: use_build_context_synchronously, depend_on_referenced_packages

import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:http/http.dart' as http;
import 'package:path_way_flu/app/pages/student/widgets/student_bottom.dart';
import 'package:path_way_flu/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'student_init_deatiles_event.dart';
part 'student_init_deatiles_state.dart';
part 'student_init_deatiles_bloc.freezed.dart';

class StudentInitDeatilesBloc
    extends Bloc<StudentInitDeatilesEvent, StudentInitDeatilesState> {
  StudentInitDeatilesBloc() : super(StudentInitDeatilesState.initial()) {
    on<_updateingImage>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      if (state.selectedImage == null) {
        buildShowSnacbar(
            context: event.context,
            content: "Faield to add image",
            title: "Oop's",
            contentType: ContentType.warning);
      } else {
        final res =
            await StudentApi.patchProfileImage(event.id, state.selectedImage!);
        if (res.statusCode == 200) {
          //save profile image in shaerd preference
          final url =
              Uri.parse('${AuthApi.baseUrl}get_studentById/${event.id}');
          try {
            final res = await http.get(url);
            if (res.statusCode == 200) {
              var data = jsonDecode(res.body);
              userProfile = data['profileImage'];
              final sharedPreferences = await SharedPreferences.getInstance();
              sharedPreferences.setString(SAVE_KEY_PROFILE, userProfile!);
              emit(state.copyWith(isLoading: false));
              Navigator.of(event.context).pushReplacement(MaterialPageRoute(
                builder: (ctx) => const StudentBotmNavi(),
              ));
            } else {
              debugPrint('faild to get student');
            }
          } catch (e) {
            debugPrint(e.toString());
          }
          //-------------------------
        } else {
          buildShowSnacbar(
              context: event.context,
              content: "Something went wrong ,Check you connection",
              title: "Oop's",
              contentType: ContentType.warning);
        }
      }
    });

    on<_pikingImge>((event, emit) async {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        emit(state.copyWith(selectedImage: image.path));
      } else {
        return;
      }
    });

    on<_pikingLevel>((event, emit) {
      emit(state.copyWith(selectedLevel: event.level));
    });

    on<_updatingLevel>((event, emit) {
      Map<String,dynamic> data = {'level': state.selectedLevel.toString()};
      StudentApi.updateStudentForlevel(userId, data, event.context);
    });
  }
}
