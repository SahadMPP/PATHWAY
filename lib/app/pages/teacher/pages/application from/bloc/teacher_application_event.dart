part of 'teacher_application_bloc.dart';

@freezed
class TeacherApplicationEvent with _$TeacherApplicationEvent {
  const factory TeacherApplicationEvent.subjectClickEventInAddingTutoral({
    required String subject,
  }) = _subjectClickEventInAddingTutoral;
  //------------from teacher main bloc----------------
    const factory TeacherApplicationEvent.updateData({
    required String id,
    required Map data,
    required BuildContext context,
  }) = _updateData;

  const factory TeacherApplicationEvent.certificatePikerOne() = _certificatePikerOne;

  const factory TeacherApplicationEvent.certificatePikerTwo() = _certificatePikerTwo;

  const factory TeacherApplicationEvent.levelclickEventInAddiTutorial({
    required String level,
  }) = _levelclickEventInAddiTutorial;

  const factory TeacherApplicationEvent.colloctingSignatureImage({
    required String imageString,
  }) = _colloctingSignatureImage;
}