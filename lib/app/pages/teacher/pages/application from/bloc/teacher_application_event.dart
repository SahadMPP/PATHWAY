part of 'teacher_application_bloc.dart';

@freezed
class TeacherApplicationEvent with _$TeacherApplicationEvent {
  const factory TeacherApplicationEvent.subjectClickEventInAddingTutoral({
    required String subject,
  }) = _subjectClickEventInAddingTutoral;
  
}