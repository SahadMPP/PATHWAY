import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/app/data/middleware/admin.dart';
import 'package:path_way_flu/app/data/model/student.dart';

part 'teacher_chat_event.dart';
part 'teacher_chat_state.dart';
part 'teacher_chat_bloc.freezed.dart';

class TeacherChatBloc extends Bloc<TeacherChatEvent, TeacherChatState> {
  TeacherChatBloc() : super(TeacherChatState.initial()) {
    on<_givingValueInitialy>((event, emit) async {
      emit(state.copyWith(list: await AdminApi.getStudents()));
    });

    on<_runFilterdValue>((event, emit)async {
      emit(state.copyWith(list: await AdminApi.getStudents()));
      List<Student> result = [];
      if (event.value.isEmpty) {
        result = state.list;
      } else {
        result = state.list
            .where((user) =>
                user.name.toLowerCase().contains(event.value.toLowerCase()))
            .toList();
      }
      emit(state.copyWith(list: result));
    });
  }
}
