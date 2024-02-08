part of 'teacher_bloc.dart';

@freezed
class TeacherEvent with _$TeacherEvent {
  const factory TeacherEvent.updateData({
    required String id,
    required Map data,
    required BuildContext context,
  }) = _updateData;

  const factory TeacherEvent.certificatePikerOne() = _certificatePikerOne;

  const factory TeacherEvent.certificatePikerTwo() = _certificatePikerTwo;

  const factory TeacherEvent.levelclickEventInAddiTutorial({
    required String level,
  }) = _levelclickEventInAddiTutorial;

  const factory TeacherEvent.subjectClickEventInAddingTutoral({
    required String subject,
  }) = _subjectClickEventInAddingTutoral;
}
