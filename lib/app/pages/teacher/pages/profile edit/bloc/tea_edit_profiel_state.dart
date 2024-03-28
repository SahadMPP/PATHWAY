part of 'tea_edit_profiel_bloc.dart';

@freezed
class TeaEditProfielState with _$TeaEditProfielState {
  const factory TeaEditProfielState({
    String? pikedImage,
  }) = _TeaEditProfielState;

  factory TeaEditProfielState.initial() {
    return const TeaEditProfielState();
  }
}
