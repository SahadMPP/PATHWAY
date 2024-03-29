// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';

part 'teacher_application_event.dart';
part 'teacher_application_state.dart';
part 'teacher_application_bloc.freezed.dart';

class TeacherApplicationBloc
    extends Bloc<TeacherApplicationEvent, TeacherApplicationState> {
  TeacherApplicationBloc() : super(TeacherApplicationState.initial()) {
    on<_subjectClickEventInAddingTutoral>((event, emit) {
      emit(state.copyWith(subjectDropDown: event.subject));
    });

    //---------------------
    on<_updateData>((event, emit) {
      TeacherApi.applyingForSubject(event.id, event.data, event.context);
      emit(state.copyWith(
          cetificateImageOne: null,
          cetificateImageTwo: null,
          signatureImage: null));
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

    on<_colloctingSignatureImage>((event, emit) {
      emit(state.copyWith(signatureImage: event.imageString));
    });
  }
}
