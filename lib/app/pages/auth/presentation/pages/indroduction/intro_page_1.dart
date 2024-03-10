import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'asset/onbordingImage/Screenshot 2024-02-01 203844.png'),
              fit: BoxFit.cover)),
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 100,
        width: 300,
        child: Column(
          children: [
            Text('Study Overview',
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
      ),
    );
  }
}
