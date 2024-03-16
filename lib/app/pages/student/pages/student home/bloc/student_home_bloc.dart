// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/ui/see_all_category.dart';
import 'package:path_way_flu/main.dart';

part 'student_home_event.dart';
part 'student_home_state.dart';
part 'student_home_bloc.freezed.dart';

class StudentHomeBloc extends Bloc<StudentHomeEvent, StudentHomeState> {
  StudentHomeBloc() : super(StudentHomeState.initial()) {
   on<_navigatingSeeAll>((event, emit) {
      Navigator.of(event.context).push(MaterialPageRoute(builder: (context) => const SeeAllCategory(),));
   });

   on<_swichingSubjectList>((event, emit) {
      emit(state.copyWith(
          selectedTopic: event.index,
          currentSubject: subjectList[event.index]['name']!));
   });

   on<_deatilePage>((event, emit) {
    StudentApi.getOneStudentForDeatilePage(context:event.context,lessionId:event.lesson.id,lesson: event.lesson,studentId:userId );
   });
  }
}
