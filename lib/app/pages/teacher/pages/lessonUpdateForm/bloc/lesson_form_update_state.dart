part of 'lesson_form_update_bloc.dart';

@freezed
class LessonFormUpdateState with _$LessonFormUpdateState {
  const factory LessonFormUpdateState({
    String? pikedImage,
    String? currentPikedImage,
    required String dropdownPiker,
  }) = _LessonFormUpdateState;

  factory LessonFormUpdateState.initial(){
    return const LessonFormUpdateState(dropdownPiker: "Computer");
  }
}
