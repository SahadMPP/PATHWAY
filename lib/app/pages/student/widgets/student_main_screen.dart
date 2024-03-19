import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_way_flu/app/pages/student/pages/chat/ui/chat.dart';
import 'package:path_way_flu/app/pages/student/pages/progress/ui/prograss.dart';
import 'package:path_way_flu/app/pages/student/pages/settings/settings.dart';
import 'package:path_way_flu/app/pages/student/pages/student%20home/bloc/student_home_bloc.dart';
import 'package:path_way_flu/app/pages/student/pages/student%20home/ui/student_home.dart';
import 'package:path_way_flu/app/pages/student/pages/subcription%20model/ui/subcription_models.dart';
import 'package:path_way_flu/app/pages/student/widgets/student_header.dart';

class StudentMainScreen extends StatefulWidget {
  const StudentMainScreen({super.key});

  @override
  State<StudentMainScreen> createState() => _StudentMainScreenState();
}

class _StudentMainScreenState extends State<StudentMainScreen> {
   
   List<Widget> pages = [
    const StudentHome(),
    const SubcriptionScreen(),
    const StudentChat(),
    const Progress(),
    const StudentProfileScreen(),
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const StudentHeader(),
            BlocBuilder<StudentHomeBloc, StudentHomeState>(
              builder: (context, state) {
                return Expanded(child: pages[state.selectedIndex]);
              },
            )
          ],
        ),
      ),
    );
  }
}