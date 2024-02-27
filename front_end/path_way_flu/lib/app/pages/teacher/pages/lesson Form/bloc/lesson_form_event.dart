part of 'lesson_form_bloc.dart';

@freezed
class LessonFormEvent with _$LessonFormEvent {
  const factory LessonFormEvent.started() = _Started;
}