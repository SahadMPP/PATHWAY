import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:path_way_flu/core/theme/dark_theme.dart';
import 'package:path_way_flu/core/theme/light_theme.dart';
import 'package:path_way_flu/features/admin/presentation/bloc/admin_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_way_flu/features/auth/presentation/pages/direction/bloc/direction_bloc.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_up/bloc/sign_up_bloc.dart';
import 'package:path_way_flu/features/chat/presentation/pages/chat_messaging.dart';
import 'package:path_way_flu/features/teacher/presentation/bloc/teacher_bloc.dart';
import 'package:path_way_flu/firebase_options.dart';
import 'package:path_way_flu/l10n/l10n.dart';

// ignore: constant_identifier_names
const SAVE_KEY_NAME = "userLogined";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   
   @override
  void initState() {
    super.initState();
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
OneSignal.initialize('8647bcee-a02d-4f36-b16c-8d6595529384');
OneSignal.Notifications.requestPermission(true).then((value) {
      debugPrint('signal value: $value');
    }
 ); 
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
        home: const MassagingScreen() ,
      ),
    );
  }
}
