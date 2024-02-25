import 'package:flutter/material.dart';
import 'package:path_way_flu/app/pages/teacher/pages/chat_screen.dart';
import 'package:path_way_flu/app/pages/teacher/pages/setting.dart';
import 'package:path_way_flu/app/pages/teacher/pages/teacher_home.dart';
import 'package:path_way_flu/app/pages/teacher/pages/teacher_staus_scree.dart';

class TeacherBotmNavi extends StatefulWidget {
  const TeacherBotmNavi({super.key});

  @override
  State<TeacherBotmNavi> createState() => _TeacherBotmNaviState();
}

class _TeacherBotmNaviState extends State<TeacherBotmNavi> {
  int currentIndex = 0;
  List<Widget> body = [
    const TeachHome(),
    const ChatScreenTeacher(),
    const TeacherPrograssScreen(),
    const TeacherSettings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            iconSize: 30,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedIconTheme: IconThemeData(
              color: Colors.grey.shade500,
            ),
            selectedIconTheme: IconThemeData(
              color: Colors.blue.shade300,
              size: 35,
            ),
            items: const [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(
                    Icons.home_sharp,
                  )),
              BottomNavigationBarItem(
                  label: "Chat",
                  icon: Icon(
                    Icons.chat_rounded,
                  )),
              BottomNavigationBarItem(
                  label: "Status",
                  icon: Icon(
                    Icons.stacked_line_chart_rounded,
                  )),
              BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(
                    Icons.settings_rounded,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
