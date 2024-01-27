import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MassagingScreen extends StatelessWidget {
  const MassagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff1B202D),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back,
                            size: 25, color: Colors.grey)),
                    const SizedBox(width: 5),
                    const CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("asset/profiles/chat111.png"),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Danny Hopkins',
                          style: GoogleFonts.quicksand(
                            // color: Colors.white,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Active Now',
                          style: GoogleFonts.quicksand(
                              // color: Colors.white70,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 80, 80, 80)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const SizedBox(
                        height: 35,
                        width: 35,
                        child: Icon(Icons.videocam_outlined, size: 30))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  '1 FEB 12:00',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 240, 240, 240)),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'I commented on Figma, I want to add\n sjdiw weosjwy cys sow woois ijwdwd wysxta\njsd',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 0, 140, 255)),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'I commented on Figma, I want to add\n sjdiw weosjwy',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 240, 240, 240)),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Next Month',
                    style: TextStyle(
                      color: Color.fromARGB(255, 49, 49, 49),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  '08:12',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 0, 140, 255)),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'I commented on Figma, I want to add\n sjdiw weosjwy',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 300.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 0, 140, 255)),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 221, 221, 221)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Icon(Icons.camera_alt_outlined),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'Write your Message',
                        style:
                            TextStyle(color: Color.fromARGB(255, 98, 98, 98)),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.mic,
                          color: Colors.black,
                        ),
                      ),
                    ],

                    ///thankyou alll of youuuuuu se you next tutorial
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
