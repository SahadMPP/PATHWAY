import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_prograss_event.dart';
part 'student_prograss_state.dart';
part 'student_prograss_bloc.freezed.dart';

class StudentPrograssBloc extends Bloc<StudentPrograssEvent, StudentPrograssState> {
  StudentPrograssBloc() : super(_Initial()) {
    on<StudentPrograssEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
