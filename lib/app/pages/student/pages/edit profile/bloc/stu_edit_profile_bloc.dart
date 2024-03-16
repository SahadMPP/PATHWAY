// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/model/student.dart';
import 'package:path_way_flu/main.dart';

part 'stu_edit_profile_event.dart';
part 'stu_edit_profile_state.dart';
part 'stu_edit_profile_bloc.freezed.dart';

class StuEditProfileBloc
    extends Bloc<StuEditProfileEvent, StuEditProfileState> {
  StuEditProfileBloc() : super(StuEditProfileState.initial()) {
   
    on<_gettingInitialValue>((event, emit) async {
      TextEditingController name = TextEditingController();
      TextEditingController email = TextEditingController();
      TextEditingController password = TextEditingController();
      TextEditingController phone = TextEditingController();

      Student student = await StudentApi.getOneStudent(userId);

      name.text = student.name;
      email.text = student.email;
      password.text = student.password;
      phone.text = student.mobNumber;
      emit(state.copyWith(
          emailController: email,
          nameController: name,
          passwordController: password,
          phoneController: phone,
          pikedImage: student.profileImage,
          ));
    });
  
    on<_cencelPage>((event, emit) {
       Navigator.of(event.context).pop();
    });
    
    on<_updateValue>((event, emit) {
      StudentApi.updateStudent(userId, event.data, event.context);
    });

    on<_imagePiker>((event, emit) async{
       final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        emit(state.copyWith(pikedImage: image.path));
      } else {
        return;
      }
    });
  }


  


}
