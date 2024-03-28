// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/main.dart';

part 'tea_edit_profiel_event.dart';
part 'tea_edit_profiel_state.dart';
part 'tea_edit_profiel_bloc.freezed.dart';

class TeaEditProfielBloc
    extends Bloc<TeaEditProfielEvent, TeaEditProfielState> {
  TeaEditProfielBloc() : super(TeaEditProfielState.initial()) {
    on<_gettingInitialValue>((event, emit) async {
      emit(state.copyWith(
        pikedImage: event.image,
      ));
    });

    on<_cencelPage>((event, emit) {
      Navigator.of(event.context).pop();
    });

    on<_updateValue>((event, emit) {
      TeacherApi.updateTeacher(userId!, event.data, event.context);
    });

    on<_imagePiker>((event, emit) async {
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
