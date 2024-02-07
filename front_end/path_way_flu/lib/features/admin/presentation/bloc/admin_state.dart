part of 'admin_bloc.dart';

@freezed
class AdminState with _$AdminState {
  const factory AdminState({
    String? selectedImage,
    required String subjectDropDown,
    required String levelDropDown,
  }) = _AdminState;
  factory AdminState.initial() {
    return const AdminState(
      levelDropDown: "Basic",
      subjectDropDown: "Computer",
    );
  }
}
