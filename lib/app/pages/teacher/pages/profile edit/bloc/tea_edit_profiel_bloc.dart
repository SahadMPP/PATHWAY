// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/teacher.dart';
import 'package:path_way_flu/main.dart';

part 'tea_edit_profiel_event.dart';
part 'tea_edit_profiel_state.dart';
part 'tea_edit_profiel_bloc.freezed.dart';

class TeaEditProfielBloc
    extends Bloc<TeaEditProfielEvent, TeaEditProfielState> {
  TeaEditProfielBloc() : super(TeaEditProfielState.initial()) {
    on<_gettingInitialValue>((event, emit) async {
          TextEditingController name = TextEditingController();
      TextEditingController email = TextEditingController();
      TextEditingController password = TextEditingController();
      TextEditingController phone = TextEditingController();

      Teacher teacher = await TeacherApi.getOneTacher(userId);

      name.text = teacher.name;
      email.text = teacher.email;
      password.text = teacher.password;
      phone.text = teacher.mobNumber ?? "00.00";
      emit(state.copyWith(
          emailController: email,
          nameController: name,
          passwordController: password,
          phoneController: phone,
          pikedImage: teacher.profileImage,
          currentPikedImage: null
          ));
    });

    on<_cencelPage>((event, emit) {
      emit(state.copyWith(currentPikedImage: null));
      Navigator.of(event.context).pop();
    });

    on<_updateValue>((event, emit) {
      TeacherApi.updateTeacher(userId!, event.data, event.context,state.currentPikedImage);
    });

    on<_imagePiker>((event, emit) async {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        emit(state.copyWith(currentPikedImage: image.path));
      } else {
        return;
      }
    });
  }
}
