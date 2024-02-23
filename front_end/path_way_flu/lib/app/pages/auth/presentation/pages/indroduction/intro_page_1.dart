import 'package:flutter/material.dart';

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
    );
  }
}
