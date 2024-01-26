import 'package:flutter/material.dart';
import 'package:path_way_flu/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_way_flu/features/auth/presentation/pages/otp_screen.dart';
import 'package:path_way_flu/features/student/presentation/pages/deatiles_page.dart';

// ignore: constant_identifier_names
const SAVE_KEY_NAME = "userLogined";

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const OtpScreen(),
      ),
    );
  }
}
