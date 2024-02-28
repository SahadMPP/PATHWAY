import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/pages/admin/widgets/drop_down_update.dart';
import 'package:path_way_flu/app/pages/admin/widgets/textfield.dart';
import 'package:path_way_flu/app/pages/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/app/pages/student/widgets/hedline_back.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorialUpdateForm/bloc/tutorial_update_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/teacher_bottom_navi.dart';

class UpdatingTutorial extends StatelessWidget {
  final Tutorial tutoral;
  const UpdatingTutorial({super.key, required this.tutoral});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController durationController = TextEditingController();
    TextEditingController videoUrlController = TextEditingController();
    titleController.text = tutoral.title;
    descriptionController.text = tutoral.discription;
    durationController.text = tutoral.duration.toString();
    videoUrlController.text = tutoral.videoUrl;
    GlobalKey<FormState> formKey = GlobalKey();
    context
        .read<TutorialUpdateBloc>()
        .add(TutorialUpdateEvent.givingInitialValue(value: tutoral.level));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  BuildHeadlinewithBack(
                      fun: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const TeacherBotmNavi(),
                        ));
                      },
                      icon: Icons.arrow_back,
                      headline: 'Update tutorial'),
                  const SizedBox(height: 20),
                  BuildAddTutorFormText(
                      validateText: "title",
                      controllre: titleController,
                      title: "Title",
                      hintText: "Enter full title"),
                  const SizedBox(height: 20),
                  const BuildUpdateDropLeve(),
                  const SizedBox(height: 20),
                  BuildAddTutorFormText(
                      validateText: "Description",
                      controllre: descriptionController,
                      maxline: 5,
                      title: "Description",
                      hintText: "Fill the description"),
                  const SizedBox(height: 20),
                  BuildAddTutorFormText(
                      validateText: "Duration",
                      controllre: durationController,
                      textInputType: TextInputType.number,
                      title: "Duration",
                      hintText: "Duraton(min)"),
                  const SizedBox(height: 20),
                  BuildAddTutorFormText(
                      validateText: "url",
                      controllre: videoUrlController,
                      title: "Source",
                      hintText: "url"),
                  const SizedBox(height: 20),
                  SizedBox(
                      width: 400,
                      child:
                          BlocBuilder<TutorialUpdateBloc, TutorialUpdateState>(
                        builder: (context, state) {
                          return BuildButton(
                              fun: () {
                                if (formKey.currentState!.validate()) {
                                  var data = {
                                    "title": titleController.text,
                                    "level": state.dropDownLevel,
                                    "videoUrl": videoUrlController.text,
                                    "duration": durationController.text,
                                    "discription": descriptionController.text,
                                  };
                                  context.read<TutorialUpdateBloc>().add(
                                      TutorialUpdateEvent.updateTutoral(
                                          context: context,
                                          data: data,
                                          id: tutoral.id!));
                                }
                              },
                              text: "Update");
                        },
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
