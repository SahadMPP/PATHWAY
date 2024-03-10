part of 'teacher_home_bloc.dart';

@freezed
class TeacherHomeState with _$TeacherHomeState {
  const factory TeacherHomeState({
    required int selectedTopic,
    required String currentSubject,
  }) = _TeacherHomeState;

  factory TeacherHomeState.initial(){
    return  TeacherHomeState(selectedTopic: 0, currentSubject: subjectList[0]['name']!);
  }

}
