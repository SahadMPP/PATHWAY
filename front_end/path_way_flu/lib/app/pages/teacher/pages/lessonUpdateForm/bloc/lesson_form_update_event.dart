part of 'lesson_form_update_bloc.dart';

@freezed
class LessonFormUpdateEvent with _$LessonFormUpdateEvent {
  const factory LessonFormUpdateEvent. updatelesson({
    required BuildContext context,
    required String id,
    required Map data,
  }) = _updatelesson;
  const factory LessonFormUpdateEvent.cancelButtonClick() = _cancelButtonClick;
  const factory LessonFormUpdateEvent.dropDownpiker({
    required String value,
  }) = _dropDownpiker;
  
  const factory LessonFormUpdateEvent.givingInitialDropDownValue({
    required String value,
    required String pikedImage,
  }) = _givingInitialDropDownValue;
  
  const factory LessonFormUpdateEvent.imagePiking() = _imagePiking;
  
}