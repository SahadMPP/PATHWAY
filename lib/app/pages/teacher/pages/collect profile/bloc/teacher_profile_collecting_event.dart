part of 'teacher_profile_collecting_bloc.dart';

@freezed
class TeacherProfileCollectingEvent with _$TeacherProfileCollectingEvent {
  const factory TeacherProfileCollectingEvent.pikingImge() = _pikingImge;

  const factory TeacherProfileCollectingEvent.updateingImage({
    required BuildContext context,
    required String id,
  }) = _updateingImage;
}
