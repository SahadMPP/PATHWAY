// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';

part 'tutorial_update_event.dart';
part 'tutorial_update_state.dart';
part 'tutorial_update_bloc.freezed.dart';

class TutorialUpdateBloc
    extends Bloc<TutorialUpdateEvent, TutorialUpdateState> {
  TutorialUpdateBloc() : super(TutorialUpdateState.initial()) {
    on<_updateTutoral>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      TeacherApi.updateTotorial(event.id, event.data, event.context);
      emit(state.copyWith(isLoading: false));
    });

    on<_dropDownLevel>((event, emit) {
      emit(state.copyWith(dropDownLevel: event.value));
    });

    on<_givingInitialValue>((event, emit) {
      emit(state.copyWith(dropDownLevel: event.value));
    });
  }
}
