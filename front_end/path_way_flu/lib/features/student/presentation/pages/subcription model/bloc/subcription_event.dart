part of 'subcription_bloc.dart';

@freezed
class SubcriptionEvent with _$SubcriptionEvent {
  const factory SubcriptionEvent.makingsubcription({
    required int amount,
    required String mob,
    required String subject,
    required String email,
  }) = _makingsubcription;
  const factory SubcriptionEvent.makeinginstence() = _makeinginstence;
  
  const factory SubcriptionEvent.updataStudentdata({
    required String subject,
    required String id,
    required BuildContext context,
  }) = _updataStudentdata;

  const factory SubcriptionEvent.naviagatedToDeatilePage({
    required String subject,
    required String id,
    required BuildContext context,
  }) = _naviagatedToDeatilePage;
   
}
