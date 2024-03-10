part of 'student_init_deatiles_bloc.dart';

@freezed
class StudentInitDeatilesEvent with _$StudentInitDeatilesEvent {
  const factory StudentInitDeatilesEvent.pikingImge() = _pikingImge;

  const factory StudentInitDeatilesEvent.updateingImage({
    required BuildContext context,
    required String id,
  }) = _updateingImage;

  const factory StudentInitDeatilesEvent.pikingLevel({
    required String level
  }) = _pikingLevel;

  const factory StudentInitDeatilesEvent.updatingLevel({
    required BuildContext context,
  }) = _updatingLevel;
  
}
