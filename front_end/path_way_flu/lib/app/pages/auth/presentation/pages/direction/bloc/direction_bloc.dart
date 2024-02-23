// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'direction_event.dart';
part 'direction_state.dart';
part 'direction_bloc.freezed.dart';

class DirectionBloc extends Bloc<DirectionEvent, DirectionState> {
  DirectionBloc() : super(DirectionState.initial()) {
     on<_directionSelection>((event, emit) {
      if (state.directionValue == true) {
        emit(state.copyWith(directionValue: false, directionText: "Teacher"));
      } else {
        emit(state.copyWith(directionValue: true, directionText: "Student"));
      }
    });
  }
}
