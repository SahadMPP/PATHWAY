part of 'teacher_chat_bloc.dart';

@freezed
class TeacherChatState with _$TeacherChatState {
  const factory TeacherChatState({
    required List<Student> list,
  }) = _TeacherChatState;

  factory TeacherChatState.initial(){
    return const TeacherChatState(list: []);
  }
}
