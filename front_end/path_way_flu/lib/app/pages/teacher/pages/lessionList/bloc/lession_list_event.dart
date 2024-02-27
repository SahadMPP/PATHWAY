part of 'lession_list_bloc.dart';

@freezed
class LessionListEvent with _$LessionListEvent {
  const factory LessionListEvent.updateLession() = _updateLession;
  const factory LessionListEvent.deleteLession() = _deleteLession;
}

