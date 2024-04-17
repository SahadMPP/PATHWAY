import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroThreeDesk extends StatelessWidget {
  const IntroThreeDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(image:AssetImage("asset/onbordingImage/Screenshot 2024-02-01 205317.png"))
              ),
            ),
          ),

          Column(
                    children: [
              const SizedBox(height: 20),
          
          Text('Findout Your Creativity',
              style: GoogleFonts.roboto(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
              const SizedBox(height: 20),
          Text(
              'There is many variations of passages hava suffered alteration in some',
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              )),
                    ],
                  )
        ],
      ),
    );
  }
}