part of 'student_chat_bloc.dart';

@freezed
class StudentChatState with _$StudentChatState {
     const factory StudentChatState({
    required List<Teacher> list,
  }) = _StudentChatState;

  factory StudentChatState.initial(){
    return const StudentChatState(list: []);
  }
}
