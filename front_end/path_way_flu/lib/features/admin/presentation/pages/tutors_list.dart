import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherRequestList extends StatelessWidget {
  const TeacherRequestList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> profileImage = [
      "asset/profiles/chat111.png",
      "asset/profiles/chat222.png",
      "asset/profiles/chat333.png",
      "asset/profiles/chat555.png",
      "asset/profiles/chat666.png",
      "asset/profiles/chat777.png",
      "asset/profiles/chat888.png",
      "asset/profiles/image22.png",
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Requests',
              style: GoogleFonts.quicksand(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: profileImage.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(profileImage[index]),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Danny Hopkins',
                            style: GoogleFonts.quicksand(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'dannyhopkins@gmail.com',
                            style: GoogleFonts.quicksand(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: const Icon(Icons.person_add_disabled))
                    ],
                  ),
                );
              }),
        ));
  }
}
