// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/app/data/middleware/admin.dart';
import 'package:path_way_flu/app/data/model/teacher.dart';
import 'package:path_way_flu/app/pages/chat/pages/chat_messaging.dart';

part 'student_chat_event.dart';
part 'student_chat_state.dart';
part 'student_chat_bloc.freezed.dart';

class StudentChatBloc extends Bloc<StudentChatEvent, StudentChatState> {
  StudentChatBloc() : super(StudentChatState.initial()) {
    on<_givingValue>((event, emit) async {
      emit(state.copyWith(list: await AdminApi.getTeacher()));
    });

    on<_filteringForSearch>((event, emit) async {
      emit(state.copyWith(list: await AdminApi.getTeacher()));
      
      List<Teacher> result = [];
      if (event.textValue.isEmpty) {
        result = state.list;
      } else {
        result = state.list
            .where((user) =>
                user.name.toLowerCase().contains(event.textValue.toLowerCase()))
            .toList();
      }
      emit(state.copyWith(list: result));
    });

    on<_navigatingToChatScreen>((event, emit) {
      Navigator.of(event.context)
          .push(MaterialPageRoute(builder: (ctx) =>  MassagingScreen(image:event.image ,name:event.name)));
    });
  }
}
