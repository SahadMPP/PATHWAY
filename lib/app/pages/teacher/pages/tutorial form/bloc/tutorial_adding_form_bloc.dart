// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';

part 'tutorial_adding_form_event.dart';
part 'tutorial_adding_form_state.dart';
part 'tutorial_adding_form_bloc.freezed.dart';

class TutorialAddingFormBloc
    extends Bloc<TutorialAddingFormEvent, TutorialAddingFormState> {
  TutorialAddingFormBloc() : super(TutorialAddingFormState.initial()) {
    on<_addingTutorial>((event, emit)async {
      emit(state.copyWith(isLoading: true));
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      TeacherApi.addTotorial(event.data,event.context,event.lessonId,event.duration);
      emit(state.copyWith(isLoading: false));

    });

    on<_backButtonClick>((event, emit) {});

    on<_dropDownLevelPiker>((event, emit) {
      emit(state.copyWith(levelDropDown: event.level));
    });
  }
}
