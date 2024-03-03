part of 'student_init_deatiles_bloc.dart';

@freezed
class StudentInitDeatilesState with _$StudentInitDeatilesState {
  const factory StudentInitDeatilesState({
    String? selectedImage,
  }) = _StudentInitDeatilesState;

  factory StudentInitDeatilesState.initial(){
    return const StudentInitDeatilesState();
  }
}
