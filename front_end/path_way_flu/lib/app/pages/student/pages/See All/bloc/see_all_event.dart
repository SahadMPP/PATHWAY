part of 'see_all_bloc.dart';

@freezed
class SeeAllEvent with _$SeeAllEvent {
  const factory SeeAllEvent.givingInitialValue() = _givingInitialValue;
  const factory SeeAllEvent.fulturedValue({
    required String typeText,
  }) = _fulturedValue;
  
}