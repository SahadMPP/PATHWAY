import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/button_buil.dart';
import 'package:path_way_flu/app/pages/student/widgets/edit_profile_card.dart';
import 'package:path_way_flu/app/pages/teacher/pages/profile%20edit/bloc/tea_edit_profiel_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/appbar_save_cancel.dart';

class TeacherEditProfile extends StatelessWidget {
  const TeacherEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    context
        .read<TeaEditProfielBloc>()
        .add(const TeaEditProfielEvent.gettingInitialValue());
    return Scaffold(
      appBar: buildAppBar(
          title: "Edit Profile",
          save: () {},
          cancel: () {
            context
                .read<TeaEditProfielBloc>()
                .add(TeaEditProfielEvent.cencelPage(context: context));
          }),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Column(
            children: [
              const SizedBox(height: 20),
              BlocBuilder<TeaEditProfielBloc, TeaEditProfielState>(
                builder: (context, state) {
                   return ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: CircleAvatar(
                    radius: 60,
                    child:state.currentPikedImage == null
                    ? Image.network("${AuthApi.baseUrlImage}${state.pikedImage}",fit: BoxFit.fill,): Image.file(File(state.currentPikedImage!),fit: BoxFit.fill)
                  ),
                );
                },
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  context
                      .read<TeaEditProfielBloc>()
                      .add(const TeaEditProfielEvent.imagePiker());
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
              const SizedBox(height: 20),
              BlocBuilder<TeaEditProfielBloc, TeaEditProfielState>(
                builder: (context, state) {
                  return ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width,
                    ),
                    child: Column(
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
                        BlocBuilder<TeaEditProfielBloc, TeaEditProfielState>(
                            builder: (context, state) {
                          return BuildButton(
                              text: "update",
                              fun: () {
                                Map<String, dynamic> data = {
                                  "name": state.nameController!.text.toString(),
                                  "email": state.emailController!.text.toString(),
                                  "password":
                                      state.passwordController!.text.toString(),
                                  "mobNumber":
                                      state.phoneController!.text.toString(),
                                };
                                context.read<TeaEditProfielBloc>().add(
                                    TeaEditProfielEvent.updateValue(
                                        context: context, data: data));
                              });
                        })
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
