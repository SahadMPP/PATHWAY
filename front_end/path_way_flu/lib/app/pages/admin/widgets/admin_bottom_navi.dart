import 'package:flutter/material.dart';
import 'package:path_way_flu/app/pages/admin/pages/admin_dashbord.dart';
import 'package:path_way_flu/app/pages/admin/pages/complant_list.dart';
import 'package:path_way_flu/app/pages/admin/pages/list_of_sub.dart';
import 'package:path_way_flu/app/pages/admin/pages/tutors_request_list.dart';


class AdminBotmNavi extends StatefulWidget {
  const AdminBotmNavi({super.key});

  @override
  State<AdminBotmNavi> createState() => _AdminBotmNaviState();
}

class _AdminBotmNaviState extends State<AdminBotmNavi> {
  int currentIndex = 0;
  List<Widget> body = [
    const AdminDashbord(),
    const TeacherRequestList(),
    const ComplantList(),
    const ListOfSubjects(),
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
                    Icons.dashboard,
                  )),
              BottomNavigationBarItem(
                  label: "Add person",
                  icon: Icon(
                    Icons.person_add_alt_rounded,
                  )),
              BottomNavigationBarItem(
                  label: "Complaint",
                  icon: Icon(
                    Icons.list_alt_rounded,
                  )),
              BottomNavigationBarItem(
                  label: "Add tutorial",
                  icon: Icon(
                    Icons.add_box_outlined,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
