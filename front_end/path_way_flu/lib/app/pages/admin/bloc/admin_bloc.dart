// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/data/middleware/admin.dart';

part 'admin_event.dart';
part 'admin_state.dart';
part 'admin_bloc.freezed.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  AdminBloc() : super(AdminState.initial()) {
    on<_addTutorial>((event, emit) {
      var data = {
        "title": event.titleCon,
        "creator": event.creatorCon,
        "level": event.levelCon,
        "category": event.categoryCon,
        "tumbnailImage": event.thumnilCon,
        "videoUrl": event.videoUrlCon,
        "duration": event.durationCon,
        "discription": event.discriptionCon,
      };
      AdminApi.addTotorial(data, event.context);
      emit(state.copyWith(selectedImage: null));
    });
    on<_updateTutoral>((event, emit) {
      var data = {
        "title": event.titleCon,
        "creator": event.creatorCon,
        "level": event.levelCon,
        "category": event.categoryCon,
        "tumbnailImage": event.thumnilCon,
        "videoUrl": event.videoUrlCon,
        "duration": event.durationCon,
        "discription": event.discriptionCon,
      };
      AdminApi.updateTotorial(event.id, data, event.context, event.categoryCon);

      emit(state.copyWith(selectedImage: null));
    });
    on<_deleteTutorial>((event, emit) {
      AdminApi.deleteTotorial(event.id, event.context);
    });

    on<_imagePiker>((event, emit) async {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        emit(state.copyWith(selectedImage: image.path));
      } else {
        return;
      }
    });

    on<_updateTutoralButtonClick>((event, emit) {
      emit(AdminState(
        subjectDropDown: event.tutorial.category,
        levelDropDown: event.tutorial.level,
        selectedImage: event.tutorial.tumbnailImage,
      ));
    });

    on<_levelclickEventInAddiTutorial>((event, emit) {
      emit(state.copyWith(levelDropDown: event.level));
    });
    on<_subjectClickEventInAddingTutoral>((event, emit) {
      emit(state.copyWith(subjectDropDown: event.subject));
    });

    on<_deleteComplaint>((event, emit) {
      AdminApi.deleteComplates(event.id, event.context);
    });

    on<_tutorApplicationSubmition>((event, emit) {
      AdminApi.subjectApproving(event.id, event.data, event.context);
    });
  }
}
