part of 'lesson_form_bloc.dart';

@freezed
class LessonFormEvent with _$LessonFormEvent {
  const factory LessonFormEvent.navicatingTutoralForm({
    required BuildContext context,
  }) = _navicatingTutoralForm;

  const factory LessonFormEvent.cancelButtonClick({
    required BuildContext context,
  }) = _cancelButtonClick;

  const factory LessonFormEvent.imagePiking() = _imagePiking;

  const factory LessonFormEvent.dropDownpiker({
    required String subject,
  }) = _dropDownpiker;

  const factory LessonFormEvent.addingLession({
    required BuildContext context,
    required String subject,
    required String title,
    required String coverImage,
    required String price,
  }) = _addingLession;

  const factory LessonFormEvent.deleteTutorial({
    required String id,
    required BuildContext context,
  }) = _deleteTutorial;
  
  const factory LessonFormEvent.updateTotorial({
    required Map data,
    required String id,
    required BuildContext context,
  }) = _updateTotorial;
  
}