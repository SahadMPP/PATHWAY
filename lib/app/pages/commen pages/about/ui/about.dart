import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Us",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              "Step into the world of limitless learning with our cutting-edge educational app. We prioritize your convenience and comfort, offering a seamlessly localized experience tailored to your language preferences.\n Dive into a rich learning environment that caters to your schedule and personal style with our sleek dark mode feature, ensuring optimal readability and reduced eye strain, day or night.But that's just the beginning.\n Connect with instructors and fellow learners from around the globe through our intuitive video call feature. Engage in dynamic discussions, receive personalized guidance, and collaborate on projects in real-time, all within the app's immersive interface.Whether you're delving into new subjects, mastering challenging concepts, or expanding your skill set, our app provides the tools and support you need to succeed. Elevate your learning journey with us and unlock your full potential.",
              textAlign: TextAlign.justify,
              style: GoogleFonts.quicksand(
                fontSize: 18,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
