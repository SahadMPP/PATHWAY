import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroThreeMob extends StatelessWidget {
  const IntroThreeMob({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
      
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'asset/onbordingImage/Screenshot 2024-02-01 205317.png'),
              fit: BoxFit.cover)),
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          const Spacer(),
          Column(
            children: [
              Text('Creativity',
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
          ),
        ],
      ),
    );
  }
}