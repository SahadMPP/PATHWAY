part of 'tea_edit_profiel_bloc.dart';

@freezed
class TeaEditProfielEvent with _$TeaEditProfielEvent {
   const factory TeaEditProfielEvent.gettingInitialValue({
    required String image,
   }) = _gettingInitialValue;

  const factory TeaEditProfielEvent.cencelPage({
    required BuildContext context,
  }) = _cencelPage;

  const factory TeaEditProfielEvent.updateValue({
    required BuildContext context,
    required Map data,
  }) = _updateValue;

  const factory TeaEditProfielEvent.imagePiker() = _imagePiker;
}