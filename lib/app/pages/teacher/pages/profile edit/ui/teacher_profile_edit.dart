import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/teacher.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/button_buil.dart';
import 'package:path_way_flu/app/pages/student/widgets/edit_profile_card.dart';
import 'package:path_way_flu/app/pages/teacher/pages/profile%20edit/bloc/tea_edit_profiel_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/appbar_save_cancel.dart';
import 'package:path_way_flu/main.dart';

class TeacherEditProfile extends StatelessWidget {
  const TeacherEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
      TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String? image;
  late Teacher teacher;

  gettingValue(context) async {
    teacher = await TeacherApi.getOneTacher(userId);
    nameController.text = teacher.name;
    emailController.text = teacher.email;
    passwordController.text = teacher.password;
    phoneController.text = teacher.mobNumber ?? "00";
    image = teacher.profileImage??"";
  }
 
 gettingValue(context);
  
    // context.read<TeaEditProfielBloc>().add(TeaEditProfielEvent.gettingInitialValue(image: teacher.profileImage!));
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
              Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child:image != null ?
                 CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage("${AuthApi.baseUrlImage}$image"),
                ):
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("asset/images(adding icon).png"),
                ),
              )),
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
                  return Column(
                    children: [
                      BuildEditTexfielCard(
                        controller: nameController,
                        hintText: "enter name",
                        title: "Name",
                      ),
                      BuildEditTexfielCard(
                        controller: emailController,
                        hintText: "Email",
                        title: "email",
                      ),
                      BuildEditTexfielCard(
                        controller: passwordController,
                        hintText: "Password",
                        title: "Password",
                      ),
                      BuildEditTexfielCard(
                        controller: phoneController,
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
                                "name": nameController.text.toString(),
                                "email": emailController.text.toString(),
                                "password":
                                    passwordController.text.toString(),
                                "mobNumber":
                                    phoneController.text.toString(),
                              };
                              context.read<TeaEditProfielBloc>().add(
                                  TeaEditProfielEvent.updateValue(
                                      context: context, data: data));
                            });
                      })
                    ],
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
