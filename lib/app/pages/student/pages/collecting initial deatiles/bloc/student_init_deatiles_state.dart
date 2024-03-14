part of 'student_init_deatiles_bloc.dart';

@freezed
class StudentInitDeatilesState with _$StudentInitDeatilesState {
  const factory StudentInitDeatilesState({
    String? selectedImage,
   required String selectedLevel,
   required bool isLoading,
  }) = _StudentInitDeatilesState;

  factory StudentInitDeatilesState.initial(){
    return const StudentInitDeatilesState(
      selectedLevel: "Basic",
      isLoading: false,
    );
  }
}
