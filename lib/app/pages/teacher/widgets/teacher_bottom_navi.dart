import 'package:flutter/material.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lessionList/ui/list_of_lession.dart';
import 'package:path_way_flu/app/pages/teacher/pages/setting.dart';
import 'package:path_way_flu/app/pages/teacher/pages/show_warnnig.dart';
import 'package:path_way_flu/app/pages/teacher/pages/teacherChat/ui/chat.dart';
import 'package:path_way_flu/app/pages/teacher/pages/teacher%20home/ui/teacher_home.dart';
import 'package:path_way_flu/app/pages/teacher/pages/teacher_staus_scree.dart';
import 'package:path_way_flu/main.dart';

class TeacherBotmNavi extends StatefulWidget {
  const TeacherBotmNavi({super.key});

  @override
  State<TeacherBotmNavi> createState() => _TeacherBotmNaviState();
}

class _TeacherBotmNaviState extends State<TeacherBotmNavi> {
  int currentIndex = 0;

  List<Widget> body = [
    const TeachHome(),
    const TeacherChat(),
    const TeacherPrograssScreen(),
    const AddTutorial(),
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
                  label: "AddTutorials",
                  icon: Icon(
                    Icons.add,
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

class AddTutorial extends StatelessWidget {
  const AddTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    if (isTeacherVerified) {
      return const ListOfLession();
    } else {
      return const ShowWaring();
    }
  }
}
