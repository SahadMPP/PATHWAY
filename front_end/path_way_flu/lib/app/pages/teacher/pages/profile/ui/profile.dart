import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/home_top_card.dart';

class TeacherProfile extends StatelessWidget {
  const TeacherProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue[100],
        centerTitle: true,
        title: Text(
          'Instructor',
          style: kSubheadingextStyle.copyWith(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 50,
                  color: Colors.blue[100],
                ),
                const Center(
                    child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("asset/profiles/chat777.png"),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "Full Name",
                    style: GoogleFonts.roboto(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 310),
                    child: Text(
                      "It is a long established fact that a reader will be distracted by the readable",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '24',
                            style: kTitleTextStyle.copyWith(fontSize: 24),
                          ),
                          Text("Courses",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '35,324',
                            style: kTitleTextStyle.copyWith(fontSize: 24),
                          ),
                          Text("Totel Student",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '14,234',
                            style: kTitleTextStyle.copyWith(fontSize: 24),
                          ),
                          Text("Review",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "About Insturctor",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,\n or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "My Courses",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: BuildHomeBoxTop(),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
