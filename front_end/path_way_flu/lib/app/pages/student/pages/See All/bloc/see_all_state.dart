part of 'see_all_bloc.dart';

@freezed
class SeeAllState with _$SeeAllState {
    const factory SeeAllState({
    required List<Lession> list,
  }) = _SeeAllState;

  factory SeeAllState.initial(){
    return const SeeAllState(list: []);
  }
}
