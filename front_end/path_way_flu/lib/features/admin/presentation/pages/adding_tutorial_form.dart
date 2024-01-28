import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/button_buil.dart';
import 'package:path_way_flu/features/student/presentation/widgets/hedline_back.dart';

class AddTotorialForm extends StatefulWidget {
  const AddTotorialForm({super.key});

  @override
  State<AddTotorialForm> createState() => _AddTotorialFormState();
}

class _AddTotorialFormState extends State<AddTotorialForm> {
  String dropdownValue = "one";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(height: 10),
                BuildHeadlinewithBack(
                    fun: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icons.arrow_back,
                    headline: 'Add tutorial'),
                const SizedBox(height: 20),
                const BuildAddTutorFormText(
                    title: "Title", hintText: "Enter full title"),
                const SizedBox(height: 20),
                const BuildAddTutorFormText(
                    title: "Creator name", hintText: "Enter creator name"),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey, width: 2)),
                  width: double.infinity,
                  height: 60,
                  child: DropdownButton<String>(
                      focusColor: Colors.blueGrey,
                      dropdownColor: Colors.white,
                      value: dropdownValue,
                      style: GoogleFonts.roboto(fontSize: 18),
                      items: const [
                        DropdownMenuItem(
                            value: "one",
                            child: Text(
                              'Malayalam',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )),
                        DropdownMenuItem(
                            value: "two",
                            child: Text(
                              'Hindi',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )),
                        DropdownMenuItem(
                            value: "three",
                            child: Text(
                              'English',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )),
                        DropdownMenuItem(
                            value: "four",
                            child: Text(
                              'Chemistry',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )),
                      ],
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      }),
                ),
                const SizedBox(height: 20),
                const BuildAddTutorFormText(
                    maxline: 5,
                    title: "Description",
                    hintText: "Fill the description"),
                const SizedBox(height: 20),
                const BuildAddTutorFormText(
                    title: "Duration", hintText: "Duraton(min)"),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Thumbnail",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 190,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 222, 222, 222),
                          borderRadius: BorderRadius.circular(8)),
                      child: Image.asset(
                        "asset/images(adding icon).png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const BuildAddTutorFormText(title: "Source", hintText: "url"),
                const SizedBox(height: 20),
                SizedBox(
                    width: 400, child: BuildButton(fun: () {}, text: "Add")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BuildAddTutorFormText extends StatelessWidget {
  final String title;
  final String hintText;
  final int? maxline;

  const BuildAddTutorFormText({
    super.key,
    required this.title,
    required this.hintText,
    this.maxline,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: const Color.fromARGB(255, 202, 202, 202),
          ),
        ),
        TextFormField(
          maxLines: maxline,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color.fromARGB(
                    255, 133, 133, 133), // Set the border color here as well
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.green, // Set the border color here
                width: 1.5,
              ),
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
