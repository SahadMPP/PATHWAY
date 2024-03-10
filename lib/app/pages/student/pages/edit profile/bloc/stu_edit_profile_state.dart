part of 'stu_edit_profile_bloc.dart';

@freezed
class StuEditProfileState with _$StuEditProfileState {
  const factory StuEditProfileState({
     String? pikedImage,
     TextEditingController? nameController,
     TextEditingController? emailController,
     TextEditingController? passwordController,
     TextEditingController? phoneController,
  }) = _StuEditProfileState;

  factory StuEditProfileState.initial(){
    return const StuEditProfileState(pikedImage: null);
  }
}
