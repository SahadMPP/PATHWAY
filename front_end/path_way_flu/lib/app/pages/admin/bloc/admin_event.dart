part of 'admin_bloc.dart';

@freezed
class AdminEvent with _$AdminEvent {
  const factory AdminEvent.addTutorial({
    required String titleCon,
    required String creatorCon,
    required String levelCon,
    required String categoryCon,
    required String thumnilCon,
    required String videoUrlCon,
    required String durationCon,
    required String discriptionCon,
    required BuildContext context,
  }) = _addTutorial;

  const factory AdminEvent.imagePiker() = _imagePiker;

  const factory AdminEvent.updateTutoral({
    required String titleCon,
    required String creatorCon,
    required String levelCon,
    required String categoryCon,
    required String thumnilCon,
    required String videoUrlCon,
    required String durationCon,
    required String discriptionCon,
    required String id,
    required BuildContext context,
  }) = _updateTutoral;

  const factory AdminEvent.deleteTutorial({
    required String id,
    required BuildContext context,
  }) = _deleteTutorial;

  const factory AdminEvent.deleteComplaint({
    required String id,
    required BuildContext context,
  }) = _deleteComplaint;

  const factory AdminEvent.updateTutoraPageButtonClick({
    required Tutorial tutorial,
  }) = _updateTutoralButtonClick;

  const factory AdminEvent.levelclickEventInAddiTutorial({
    required String level,
  }) = _levelclickEventInAddiTutorial;

  const factory AdminEvent.subjectClickEventInAddingTutoral({
    required String subject,
  }) = _subjectClickEventInAddingTutoral;

  const factory AdminEvent.tutorApplicationSubmition({
    required String id,
    required BuildContext context,
    required Map data,
  }) = _tutorApplicationSubmition;

  
  

}
