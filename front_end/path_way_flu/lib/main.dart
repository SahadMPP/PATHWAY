// ignore_for_file: constant_identifier_names, non_constant_identifier_names, prefer_const_declarations

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:path_way_flu/app/core/theme/dark_theme.dart';
import 'package:path_way_flu/app/core/theme/light_theme.dart';
import 'package:path_way_flu/app/pages/admin/bloc/admin_bloc.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/bloc/direction_bloc.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/sign_up/bloc/sign_up_bloc.dart';
import 'package:path_way_flu/app/pages/auth/presentation/pages/splash_screen_ui.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/bloc/see_all_bloc.dart';
import 'package:path_way_flu/app/pages/student/pages/subcription%20model/bloc/subcription_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/bloc/teacher_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lessionList/bloc/lession_list_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lesson%20Form/bloc/lesson_form_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/lessonUpdateForm/bloc/lesson_form_update_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/teacherChat/bloc/teacher_chat_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorial%20form/bloc/tutorial_adding_form_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/tutorialUpdateForm/bloc/tutorial_update_bloc.dart';
import 'package:path_way_flu/firebase_options.dart';
import 'package:path_way_flu/app/core/l10n/l10n.dart';

const SAVE_KEY_LOGGIN = "userLogined";
const SAVE_KEY_ID = "userId";
const SAVE_KEY_NAME = "username";

String? userName;
String? userId;
bool isTeacherVerified = true;
String language = 'en';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocal(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findRootAncestorStateOfType<_MyAppState>();
    state?.setLocal(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  setLocal(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void initState() {
    super.initState();
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    OneSignal.initialize('8647bcee-a02d-4f36-b16c-8d6595529384');
    OneSignal.Notifications.requestPermission(true).then((value) {
      debugPrint('signal value: $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DirectionBloc()),
        BlocProvider(create: (context) => SignUpBloc()),
        BlocProvider(create: (context) => SignInBloc()),
        BlocProvider(create: (context) => AdminBloc()),
        BlocProvider(create: (context) => TeacherBloc()),
        BlocProvider(create: (context) => SubcriptionBloc()),
        BlocProvider(create: (context) => LessonFormBloc()),
        BlocProvider(create: (context) => LessionListBloc()),
        BlocProvider(create: (context) => TutorialAddingFormBloc()),
        BlocProvider(create: (context) => LessonFormUpdateBloc()),
        BlocProvider(create: (context) => TutorialUpdateBloc()),
        BlocProvider(create: (context) => TeacherChatBloc()),
        BlocProvider(create: (context) => SeeAllBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        supportedLocales: L10n.all,
        locale: _locale,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const SpleshScreen(),
      ),
    );
  }
}
