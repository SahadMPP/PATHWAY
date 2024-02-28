part of 'lession_list_bloc.dart';

@freezed
class LessionListEvent with _$LessionListEvent {
  const factory LessionListEvent.updateLession({
    required BuildContext context,
    required Lession lesson,
  }) = _updateLession;
  const factory LessionListEvent.deleteLession() = _deleteLession;
  const factory LessionListEvent.navigatingLessionFrom({
    required BuildContext context,
  }) = _navigatingLessionFrom;
}

