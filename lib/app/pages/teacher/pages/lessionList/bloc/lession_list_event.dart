part of 'lession_list_bloc.dart';

@freezed
class LessionListEvent with _$LessionListEvent {
  const factory LessionListEvent.updateLession({
    required BuildContext context,
    required Lesson lesson,
  }) = _updateLession;
  const factory LessionListEvent.deleteLession({
    required BuildContext context,
    required String id,
  }) = _deleteLession;
  const factory LessionListEvent.navigatingLessionFrom({
    required BuildContext context,
  }) = _navigatingLessionFrom;
}

