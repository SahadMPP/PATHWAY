// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_application_event.dart';
part 'teacher_application_state.dart';
part 'teacher_application_bloc.freezed.dart';

class TeacherApplicationBloc extends Bloc<TeacherApplicationEvent, TeacherApplicationState> {
  TeacherApplicationBloc() : super(TeacherApplicationState.initial()) {
   on<_subjectClickEventInAddingTutoral>((event, emit) {
         emit(state.copyWith(subjectDropDown: event.subject));
   });
  }
}
