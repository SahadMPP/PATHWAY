import 'package:flutter/material.dart';
import 'package:path_way_flu/features/admin/presentation/pages/adding_tutorial_form.dart';
import 'package:path_way_flu/features/admin/presentation/pages/list_of_sub.dart';
import 'package:path_way_flu/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        home: const ListOfSubjects(),
      ),
    );
  }
}
