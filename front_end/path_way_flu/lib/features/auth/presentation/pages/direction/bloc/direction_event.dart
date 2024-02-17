part of 'direction_bloc.dart';

@freezed
class DirectionEvent with _$DirectionEvent {
    const factory DirectionEvent.directionSelection() = _directionSelection;
}