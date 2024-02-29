part of 'teacher_chat_bloc.dart';

@freezed
class TeacherChatEvent with _$TeacherChatEvent {
  const factory TeacherChatEvent.givingValueInitialy() = _givingValueInitialy;
  const factory TeacherChatEvent.runFilterdValue({
    required String value,
  }) = _runFilterdValue;
}