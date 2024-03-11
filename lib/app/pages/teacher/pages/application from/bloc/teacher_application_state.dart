part of 'teacher_application_bloc.dart';

@freezed
class TeacherApplicationState with _$TeacherApplicationState {
  const factory TeacherApplicationState({
    String? signatureImage,
    String? cetificateImageOne,
    String? cetificateImageTwo,
    required String subjectDropDown,
    required String expDropDown,
  }) = _TeacherApplicationState;

  factory TeacherApplicationState.initial() {
    return const TeacherApplicationState(
      expDropDown: "1",
      subjectDropDown: "Computer",
    );
  }
}
