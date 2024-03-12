part of 'teacher_profile_collecting_bloc.dart';

@freezed
class TeacherProfileCollectingState with _$TeacherProfileCollectingState {
  const factory TeacherProfileCollectingState({
    String? selectedImage,
  }) = _TeacherProfileCollectingState;

  factory TeacherProfileCollectingState.initial(){
    return const TeacherProfileCollectingState();
  }
}
