import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    ),
    iconTheme: IconThemeData(
      color: Colors.grey[800],
    ),
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: Colors.grey[200]!,
      secondary: Colors.grey[100]!,
      onSecondary: Colors.grey[500]!,
      // chat----
      onBackground: const Color.fromARGB(255, 0, 140, 255),
      onPrimary: Colors.white,
      // chat------
      onSurface: Colors.black,
    ));
