part of 'tutorial_adding_form_bloc.dart';

@freezed
class TutorialAddingFormState with _$TutorialAddingFormState {
  const factory TutorialAddingFormState({
    required String levelDropDown,
    required bool isLoading,
  }) = _TutorialAddingFormState;

  factory TutorialAddingFormState.initial(){
    return const TutorialAddingFormState(levelDropDown: "Basic",isLoading: false);
  }
}
