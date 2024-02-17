part of 'direction_bloc.dart';

@freezed
class DirectionState with _$DirectionState {
  const factory DirectionState({
   required bool directionValue,
    required String directionText,
  }) = _DirectionState;

  factory DirectionState.initial(){
    return const DirectionState(directionValue: true, directionText: 'Student');
  }
}
