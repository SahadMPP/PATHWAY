import 'package:flutter/material.dart';
import 'package:path_way_flu/app/pages/student/pages/chat.dart';
import 'package:path_way_flu/app/pages/student/pages/development_screent.dart';
import 'package:path_way_flu/app/pages/student/pages/profile_stu.dart';
import 'package:path_way_flu/app/pages/student/pages/student_home_ui.dart';
import 'package:path_way_flu/app/pages/student/pages/subcription%20model/ui/subcription_models.dart';


class StudentBotmNavi extends StatefulWidget {
  const StudentBotmNavi({super.key});

  @override
  State<StudentBotmNavi> createState() => _StudentBotmNaviState();
}

class _StudentBotmNaviState extends State<StudentBotmNavi> {
  int currentIndex = 0;
  List<Widget> body = [
    const StuHome(),
    const SubcriptionScreen(),
    const StudentChat(),
    const StudentStatus(),
    const StudentProfileScreen(),
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
                  label: "Inbox",
                  icon: Icon(
                    Icons.all_inbox_rounded,
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
