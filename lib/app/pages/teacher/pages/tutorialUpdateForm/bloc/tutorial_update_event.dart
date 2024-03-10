part of 'tutorial_update_bloc.dart';

@freezed
class TutorialUpdateEvent with _$TutorialUpdateEvent {
  const factory TutorialUpdateEvent.dropDownLevel({
    required String value,
  }) = _dropDownLevel;

  const factory TutorialUpdateEvent.updateTutoral({
    required BuildContext context,
    required Map data,
    required String id,
  }) = _updateTutoral;
  
  const factory TutorialUpdateEvent.givingInitialValue({
    required String value,
  }) = _givingInitialValue;
  
}
