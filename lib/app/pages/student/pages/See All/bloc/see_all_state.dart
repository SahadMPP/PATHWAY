part of 'see_all_bloc.dart';

@freezed
class SeeAllState with _$SeeAllState {
    const factory SeeAllState({
    required List<Lesson> list,
    required bool commingSoon,

  }) = _SeeAllState;

  factory SeeAllState.initial(){
    return const SeeAllState(list: [],commingSoon: false);
  }
}
