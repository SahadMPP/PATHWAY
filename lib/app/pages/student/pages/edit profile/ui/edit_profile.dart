import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/pages/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/app/pages/student/pages/edit%20profile/bloc/stu_edit_profile_bloc.dart';
import 'package:path_way_flu/app/pages/student/widgets/edit_profile_card.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/appbar_save_cancel.dart';

class StudentfEditProfile extends StatelessWidget {
  const StudentfEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    context
        .read<StuEditProfileBloc>()
        .add(const StuEditProfileEvent.gettingInitialValue());
    return Scaffold(
      appBar: buildAppBar(
          title: "Edit Profile",
          save: () {},
          cancel: () {
            context
                .read<StuEditProfileBloc>()
                .add(StuEditProfileEvent.cencelPage(context: context));
          }),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(child: BlocBuilder<StuEditProfileBloc, StuEditProfileState>(
              builder: (context, state) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: CircleAvatar(
                    radius: 60,
                    child: state.pikedImage == null
                          ? const Image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("asset/profiles/image1.png"))
                          : Image.network(state.pikedImage!,fit: BoxFit.cover,),
                  ),
                );
              },
            )),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                context.read<StuEditProfileBloc>().add(const StuEditProfileEvent.imagePiker());
              },
              child: Text("Change Profile Photo",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.green,
                  )),
            ),
            const SizedBox(height: 15),
            Divider(
              color: Colors.grey[200],
            ),
            const SizedBox(height: 50),
            BlocBuilder<StuEditProfileBloc, StuEditProfileState>(
              builder: (context, state) {
                return Column(
                  children: [
                    BuildEditTexfielCard(
                      controller: state.nameController,
                      hintText: "enter name",
                      title: "Name",
                    ),
                    BuildEditTexfielCard(
                      controller: state.emailController,
                      hintText: "Email",
                      title: "email",
                    ),
                    BuildEditTexfielCard(
                      controller: state.passwordController,
                      hintText: "Password",
                      title: "Password",
                    ),
                    BuildEditTexfielCard(
                      controller: state.phoneController,
                      hintText: "Phone",
                      title: "Phone",
                    ),
                    const SizedBox(height: 80),
                    BlocBuilder<StuEditProfileBloc, StuEditProfileState>(
                      builder: (context, state) {
                        return BuildButton(
                            text: "update",
                            fun: () {
                              var data = {
                                "name": state.nameController!.text.toString(),
                                "email": state.emailController!.text.toString(),
                                "password":
                                    state.passwordController!.text.toString(),
                                "mobNumber":
                                    state.phoneController!.text.toString(),
                              };
                              context.read<StuEditProfileBloc>().add(
                                  StuEditProfileEvent.updateValue(
                                      context: context, data: data));
                            });
                      },
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

