import 'package:flutter/material.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/direction.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/indroduction/intro%20page%20one/intropage_one.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/indroduction/intro%20page%20three/intropage_three.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/indroduction/intro%20page%20two/intropage_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  PageController controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .70,
              width: double.infinity,
              child: PageView(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                  });
                },
                children: const [
                  IntroOne(),
                  IntroTwo(),
                  IntroThree(),
                ],
              ),
            ),
            Container(
              alignment: const Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () => controller.jumpToPage(2),
                      child: const Text("skip",style: TextStyle(
                        color: Colors.black,
                      ),)),
                  SmoothPageIndicator(
                      controller: controller, // PageController
                      count: 3,
                      effect: const JumpingDotEffect(), // your preferred effect
                      onDotClicked: (index) {}),
                  onLastPage
                      ? GestureDetector(
                          onTap: () => Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (ctx) => const Direction()),
                              (route) => false),
                          child: const Text("done",style: TextStyle(color: Colors.black),))
                      : GestureDetector(
                          onTap: () => controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn),
                          child: const Text("next",style: TextStyle(color: Colors.black)))
                ],
              ),
            )
          ],
        ));
  }
}
