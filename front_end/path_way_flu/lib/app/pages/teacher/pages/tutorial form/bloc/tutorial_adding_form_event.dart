part of 'tutorial_adding_form_bloc.dart';

@freezed
class TutorialAddingFormEvent with _$TutorialAddingFormEvent {
  const factory TutorialAddingFormEvent.backButtonClick() = _backButtonClick;
  const factory TutorialAddingFormEvent.dropDownLevelPiker({
    required String level,
  }) = _dropDownLevelPiker;
  const factory TutorialAddingFormEvent.addingTutorial({
    required BuildContext context,
    required Map data,
  }) = _addingTutorial;
}