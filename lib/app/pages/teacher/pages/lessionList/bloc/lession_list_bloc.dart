// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lesson%20Form/ui/lession_form.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lessonUpdateForm/ui/lession_form_update.dart';

part 'lession_list_event.dart';
part 'lession_list_state.dart';
part 'lession_list_bloc.freezed.dart';

class LessionListBloc extends Bloc<LessionListEvent, LessionListState> {
  LessionListBloc() : super(const _Initial()) {
    on<_navigatingLessionFrom>((event, emit) {
      Navigator.of(event.context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const LessionForm()));
    });

    on<_updateLession>((event, emit) {
    Navigator.of(event.context).pushReplacement(MaterialPageRoute(builder: (context) =>  LessonFormUpdate(lesson: event.lesson),));
    });

    on<_deleteLession>((event, emit) {
      TeacherApi.deleteLesson(event.id,event.context);
    });
  }
}
