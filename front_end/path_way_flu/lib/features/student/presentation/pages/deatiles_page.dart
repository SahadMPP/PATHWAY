import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:path_way_flu/core/constants/model.dart';

class StudentDeatileScreen extends StatefulWidget {
  const StudentDeatileScreen({super.key});

  @override
  State<StudentDeatileScreen> createState() => _StudentDeatileScreenState();
}

class _StudentDeatileScreenState extends State<StudentDeatileScreen> {
  List<bool> selectedTag = [
    true,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildHeadlinewithBack(
                fun: () {}, icon: Icons.arrow_back, headline: "Math"),
            const SizedBox(height: 30),
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/images.jpg"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(height: 15),
            Text("How to do multipucation",
                style: GoogleFonts.quicksand(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            const SizedBox(height: 5),

            Text("Created by Kumar mohan",
                style: GoogleFonts.quicksand(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                )),
            const SizedBox(height: 10),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 170),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.star_border, color: Colors.grey),
                  Text(
                    "4.8",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.timer, color: Colors.grey),
                  Text("7.2 Hours", style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            const SizedBox(height: 15),
            // Container(
            //   decoration: const BoxDecoration(
            //       color: Color.fromARGB(255, 231, 231, 231),
            //       borderRadius: BorderRadius.all(Radius.circular(15))),
            //   height: 70,
            //   width: double.infinity,
            //   child: ToggleButtons(
            //     borderRadius: BorderRadius.circular(8),
            //     color: Colors.red,
            //     direction: Axis.horizontal,
            //     fillColor: Colors.blueAccent,
            //     constraints: const BoxConstraints(maxWidth: 100),
            //     onPressed: (int index) {
            //       setState(() {
            //         selectedTag[index] = !selectedTag[index];
            //       });
            //     },
            //     isSelected: selectedTag,
            //     children: const [
            //       Text('Playlist(22)'),
            //       Text('Description'),
            //     ],
            //   ),
            // )
            Container()
          ],
        ),
      )),
    );
  }
}

class CustomTabView extends StatefulWidget {
  final Function(int) changeTap;
  final int index;
  CustomTabView({super.key, required this.changeTap, required this.index});

  @override
  State<CustomTabView> createState() => _CustomTabViewState();

  final List<String> tags = ["Playlist(22)", "Description"];

  Widget buildTags(int index) {
    return GestureDetector(
      onTap: () {},
    );
  }
}

class _CustomTabViewState extends State<CustomTabView> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BuildHeadlinewithBack extends StatelessWidget {
  final VoidCallback fun;
  final IconData icon;
  final String headline;
  const BuildHeadlinewithBack({
    super.key,
    required this.fun,
    required this.icon,
    required this.headline,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            headline,
            style: GoogleFonts.quicksand(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(blurRadius: .5),
            ],
            color: const Color.fromARGB(255, 248, 248, 248),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
              onPressed: fun,
              icon: Icon(
                icon,
                size: 20,
              )),
        ),
      ],
    );
  }
}
