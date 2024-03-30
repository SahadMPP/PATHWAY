part of 'tea_edit_profiel_bloc.dart';

@freezed
class TeaEditProfielState with _$TeaEditProfielState {
  const factory TeaEditProfielState({
    String? pikedImage,
    String? currentPikedImage,
    TextEditingController? nameController,
     TextEditingController? emailController,
     TextEditingController? passwordController,
     TextEditingController? phoneController,
  }) = _TeaEditProfielState;

  factory TeaEditProfielState.initial() {
    return const TeaEditProfielState();
  }
}
