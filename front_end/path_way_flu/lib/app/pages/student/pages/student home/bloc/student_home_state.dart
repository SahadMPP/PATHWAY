part of 'student_home_bloc.dart';

@freezed
class StudentHomeState with _$StudentHomeState {
  const factory StudentHomeState({
    required int selectedTopic,
    required String currentSubject,
  }) = _StudentHomeState;

  factory StudentHomeState.initial(){
    return  StudentHomeState(selectedTopic: 0, currentSubject: subjectList[0]['name']!);
  }
}
