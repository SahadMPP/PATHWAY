import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_form_event.dart';
part 'lesson_form_state.dart';
part 'lesson_form_bloc.freezed.dart';

class LessonFormBloc extends Bloc<LessonFormEvent, LessonFormState> {
  LessonFormBloc() : super(_Initial()) {
    on<LessonFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
