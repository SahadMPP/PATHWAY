part of 'tutorial_update_bloc.dart';

@freezed
class TutorialUpdateState with _$TutorialUpdateState {

  const factory TutorialUpdateState({
    required String dropDownLevel,
  }) = _TutorialUpdateState;

   factory TutorialUpdateState.initial(){
    return const TutorialUpdateState(dropDownLevel: "Basic");
  }
}
