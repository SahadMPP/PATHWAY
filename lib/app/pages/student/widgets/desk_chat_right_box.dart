import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeskChatRightBox extends StatelessWidget {
  const DeskChatRightBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 12, top: 12, bottom: 12, left: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              width: 1,
              color: const Color.fromARGB(255, 212, 212, 212)),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const CircleAvatar(
                radius: 40,
                backgroundImage:
                    AssetImage("asset/profiles/chat222.png"),
              ),
              const SizedBox(height: 10),
              Text(
                "Name",
                style: GoogleFonts.aBeeZee(
                    fontSize: 14,
                    color: Colors.black,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                "Online",
                style: GoogleFonts.aBeeZee(
                    fontSize: 10,
                    color: Colors.grey,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  CircleAvatar(
                      radius: 18,
                      child: Icon(
                        Icons.call,
                        size: 22,
                        color: Colors.black,
                      )),
                      SizedBox(width: 5),
                       CircleAvatar(
                      radius: 18,
                      child: Icon(
                        Icons.video_call,
                        size: 22,
                        color: Colors.black,
                      )),
                ],
              )
            ]),
      ),
    );
  }
}
