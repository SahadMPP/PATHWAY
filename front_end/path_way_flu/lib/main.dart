import 'package:flutter/material.dart';
import 'package:path_way_flu/core/theme/dark_theme.dart';
import 'package:path_way_flu/core/theme/light_theme.dart';
import 'package:path_way_flu/features/admin/presentation/bloc/admin_bloc.dart';
import 'package:path_way_flu/features/admin/presentation/pages/complant_list.dart';
import 'package:path_way_flu/features/admin/presentation/widgets/admin_bottom_navi.dart';
import 'package:path_way_flu/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_in_ui.dart';
import 'package:path_way_flu/features/student/presentation/pages/profile_stu.dart';
import 'package:path_way_flu/features/student/presentation/widgets/student_bottom.dart';
import 'package:path_way_flu/features/teacher/presentation/bloc/teacher_bloc.dart';
import 'package:path_way_flu/features/teacher/presentation/widgets/teacher_bottom_navi.dart';

// ignore: constant_identifier_names
const SAVE_KEY_NAME = "userLogined";

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => AdminBloc()),
        BlocProvider(create: (context) => TeacherBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const TeacherBotmNavi(),
      ),
    );
  }
}
