// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_way_flu/features/teacher/data/repositories/teacher_api_calls.dart';

part 'teacher_event.dart';
part 'teacher_state.dart';
part 'teacher_bloc.freezed.dart';

class TeacherBloc extends Bloc<TeacherEvent, TeacherState> {
  TeacherBloc() : super(TeacherState.initial()) {
    on<_updateData>((event, emit) {
      TeacherApi.applyingForSubject(event.id, event.data, event.context);
    });

    on<_certificatePikerOne>((event, emit) async {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        emit(state.copyWith(cetificateImageOne: image.path));
      } else {
        return;
      }
    });
    on<_certificatePikerTwo>((event, emit) async {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        emit(state.copyWith(cetificateImageTwo: image.path));
      } else {
        return;
      }
    });

    on<_levelclickEventInAddiTutorial>((event, emit) {
      emit(state.copyWith(expDropDown: event.level));
    });
    on<_subjectClickEventInAddingTutoral>((event, emit) {
      emit(state.copyWith(subjectDropDown: event.subject));
    });

    on<_colloctingSignatureImage>((event, emit) {
      emit(state.copyWith(signatureImage: event.imageString));
    });
  }
}
