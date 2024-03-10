part of 'stu_edit_profile_bloc.dart';

@freezed
class StuEditProfileEvent with _$StuEditProfileEvent {
  const factory StuEditProfileEvent.gettingInitialValue() = _gettingInitialValue;

  const factory StuEditProfileEvent.cencelPage({
    required BuildContext context,
  }) = _cencelPage;

  const factory StuEditProfileEvent.updateValue({
    required BuildContext context,
    required Map data,
  }) = _updateValue;

  const factory StuEditProfileEvent.imagePiker() = _imagePiker;
  
}