part of 'teacher_bloc.dart';

@freezed
class TeacherState with _$TeacherState {
  const factory TeacherState({
    String? signatureImage,
    String? cetificateImageOne,
    String? cetificateImageTwo,
    required String subjectDropDown,
    required String expDropDown,
  }) = _TeacherState;
  factory TeacherState.initial() {
    return const TeacherState(
      expDropDown: "1",
      subjectDropDown: "Computer",
    );
  }
}
