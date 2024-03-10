import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/ui/see_all_category.dart';

part 'teacher_home_event.dart';
part 'teacher_home_state.dart';
part 'teacher_home_bloc.freezed.dart';

class TeacherHomeBloc extends Bloc<TeacherHomeEvent, TeacherHomeState> {


  TeacherHomeBloc() : super(TeacherHomeState.initial()) {
    on<_navigatingSeeAllPage>((event, emit) {
      Navigator.of(event.context).push(MaterialPageRoute(
        builder: (context) => const SeeAllCategory(),
      ));
    });

    on<_navigatingDeatilePage>((event, emit) {});

    on<_swichingSubjectList>((event, emit) {
      emit(state.copyWith(
          selectedTopic: event.index,
          currentSubject: subjectList[event.index]['name']!));
    });
  }
}
