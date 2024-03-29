// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/main.dart';

part 'see_all_event.dart';
part 'see_all_state.dart';
part 'see_all_bloc.freezed.dart';

class SeeAllBloc extends Bloc<SeeAllEvent, SeeAllState> {
  SeeAllBloc() : super(SeeAllState.initial()) {
    on<_givingInitialValue>((event, emit) async {
      emit(state.copyWith(list: await TeacherApi.getAllLession()));
    });

    on<_fulturedValue>((event, emit) async {
      emit(state.copyWith(list: await TeacherApi.getAllLession()));

      List<Lesson> result = [];

      if (event.typeText.isEmpty) {
        result = state.list;
      } else {
        result = state.list
            .where((user) =>
                user.title.toLowerCase().contains(event.typeText.toLowerCase()))
            .toList();
      }
      emit(state.copyWith(list: result));
    });

    on<_navigatingMaker>((event, emit) {
      StudentApi.getOneStudentForDeatilePage(
          context: event.context,
          lessionId: event.lesson.id,
          lesson: event.lesson,
          studentId: userId);
    });
  }
}
