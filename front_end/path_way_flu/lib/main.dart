import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/core/theme/dark_theme.dart';
import 'package:path_way_flu/core/theme/light_theme.dart';
import 'package:path_way_flu/features/admin/presentation/bloc/admin_bloc.dart';
import 'package:path_way_flu/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_way_flu/features/student/presentation/widgets/student_bottom.dart';
import 'package:path_way_flu/features/teacher/presentation/bloc/teacher_bloc.dart';
import 'package:path_way_flu/l10n/l10n.dart';

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
        supportedLocales: L10n.all,
        locale: const Locale('en'),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const StudentBotmNavi(),
      ),
    );
  }
}
