import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'asset/onbordingImage/Screenshot 2024-02-01 205317.png'),
              fit: BoxFit.cover)),
    );
  }
}
