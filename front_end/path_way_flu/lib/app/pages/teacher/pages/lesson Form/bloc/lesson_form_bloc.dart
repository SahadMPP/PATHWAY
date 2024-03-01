import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/ui/adding_tutorial_form.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/teacher_bottom_navi.dart';
import 'package:path_way_flu/main.dart';
import 'package:http/http.dart' as http;

part 'lesson_form_event.dart';
part 'lesson_form_state.dart';
part 'lesson_form_bloc.freezed.dart';

class LessonFormBloc extends Bloc<LessonFormEvent, LessonFormState> {
  LessonFormBloc() : super(LessonFormState.initial()) {
    on<_cancelButtonClick>((event, emit) {
      Navigator.of(event.context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (ctx) => const TeacherBotmNavi()),
          (route) => false);
          emit(state.copyWith(pikedImage: null));
    });

    on<_addingLession>((event, emit)async {
      final url = Uri.parse('${AuthApi.baseUrl}get_teacherById/$userId');

    try {
      final res = await http.get(url);

      if (res.statusCode == 200) {
       var data = json.decode(res.body);
      
        var dataNew = {
         "subject":event.subject.toString(),
         "title":event.title.toString(),
         "coverImage":event.coverImage.toString(),
         "profileImage":event.coverImage.toString(),
         "creatorName":data['name'].toString(),
      };
       // ignore: use_build_context_synchronously
      TeacherApi.addingLession(context: event.context,data:dataNew,filepath: event.coverImage);
      } else {
        debugPrint('faield to get data');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
      
      
    });

    on<_imagePiking>((event, emit) async {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        emit(state.copyWith(pikedImage: image.path));
      } else {
        return;
      }
    });

    on<_dropDownpiker>((event, emit) {
      emit(state.copyWith(dropDownpiker: event.subject));
    });

    on<_navicatingTutoralForm>((event, emit) {
      Navigator.of(event.context).pushReplacement(MaterialPageRoute(
        builder: (context) => const AddTotorialForm(),
      ));
    });
  
    on<_deleteTutorial>((event, emit) {
   TeacherApi.deleteTotorial(event.id,event.context);
  });
    
    on<_updateTotorial>((event, emit) {
      TeacherApi.updateTotorial(event.id,event.data,event.context);
    });
  }
}
