import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:path_way_flu/core/constants/snacbar.dart';
import 'package:path_way_flu/features/student/data/repositories/student_api.dart';

class ComplantStudent extends StatelessWidget {
  const ComplantStudent({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleEditControlle = TextEditingController();
    TextEditingController discriptionEditControlle = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey();
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Complaint",
                style: kHeadingextStyle,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 30,
                  ))
            ],
          ),
          Text(
            "Pathway",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w600,
              fontSize: 17,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 10),
          Divider(indent: 10, endIndent: 10, color: Colors.grey.shade300),
          Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Title",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.grey.shade600,
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "title is empty";
                    } else {
                      return null;
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: titleEditControlle,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(12),
                    hintText: "Title",
                    hintStyle: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Discription",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.grey.shade600,
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "discription is empty";
                    } else {
                      return null;
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: discriptionEditControlle,
                  maxLines: 5,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(12),
                    hintText: "Discription..",
                    hintStyle: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                          side: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(3))),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(3))),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue.shade300)),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      var data = {
                        "title": titleEditControlle.text,
                        "description": discriptionEditControlle.text
                      };
                      StudentApi.addComplaint(data);
                    }

                    buildShowSnacbar(
                        context: context,
                        content: 'Complaint registed',
                        title: 'Hi There!',
                        contentType: ContentType.help);

                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Conform',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
