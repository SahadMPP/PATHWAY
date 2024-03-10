part of 'student_home_bloc.dart';

@freezed
class StudentHomeEvent with _$StudentHomeEvent {
  const factory StudentHomeEvent.navigatingSeeAll({
    required BuildContext context,
  }) = _navigatingSeeAll;
  const factory StudentHomeEvent.deatilePage({
    required BuildContext context,
    required Lesson lesson,
  }) = _deatilePage;
  const factory StudentHomeEvent.swichingSubjectList({
    required int index,
  }) = _swichingSubjectList;
}
