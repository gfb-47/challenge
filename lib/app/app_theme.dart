// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

///It manages the theme of the application
class AppTheme {
  static ThemeData get lightThemeData => ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: Colors.grey[50],
      primaryColor: const Color(0xFFF68A0A),
      fontFamily: 'Nexa',
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 22.0,
        ),
        toolbarTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 22.0,
        ),
      ),
      colorScheme: const ColorScheme(
          primary: Color(0xFFF68A0A),
          primaryContainer: Color(0xFFF68A0A),
          secondary: Color(0xFFF68A0A),
          secondaryContainer: Color(0xFFF68A0A),
          surface: Color(0xFFF68A0A),
          background: Color(0xFFF68A0A),
          error: Color(0xFFF68A0A),
          onPrimary: Color(0xFFF68A0A),
          onSecondary: Color(0xFFF68A0A),
          onSurface: Color(0xFFF68A0A),
          onBackground: Color(0xFFF68A0A),
          onError: Color(0xFFF68A0A),
          brightness: Brightness.light),
      snackBarTheme: const SnackBarThemeData(
        contentTextStyle: TextStyle(fontSize: 20.0),
        backgroundColor: Color(0xFFF68A0A),
        actionTextColor: Color(0xFFF68A0A),
      ),
      primaryIconTheme: const IconThemeData(color: Colors.black),
      iconTheme: const IconThemeData(color: Colors.grey));
}
