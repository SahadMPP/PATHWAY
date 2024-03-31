part of 'lesson_form_bloc.dart';

@freezed
class LessonFormState with _$LessonFormState {
  const factory LessonFormState({
    String? pikedImage,
   required String? dropDownpiker,
    PlatformFile? imagefile,
    required bool isLoading,
  }) = _LessonFormState;

   factory LessonFormState.initial(){
    return const LessonFormState(dropDownpiker: "Computer",isLoading: false);
  }
}
