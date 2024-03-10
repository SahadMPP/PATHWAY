part of 'student_chat_bloc.dart';

@freezed
class StudentChatEvent with _$StudentChatEvent {
  const factory StudentChatEvent.givingValue() = _givingValue;
  const factory StudentChatEvent.navigatingToChatScreen({
    required BuildContext context,
  }) = _navigatingToChatScreen;
  const factory StudentChatEvent.filteringForSearch({
    required String textValue,
  }) = _filteringForSearch;
}