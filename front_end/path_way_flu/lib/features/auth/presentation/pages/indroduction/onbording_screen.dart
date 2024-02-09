import 'package:flutter/material.dart';
import 'package:path_way_flu/features/auth/presentation/pages/direction_screen_ui.dart';
import 'package:path_way_flu/features/auth/presentation/pages/indroduction/intro_page_1.dart';
import 'package:path_way_flu/features/auth/presentation/pages/indroduction/intro_page_2.dart';
import 'package:path_way_flu/features/auth/presentation/pages/indroduction/intro_page_3.dart';
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
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .85,
              width: double.infinity,
              child: PageView(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                  });
                },
                children: const [
                  IntroPage1(),
                  IntroPage2(),
                  IntroPage3(),
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
                      child: const Text("skip")),
                  SmoothPageIndicator(
                      controller: controller, // PageController
                      count: 3,
                      effect: const JumpingDotEffect(), // your preferred effect
                      onDotClicked: (index) {}),
                  onLastPage
                      ? GestureDetector(
                          onTap: () => Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (ctx) => const DirectionScreen()),
                              (route) => false),
                          child: const Text("done"))
                      : GestureDetector(
                          onTap: () => controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn),
                          child: const Text("next"))
                ],
              ),
            )
          ],
        ));
  }
}
