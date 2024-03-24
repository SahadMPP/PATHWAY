import 'package:flutter/material.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/ui/responsive/mobile.dart';

class AddingTutoralDesk extends StatelessWidget {
  final String? id;
  const AddingTutoralDesk({super.key,  this.id});

  @override
  Widget build(BuildContext context) {
        TextEditingController titleController = TextEditingController();
    TextEditingController discriptionController = TextEditingController();
    TextEditingController durationController = TextEditingController();
    TextEditingController videoUrlController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey();

    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1.5,color: Colors.grey)
            ),
            width: MediaQuery.of(context).size.width * .35,   
            child: BuildAddingTutorial(formKey: formKey, titleController: titleController, discriptionController: discriptionController, durationController: durationController, videoUrlController: videoUrlController, id: "id"),
          ),
        ),
      ),
    );
  }
}
