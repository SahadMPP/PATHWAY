import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:path_way_flu/features/student/presentation/widgets/hedline_back.dart';

class TutorsApplicationDetile extends StatelessWidget {
  const TutorsApplicationDetile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BuildHeadlinewithBack(
            fun: () {
              Navigator.of(context).pop();
            },
            icon: Icons.arrow_back,
            headline: "Deatile"),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const BuildTutorApplicationCard(
                      content: "Sahad Mp", title: "Name"),
                  const BuildTutorApplicationCard(
                      content: "7306713024", title: "Mobile Number"),
                  const BuildTutorApplicationCard(
                      content: "English", title: "Subject"),
                  const BuildTutorApplicationCard(
                      content: "2 Year", title: "Experience"),
                  const BuildTutorApplicationCard(
                      content: "Kannur University", title: "University"),
                  const BuildTutorApplicationCard(
                      content: "Kannur", title: "University Place"),
                  const BuildTutorApplicationCard(
                      content: "Kerala", title: "State"),
                  const BuildTutorApplicationCard(
                      content: "Mohan Kumar",
                      title: "Chief administrative officer"),
                  Text(
                    "Certificates",
                    style: kSubtitleTextSyule.copyWith(
                        color: Colors.grey, height: .5),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                          height: 110,
                          width: 130,
                          color: Colors.grey,
                          child: const Image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("asset/images(adding icon).png"))),
                      const SizedBox(width: 30),
                      Container(
                          height: 110,
                          width: 130,
                          color: Colors.grey,
                          child: const Image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("asset/images(adding icon).png"))),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "chief administrative officer signature",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 202, 202, 202),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.yellow[100],
                    // child: Image(image: MemoryImage()),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              height: 90,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BuildSmallButtonAdmin(
                      color: Colors.blue[500]!, text: "Accept"),
                  BuildSmallButtonAdmin(
                      color: Colors.red[500]!, text: "Reject"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BuildSmallButtonAdmin extends StatelessWidget {
  final String text;
  final Color color;
  const BuildSmallButtonAdmin({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * .4,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(color),
              shape: const MaterialStatePropertyAll(BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3))))),
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}

class BuildTutorApplicationCard extends StatelessWidget {
  final String title;
  final String content;

  const BuildTutorApplicationCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kSubtitleTextSyule.copyWith(color: Colors.grey, height: .5),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              content,
              style: GoogleFonts.quicksand(
                  fontSize: 22,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
