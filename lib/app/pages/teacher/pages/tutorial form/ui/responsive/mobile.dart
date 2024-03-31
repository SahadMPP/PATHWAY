import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/pages/student/widgets/isloading_button.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/level_dropdown_addingtutorial.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/textfield.dart';
import 'package:path_way_flu/app/pages/student/widgets/hedline_back.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/bloc/tutorial_adding_form_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/teacher_bottom_navi.dart';

class AddTotorialMob extends StatelessWidget {
  final String? id;
  const AddTotorialMob({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController discriptionController = TextEditingController();
    TextEditingController durationController = TextEditingController();
    TextEditingController videoUrlController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: BuildAddingTutorial(
              formKey: formKey,
              titleController: titleController,
              discriptionController: discriptionController,
              durationController: durationController,
              videoUrlController: videoUrlController,
              id: id),
        ),
      ),
    );
  }
}

class BuildAddingTutorial extends StatelessWidget {
  const BuildAddingTutorial({
    super.key,
    required this.formKey,
    required this.titleController,
    required this.discriptionController,
    required this.durationController,
    required this.videoUrlController,
    required this.id,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController titleController;
  final TextEditingController discriptionController;
  final TextEditingController durationController;
  final TextEditingController videoUrlController;
  final String? id;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  headline: 'Add tutorial'),
              const SizedBox(height: 20),
              BuildAddTutorFormText(
                  validateText: "title",
                  controllre: titleController,
                  title: "Title",
                  hintText: "Enter full title"),
              const SizedBox(height: 20),
              const BuildLevelDropDown(),
              const SizedBox(height: 20),
              BuildAddTutorFormText(
                  validateText: "Description",
                  controllre: discriptionController,
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
                child: BlocBuilder<TutorialAddingFormBloc,
                    TutorialAddingFormState>(
                  builder: (context, state) {
                    return BuildLoaderButton(
                        isLoading: state.isLoading,
                        function: () {
                          if (formKey.currentState!.validate()) {
                            Map<String, dynamic> data = {
                              "title": titleController.text,
                              "level": state.levelDropDown,
                              "videoUrl": videoUrlController.text,
                              "duration": durationController.text,
                              "discription": discriptionController.text,
                            };
                            if (id == null) {
                              buildShowSnacbar(
                                  context: context,
                                  content:
                                      "Make sure you save the lession before adding the tutorial",
                                  title: 'Oh!!',
                                  contentType: ContentType.warning);
                            } else {
                              context.read<TutorialAddingFormBloc>().add(
                                  TutorialAddingFormEvent.addingTutorial(
                                      duration:
                                          int.parse(durationController.text),
                                      context: context,
                                      data: data,
                                      lessonId: id ?? "null"));
                            }
                          }
                        },
                        defultText: "Add");
                  },
                ),
              ),
            ],
          )),
    );
  }
}
