part of 'teacher_application_bloc.dart';

@freezed
class TeacherApplicationState with _$TeacherApplicationState {
  const factory TeacherApplicationState({
        required String subjectDropDown,
  }) = _TeacherApplicationState;

 factory TeacherApplicationState.initial(){
  return const TeacherApplicationState(subjectDropDown: "Computer");
 }
}
