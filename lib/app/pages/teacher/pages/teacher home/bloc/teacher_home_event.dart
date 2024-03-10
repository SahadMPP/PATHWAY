part of 'teacher_home_bloc.dart';

@freezed
class TeacherHomeEvent with _$TeacherHomeEvent {
  const factory TeacherHomeEvent.navigatingDeatilePage() = _navigatingDeatilePage;
  const factory TeacherHomeEvent.navigatingSeeAllPage({
    required BuildContext context,
  }) = _navigatingSeeAllPage;
  const factory TeacherHomeEvent.swichingSubjectList({
    required int index,
  }) = _swichingSubjectList;
}