import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'asset/onbordingImage/Screenshot 2024-02-01 205207.png'),
              fit: BoxFit.cover)),
    );
  }
}
