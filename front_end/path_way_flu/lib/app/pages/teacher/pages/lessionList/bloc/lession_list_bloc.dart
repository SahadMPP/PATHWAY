import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lession_list_event.dart';
part 'lession_list_state.dart';
part 'lession_list_bloc.freezed.dart';

class LessionListBloc extends Bloc<LessionListEvent, LessionListState> {
  LessionListBloc() : super(_Initial()) {
    on<LessionListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
