import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:http/http.dart' as http;
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/teacher_bottom_navi.dart';
import 'package:path_way_flu/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'teacher_profile_collecting_event.dart';
part 'teacher_profile_collecting_state.dart';
part 'teacher_profile_collecting_bloc.freezed.dart';

class TeacherProfileCollectingBloc
    extends Bloc<TeacherProfileCollectingEvent, TeacherProfileCollectingState> {
  TeacherProfileCollectingBloc()
      : super(TeacherProfileCollectingState.initial()) {
    on<_updateingImage>((event, emit) async {
      if (state.selectedImage == null) {
        buildShowSnacbar(
            context: event.context,
            content: "Faield to add image",
            title: "Oop's",
            contentType: ContentType.warning);
      } else {
        final res =
            await TeacherApi.patchProfileImage(event.id, state.selectedImage!);
        if (res.statusCode == 200) {
          //save profile image in shaerd preference
          final url =
              Uri.parse('${AuthApi.baseUrl}get_teacherById/${event.id}');
          try {
            final res = await http.get(url);
            if (res.statusCode == 200) {
              var data = jsonDecode(res.body);
              userProfile = data['profileImage'];
              final sharedPreferences = await SharedPreferences.getInstance();
              sharedPreferences.setString(SAVE_KEY_PROFILE, userProfile!);
              // ignore: use_build_context_synchronously
              Navigator.of(event.context).pushReplacement(MaterialPageRoute(
                builder: (ctx) => const TeacherBotmNavi(),
              ));
            } else {
              debugPrint('faild to get teacher');
            }
          } catch (e) {
            debugPrint(e.toString());
          }
          //-------------------------
        } else {
          // ignore: use_build_context_synchronously
          buildShowSnacbar(
              context: event.context,
              content: "Something went wrong,Check you connection",
              title: "Oop's",
              contentType: ContentType.warning);
        }
      }
    });

    on<_$pikingImgeImpl>((event, emit) {
      on<_pikingImge>((event, emit) async {
        final ImagePicker picker = ImagePicker();
        XFile? image = await picker.pickImage(source: ImageSource.gallery);
        if (image != null) {
          emit(state.copyWith(selectedImage: image.path));
        } else {
          return;
        }
      });
    });
  }
}
