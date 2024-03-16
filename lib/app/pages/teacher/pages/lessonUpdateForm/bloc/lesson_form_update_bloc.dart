// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';

part 'lesson_form_update_event.dart';
part 'lesson_form_update_state.dart';
part 'lesson_form_update_bloc.freezed.dart';

class LessonFormUpdateBloc
    extends Bloc<LessonFormUpdateEvent, LessonFormUpdateState> {
  LessonFormUpdateBloc() : super(LessonFormUpdateState.initial()) {
    on<_updatelesson>((event, emit) {
      TeacherApi.updateLesson(
          context: event.context, data: event.data, id: event.id);
    });

    on<_cancelButtonClick>((event, emit) {});

    on<_dropDownpiker>((event, emit) {
      emit(state.copyWith(dropdownPiker: event.value));
    });

    on<_givingInitialDropDownValue>((event, emit) {
      emit(state.copyWith(dropdownPiker: event.value,pikedImage:event.pikedImage ));
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
  }
}
